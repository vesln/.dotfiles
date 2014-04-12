#!/usr/bin/env python
#==============================================================================
# Copyright 2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Amazon Software License (the "License"). You may not use
# this file except in compliance with the License. A copy of the License is
# located at
#
#       http://aws.amazon.com/asl/
#
# or in the "license" file accompanying this file. This file is distributed on
# an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, express or
# implied. See the License for the specific language governing permissions
# and limitations under the License.
#==============================================================================
import json
import codecs    
import logging
from logging import config as _config 
import os
import sys
from pprint import pprint

from scli import command, cli_parse, config_file, prompt
from scli.constants import EbLogFile, EbLocalDir, OutputLevel, ParameterName, \
    ParameterSource, ServiceDefault 
from scli.parameter import DefaultParameterValue, ParameterPool, ParameterValidator
from lib.utility import misc, shell_utils

log = logging.getLogger(u'cli')


def _getLogFile(filename):    
    return os.getcwdu() + os.path.sep + filename

def _set_log_filename(config_dict, filename):
    #Keyerror
    config_dict[u'handlers'][u'default'][u'filename'] = filename 

def _set_log_handlers(config_dict, formatter):
    config_dict[u'root'][u'handlers'] = [formatter]
    config_dict[u'loggers'][u'aws'][u'handlers'] = [formatter]
    config_dict[u'loggers'][u'eb'][u'handlers'] = [formatter]
    config_dict[u'loggers'][u'op'][u'handlers'] = [formatter]
    config_dict[u'loggers'][u'cli'][u'handlers'] = [formatter]

def _disable_logging(config_dict = None):
    logging.disable(logging.CRITICAL)
    
    if config_dict is not None:
        _set_log_handlers(config_dict, u'null')
        del config_dict[u'handlers'][u'default']
        

def configureLogging(level = None, quiet = False, 
                     filename = EbLogFile.Name, 
                     spec_dir = os.getcwdu() + os.path.sep + EbLocalDir.Path):
    
    
    if not spec_dir:
        output_file=_getLogFile(filename)
    else:
        shell_utils.create_directory(spec_dir)
        output_file = spec_dir + os.path.sep + filename
        
    ori_path = shell_utils.ori_path()
    log_config_location = os.path.join(ori_path, u'logconfig.json')
    
    try:
        with codecs.open(log_config_location, 'r', encoding='utf-8') as input_file:        
            config_dict = json.loads(input_file.read())

        _set_log_filename(config_dict, output_file)
        
        if level is None and config_dict[u'root'][u'level'].upper() == u'NONE':
            # completely disable log
            config_dict[u'root'][u'level'] = u'NOTSET'
            _disable_logging(config_dict)
        else:
            if level is not None:
                config_dict[u'root'][u'level'] = level        
            _set_log_handlers(config_dict, u'default')
            
    except (IOError, ValueError, KeyError) as ex:
        #JSON logging config file parsing error
        if not quiet:
            print(u'Encountered error when reading logging configuration file from "{0}": {1}.'.\
                  format(log_config_location, ex))
        _disable_logging()
        return    

    try: 
        _config.dictConfig(config_dict)
                            
    except IOError:
        if not quiet:
            print >> sys.stderr, u'Could not open {0} for logging.  Using stderr instead.'.\
                format(output_file)
        _set_log_handlers(config_dict, u'to_stderr')
        _config.dictConfig(config_dict)

    config_file.set_access_permission(output_file, True)    


def _exit(code):
    log.info(u'EB CLI exit')
    sys.exit(code)


def _print_op_results(results):
    for index, result in enumerate(results):
        prompt.info(u'------------ Operation {0}: {1}----------------'.format\
                    (index + 1, result.operation.__class__.__name__))
        pprint(result.result, depth = 3);
        print result.message    


def main(cmdline = None):
    
    # Initialization
    configureLogging(quiet=False)
    log.info(u'EB CLI start')

    parameter_pool = ParameterPool()    # pool of all parameters 
    validator = ParameterValidator()
    DefaultParameterValue.fill_default(parameter_pool)    
    log.debug(u'Finished initialization')
    
    try:
        # Parse command line arguments
        cli_parse.parse(parameter_pool, cmdline)
        log.debug(u'Finished parsing command line arguments.')
        # TODO: set quiet level here.
        if parameter_pool.get_value(ParameterName.Verbose) == ServiceDefault.ENABLED:
            prompt.set_level(OutputLevel.Info)
        else:
            prompt.set_level(OutputLevel.ResultOnly)
                    
        validator.validate(parameter_pool, ParameterSource.CliArgument)
        # Compile operation queue
        queue = command.compile_operation_queue(parameter_pool.command)

    except SystemExit as ex:
        _exit(0)
        
    except BaseException as ex:
        print (misc.to_unicode(ex))
        log.exception(ex)
        _exit(1)
    
    # Execute queue
    results = []
    try:
        queue.run(parameter_pool, results)
        log.debug(u'Finished executing operation queue')
    except BaseException as ex:
        print (misc.to_unicode(ex))
        log.exception(ex)
        _exit(1)

    _exit(0)

