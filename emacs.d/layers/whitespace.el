(use-package whitespace
  :init
  (dolist (hook '(prog-mode-hook text-mode-hook))
    (add-hook hook #'whitespace-mode))
  (add-hook 'before-save-hook #'whitespace-cleanup)
  :config
  (setq whitespace-line-column 120)
  (setq whitespace-global-modes '(not org-mode))
  (setq whitespace-style '(face tabs empty trailing lines-tail)))
