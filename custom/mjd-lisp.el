;; lisp is good
(show-paren-mode t)

;; eldoc
(dolist (hook '(emacs-lisp-mode-hook
                lisp-interaction-mode-hook))
  (add-hook hook 'turn-on-eldoc-mode))

;; paredit
(autoload 'paredit-mode "paredit-beta"
  "Minor mode for pseudo-structurally editing lisp code." t)
(dolist (hook '(emacs-lisp-mode-hook
                lisp-interaction-mode-hook
                clojure-mode-hook
                slime-repl-mode-hook))
  (add-hook hook 'paredit-mode))

(provide 'mjd-lisp)
