(setq gc-cons-threshold 100000000)

(defvar layers-dir (expand-file-name "layers" user-emacs-directory))

(load-file (concat user-emacs-directory "core/core-load-paths.el"))
(require 'core-init)
(mapc 'load (directory-files layers-dir 't "^[^#].*el$"))
