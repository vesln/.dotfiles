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

(global-set-key (kbd "s-/") #'hippie-expand)
(global-set-key (kbd "s-o") #'other-window)

;; left kill
(global-set-key (kbd "s-<backspace>") '(lambda () (interactive) (kill-line 0)))

(global-set-key (kbd "C-w") 'spacemacs/backward-kill-word-or-region)
(global-set-key (kbd "C-x c") 'delete-window)

(global-set-key "\C-x2" (lambda () (interactive)(split-window-vertically) (other-window 1)))
(global-set-key "\C-x3" (lambda () (interactive)(split-window-horizontally) (other-window 1)))

(defun mark-from-point-to-end-of-line ()
  "Marks everything from point to end of line"
  (interactive)
  (set-mark-command nil)
  (end-of-line))

(defun mark-from-point-to-beginning-of-line ()
  "Marks everything from point to beginning of line"
  (interactive)
  (set-mark-command nil)
  (beginning-of-line))

(global-set-key (kbd "s-p") (lambda () (interactive)(previous-line 20)))
(global-set-key (kbd "s-n") (lambda () (interactive)(next-line 20)))
(global-set-key (kbd "s-w") 'kill-ring-save)
(global-set-key (kbd "s-<up>") 'beginning-of-buffer)
(global-set-key (kbd "s-<down>") 'end-of-buffer)
(global-set-key (kbd "s-U") 'revert-buffer)
(global-set-key (kbd "s-Z") 'undo-tree-redo)
(global-set-key (kbd "s-z") 'undo-tree-undo)
(global-set-key (kbd "s-0") 'delete-window)
(global-set-key (kbd "s-S-<right>") 'mark-from-point-to-end-of-line)
(global-set-key (kbd "s-S-<left>") 'mark-from-point-to-beginning-of-line)
(global-set-key (kbd "s-<left>") 'beginning-of-line)
(global-set-key (kbd "s-<right>") 'end-of-line)

(defun duplicate-current-line-or-region (arg)
  "Duplicates the currentp line or region ARG times.
If there's no region, the current line will be duplicated. However, if
there's a region, all lines that region covers will be duplicated."
  (interactive "p")
  (let (beg end (origin (point)))
    (if (and mark-active (> (point) (mark)))
        (exchange-point-and-mark))
    (setq beg (line-beginning-position))
    (if mark-active
        (exchange-point-and-mark))
    (setq end (line-end-position))
    (let ((region (buffer-substring-no-properties beg end)))
      (dotimes (i arg)
        (goto-char end)
        (newline)
        (insert region)
        (setq end (point)))
      (goto-char (+ origin (* (length region) arg) arg)))))

(global-set-key (kbd "C-c d") 'duplicate-current-line-or-region)
(global-set-key (kbd "C-c C-d") 'duplicate-current-line-or-region)

(provide 'core-key-bindings)
