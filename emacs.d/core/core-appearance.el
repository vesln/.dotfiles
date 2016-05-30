(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; disable the blinking cursor
(blink-cursor-mode -1)
(setq ring-bell-function 'ignore)

(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))

;; start emacs maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; highlight the current line
(global-hl-line-mode +1)

;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)


(require 'ansi-color)
(defun colorize-compilation-buffer ()
  (toggle-read-only)
  (ansi-color-apply-on-region compilation-filter-start (point))
  (toggle-read-only))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

(provide 'core-appearance)
