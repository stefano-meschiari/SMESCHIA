;; Stefano's my-appearance.el
;;
;; Appearance-related settings

;; Enables scrollbar, disable toolbar
(tool-bar-mode -1)

;; Show path of file in titlebar
(setq-default frame-title-format "%b (%f)")

;; Current line highlighting
(require 'hl-line)
(global-hl-line-mode)

(setq ns-pop-up-frames nil)

(sml/setup)
(column-number-mode)

;; I want "q" to actually *close* the buffer. I almost
;; never want to keep those buffers around!
(defadvice quit-window (before quit-window-always-kill)
  "When running `quit-window', always kill the buffer."
  (ad-set-arg 0 t))
(ad-activate 'quit-window)

(provide 'my-appearance)
