;; Use the OS X Emoji font for Emoticons
(when (fboundp 'set-fontset-font)
  (set-fontset-font "fontset-default"
                    '(#x1F600 . #x1F64F)
                    (font-spec :name "Apple Color Emoji") nil 'prepend))

;; change alt to super
(setq mac-option-modifier 'super)

;; change command to meta
(setq mac-command-modifier 'meta)

(use-package exec-path-from-shell
  :ensure t
  :config
  (when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize)))

(provide 'core-osx)
