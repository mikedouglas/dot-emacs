;; make text-mode the default
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'longlines-mode)
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

;; markdown
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing markdown files." t)
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))

;; textmate
(require 'textmate)
(textmate-mode t)

;; coffee-script
(autoload 'coffee-mode "coffee-mode"
  "Major mode for editing coffee-script files." t)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;; activate smex
(require 'smex)
(smex-initialize)

;; unipoint mode
(require 'unipoint)
(add-hook 'text-mode-hook 'unipoint-mode)
(add-hook 'org-mode-hook 'unipoint-mode)
