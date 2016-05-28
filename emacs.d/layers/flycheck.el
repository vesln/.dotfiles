(use-package flycheck
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode)
  (setq flycheck-ruby-rubocop-executable "bundle exec rubocop"))
