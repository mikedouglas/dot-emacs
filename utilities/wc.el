(defun count-words (start end)
  "Print number of words in the region."
  (interactive "r")
  (save-excursion
    (save-restriction
      (narrow-to-region start end)
      (goto-char (point-min))
      (count-matches "\\sw+"))))

(defun wc-buffer ()
  "Display the number of words in a buffer."
  (interactive)
  (message (concat "The current buffer contains "
                   (number-to-string
                    (count-words (point-min) (point-max)))
                   " words.")))

(defun wc-region (start end)
  "Display the number of words in a region."
  (interactive "r")
  (message (concat "The current region contains "
                   (number-to-string
                    (count-words start end))
                   " words.")))

(defalias 'wc 'wc-buffer)
