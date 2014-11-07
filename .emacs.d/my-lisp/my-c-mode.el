;; Stefano's my-c-mode
;;
;; Provides settings related to c languages

(require 'auto-complete-clang)

;; Autocomplete-clang
(defun ac-cc-mode-setup ()
  (setq ac-sources '(ac-source-clang))
)
(add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
(add-hook 'c-mode-hook 'c-turn-on-eldoc-mode)
(add-hook 'c++-mode-hook 'c-turn-on-eldoc-mode)
(provide 'my-c-mode)
