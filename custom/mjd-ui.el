;; disable startup screen and *scratch* msgs
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; disable training wheels
(defalias 'yes-or-no-p 'y-or-n-p)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode 0)
  (scroll-bar-mode -1))

;; display the line/column in the modeline
(setq line-number-mode t)
(setq column-number-mode t)
(global-hl-line-mode t)

;; setup color-theme
(require 'color-theme)
(load-file "~/.emacs.d/custom/themes/color-theme-chocolate-rain.el")
(color-theme-initialize)
(color-theme-chocolate-rain)

;; set frame size
(add-to-list 'default-frame-alist '(height . 65))

(provide 'mjd-ui)
