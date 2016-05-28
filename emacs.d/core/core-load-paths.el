(defun add-to-load-path (dir) (add-to-list 'load-path dir))

;; setup the load paths
(add-to-load-path (concat user-emacs-directory "vendor/"))
(add-to-load-path (concat user-emacs-directory "core/"))
