(use-package web-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-attr-indent-offset 2)
  (setq web-mode-enable-auto-pairing nil)
  (setq web-mode-enable-auto-quoting nil)
  (add-to-list 'web-mode-indentation-params '("lineup-ternary" . nil))
  (setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'"))))
