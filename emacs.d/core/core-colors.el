(unless (package-installed-p 'jbeans-theme)
  (package-install 'jbeans-theme))

;; theme
(load-theme 'jbeans t)

;; font
(set-frame-font "Operator Mono 16")

(provide 'core-colors)
