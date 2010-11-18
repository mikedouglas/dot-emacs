;;; Mike Douglas's emacs setup

;; enable elpa
;(when
;    (load
;     (expand-file-name "~/.emacs.d/elpa/package.el"))
;  (package-initialize))

;; recognize structure of ~/.emacs.d
(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/utilities")
(add-to-list 'load-path "~/.emacs.d/vendor")

(load-file "~/.emacs.d/load-directory.el")

(load-directory "~/.emacs.d/utilities")

(vendor 'color-theme)
(vendor 'color-theme-extras)
(vendor 'textmate)
(vendor 'coffee-mode)
(vendor 'markdown-mode)
(vendor 'paredit) ;; beta
(vendor 'smex)
(vendor 'unipoint)

(load-directory "~/.emacs.d/custom")
