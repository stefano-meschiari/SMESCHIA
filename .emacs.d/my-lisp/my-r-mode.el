;; Stefano's my-r-mode
;;
;; Loads ESS; use M-x R to start R shell

(require 'ess-smart-underscore)
;; Slightly modified from http://kieranhealy.org/blog/archives/2009/10/12/make-shift-enter-do-a-lot-in-ess/
(setq ess-ask-for-ess-directory nil)
(setq ess-local-process-name "R")
(setq ansi-color-for-comint-mode 'filter)
(setq comint-scroll-to-bottom-on-input t)
(setq comint-scroll-to-bottom-on-output t)
(setq comint-move-point-for-output t)

(defun start-R ()
  (interactive)
  (if (not (member "*R*" (mapcar (function buffer-name) (buffer-list))))
      (progn
        (delete-other-windows)
        (setq w1 (selected-window))
        (setq w1name (buffer-name))
        (setq w2 (split-window w1 nil t))
        (R)
        (set-window-buffer w2 "*R*")
        (set-window-buffer w1 w1name)
        (window-resize w1 10 t)
        )))
(defun my-ess-eval ()
  (interactive)
  (my-ess-start-R)
  (if (and transient-mark-mode mark-active)
      (call-interactively 'ess-eval-region)
    (call-interactively 'ess-eval-line-and-step)))

(add-hook 'ess-mode-hook
          '(lambda()
             (local-set-key [(shift return)] 'my-ess-eval)))
(add-hook 'inferior-ess-mode-hook
          '(lambda()
             (define-key inferior-ess-mode-map [up] (lambda() (interactive) (goto-char (point-max)) (comint-previous-input 1)))
             (define-key inferior-ess-mode-map [down] (lambda() (interactive) (goto-char (point-max)) (comint-next-input 1)))))
          




(add-hook 'Rnw-mode-hook 
          '(lambda() 
             (local-set-key [(shift return)] 'my-ess-eval))) 
(require 'ess-site)


(provide 'my-r-mode)

