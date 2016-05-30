(use-package multi-term
  :ensure t
  :config
  (setq term-bind-key-alist (delq (assoc "C-r" term-bind-key-alist) term-bind-key-alist)))
