(defun spacemacs/backward-kill-word-or-region (&optional arg)
  "Calls `kill-region' when a region is active and
`backward-kill-word' otherwise. ARG is passed to
`backward-kill-word' if no region is active."
  (interactive "p")
  (if (region-active-p)
      ;; call interactively so kill-region handles rectangular selection
      ;; correctly (see https://github.com/syl20bnr/spacemacs/issues/3278)
      (call-interactively #'kill-region)
    (backward-kill-word arg)))

(global-set-key (kbd "M-/") #'hippie-expand)
(global-set-key (kbd "M-o") #'other-window)

;; left kil
(global-set-key "\M-k" '(lambda () (interactive) (kill-line 0)))

(global-set-key (kbd "C-w") 'spacemacs/backward-kill-word-or-region)
(global-set-key (kbd "C-x c") 'delete-window)

(global-set-key "\C-x2" (lambda () (interactive)(split-window-vertically) (other-window 1)))
(global-set-key "\C-x3" (lambda () (interactive)(split-window-horizontally) (other-window 1)))

(provide 'core-key-bindings)
