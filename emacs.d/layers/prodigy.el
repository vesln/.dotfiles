(use-package prodigy
  :ensure t)

(prodigy-define-service
  :name "Product Hunt Rails server"
  :command "bundle"
  :args '("exec" "rails" "server")
  :cwd "~/Work/producthunt/app"
  :tags '(rails))