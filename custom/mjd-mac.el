(add-to-list 'ido-ignore-files "\\.DS_Store")

(set-default-font "Consolas-12")

;; disable auto-save files (#foo#)
(setq auto-save-default nil)

;; disable backup files (foo~)
(setq backup-inhibited t)

;; set path properly
(setq exec-path (append exec-path '("/opt/local/bin")))

;; setup ispell
(setq ispell-program-name "/opt/local/bin/aspell")
(setenv "ASPELL_CONF" nil)

(provide 'mjd-mac)
