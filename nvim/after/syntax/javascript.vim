syntax keyword jsRequire require containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString,javascriptTemplate,javascriptTemplateSubstitution
syntax keyword jsDOM window containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString,javascriptTemplate,javascriptTemplateSubstitution
syntax keyword jsGeneric setTimeout containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString,javascriptTemplate,javascriptTemplateSubstitution
syntax keyword jsRedux dispatch getState containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString,javascriptTemplate,javascriptTemplateSubstitution
syntax keyword jsReact props state containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString,javascriptTemplate,javascriptTemplateSubstitution

hi link jsRequire Include
hi link jsDOM     Constant
hi link jsGeneric Constant
hi link jsRedux   Constant
