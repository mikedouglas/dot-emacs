;; tabs are a terrible idea - doesn't really belong here
(setq-default indent-tabs-mode nil)
(setq require-final-newline t)

;; interactively do things
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)
(add-to-list 'ido-ignore-files "\\.DS_Store")

;; automatically clean up old buffers
(require 'midnight)

;; pick up changes to files on disk automatically (ie, after git pull)
(global-auto-revert-mode 1)
