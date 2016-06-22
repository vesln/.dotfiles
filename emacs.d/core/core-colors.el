(unless (package-installed-p 'emacs-color-theme-solarized)
  (package-install 'jbeans-theme))

;; theme
(load-theme 'solarized t)
(set-frame-parameter nil 'background-mode 'light)

;; font
(set-frame-font "Operator Mono 16")

(provide 'core-colors)
