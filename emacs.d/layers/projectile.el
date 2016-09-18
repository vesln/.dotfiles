(use-package helm-projectile
  :ensure t)

(use-package projectile
  :ensure t
  :bind (("M-p" . projectile-command-map))
  :config
  (projectile-global-mode +1))

(setq projectile-completion-system 'helm)
(setq projectile-cache-file (expand-file-name "projectile.cache" user-emacs-directory))

(setq projectile-switch-project-action 'helm-projectile)
(setq projectile-enable-caching t)
