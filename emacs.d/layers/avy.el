(use-package avy
  :ensure t
  :config
  (setq avy-background t))

;; override flyspell's mappings for now
(eval-after-load "flyspell"
  '(define-key flyspell-mode-map (kbd "C-,") 'avy-goto-word-or-subword-1))

(eval-after-load "flyspell"
  '(define-key flyspell-mode-map (kbd "C-.") 'avy-goto-char))
