;; Stefano's my-python-mode.el
;;
;; Use elpy, https://github.com/jorgenschaefer/elpy/wiki

(require 'elpy)
;; Enables python mode
(elpy-enable)
;; Uses ipython as shell. C-c C-z to switch to shell; C-c C-c to run current file
(elpy-use-ipython)


;; Enable EIN; M-x notebook-list
(require 'ein)
(setq ein:use-auto-complete 't)

(provide 'my-python-mode)

