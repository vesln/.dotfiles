(use-package avy
  :ensure t
  :bind (("s-l" . avy-goto-line)
         ("s-g" . avy-goto-char-in-line)
         ("s-." . avy-goto-word-or-subword-1))
  :config
  (setq avy-background t))
