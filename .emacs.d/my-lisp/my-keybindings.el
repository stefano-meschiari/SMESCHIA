;; Stefano's my-keybindings
;;
;; Declare some useful keybindings

;; Add some custom key-binding for Mac OS X
(global-set-key (kbd "s-{") 'previous-buffer)
(global-set-key (kbd "s-}") 'next-buffer)
(global-set-key (kbd "s-[") 'previous-buffer)
(global-set-key (kbd "s-]") 'next-buffer)
(global-set-key (kbd "s-r") 'replace-string)
(global-set-key (kbd "s-p") 'semantic-ia-show-summary)
(global-set-key (kbd "s-`") 'smex)

(defun ido-imenu ()
  "Update the imenu index and then use ido to select a symbol to navigate to.
Symbols matching the text at point are put first in the completion list."
  (interactive)
  (imenu--make-index-alist)
  (let ((name-and-pos '())
        (symbol-names '()))
    (flet ((addsymbols
            (symbol-list)
            (when (listp symbol-list)
              (dolist (symbol symbol-list)
                (let ((name nil) (position nil))
                  (cond
                   ((and (listp symbol) (imenu--subalist-p symbol))
                    (addsymbols symbol))

                   ((listp symbol)
                    (setq name (car symbol))
                    (setq position (cdr symbol)))

                   ((stringp symbol)
                    (setq name symbol)
                    (setq position
                          (get-text-property 1 'org-imenu-marker symbol))))

                  (unless (or (null position) (null name))
                    (add-to-list 'symbol-names name)
                    (add-to-list 'name-and-pos (cons name position))))))))
      (addsymbols imenu--index-alist))
    ;; If there are matching symbols at point, put them at the beginning
    ;; of `symbol-names'.
    (let ((symbol-at-point (thing-at-point 'symbol)))
      (when symbol-at-point
        (let* ((regexp (concat (regexp-quote symbol-at-point) "$"))
               (matching-symbols
                (delq nil (mapcar
                           (lambda (symbol)
                             (if (string-match regexp symbol) symbol))
                           symbol-names))))
          (when matching-symbols
            (sort matching-symbols (lambda (a b) (> (length a) (length b))))
            (mapc
             (lambda (symbol)
               (setq symbol-names (cons symbol (delete symbol symbol-names))))
             matching-symbols)))))
    (let* ((selected-symbol (ido-completing-read "Symbol? " symbol-names))
           (position (cdr (assoc selected-symbol name-and-pos))))
      (push-mark)
      (if (overlayp position)
          (goto-char (overlay-start position))
        (goto-char position)))))



(global-set-key (kbd "s-.") 'ido-imenu)
(global-set-key (kbd "s->") 'imenu-anywhere)
(global-set-key (kbd "s-\\") 'magit-status)
(global-set-key (kbd "s-+") 'text-scale-increase)
(global-set-key (kbd "s-_") 'text-scale-decrease)
(global-set-key (kbd "s-z") 'undo-tree-undo)
(global-set-key (kbd "s-Z") 'undo-tree-redo)
(global-set-key (kbd "s-F") 'anything-occur)
(global-set-key (kbd "s-X") 'smex)
(global-set-key (kbd "<s-left>") 'beginning-of-visual-line)
(global-set-key (kbd "<s-right>") 'end-of-visual-line)
(global-set-key (kbd "<s-up>") 'beginning-of-buffer)
(global-set-key (kbd "<s-down>") 'end-of-buffer)
(global-set-key (kbd "s-w") 'kill-default-buffer)
(global-set-key (kbd "s-W") 'delete-frame)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Backwards word delete instead of kill
(defun delete-word (arg)
  "Delete characters forward until encountering the end of a word.
With argument, do this that many times."
  (interactive "p")
  (delete-region (point) (progn (forward-word arg) (point))))

(defun backward-delete-word (arg)
  "Delete characters backward until encountering the end of a word.
With argument, do this that many times."
  (interactive "p")
  (delete-word (- arg)))

(global-set-key (read-kbd-macro "<M-DEL>") 'backward-delete-word)
(global-set-key (read-kbd-macro "<C-DEL>") 'backward-delete-word)


;; Don't open dialogs on Mac OS X
(global-set-key (kbd "s-o") 'ido-find-file)
(global-set-key (kbd "s-s") 'save-buffer)
(global-set-key (kbd "s-S") 'ido-write-file)

;; Create new temp file
(global-set-key (kbd "C-c C-n") 'find-temp-file)
(global-set-key (kbd "s-n") 'find-temp-file)

;; ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Shell
(setq multi-term-program "/usr/bin/bash")


;; Chords
(key-chord-define-global "[]" 'ace-jump-mode)

(provide 'my-keybindings)
