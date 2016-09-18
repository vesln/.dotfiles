(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

(setq package-user-dir (expand-file-name "elpa" user-emacs-directory))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(setq use-package-always-ensure t)

(provide 'core-package)
