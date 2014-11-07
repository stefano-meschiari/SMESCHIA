;; Stefano's my-packages.el
;;
;; Loads packages that are not related to specific language modes


;; Graphene (saner emacs defaults)
(require 'graphene)


(require 'imenu)
(add-hook 'prog-mode-hook 'imenu-add-menubar-index)
(setq imenu-auto-rescan t)

(require 'org)
(require 'quickrun)

;; Autocomplete -- using company-mode for now
(require 'auto-complete)
(require 'auto-complete-config)
(setq ac-auto-start nil)
(setq ac-auto-show-menu nil)
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)

;; Prettify symbols for JavaScript
(global-prettify-symbols-mode 1)

;; Mode line bell
 (defun my-terminal-visible-bell ()
   "A friendlier visual bell effect."
   (invert-face 'mode-line)
   (run-with-timer 0.1 nil 'invert-face 'mode-line))
 
 (setq visible-bell nil
       ring-bell-function 'my-terminal-visible-bell)

;;(add-hook 'after-init-hook 'global-company-mode)

;; AucTeX
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(setq TeX-PDF-mode t)


;; Use Skim as viewer, enable source <-> PDF sync
;; make latexmk available via C-c C-c
;; Note: SyncTeX is setup via ~/.latexmkrc (see below)
(add-hook 'LaTeX-mode-hook (lambda ()
  (push
    '("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t
      :help "Run latexmk on file")
    TeX-command-list)))
(add-hook 'LaTeX-mode-hook (lambda ()
  (push
    '("make" "make" TeX-run-TeX nil t
      :help "Runs make")
    TeX-command-list)))
(add-hook 'TeX-mode-hook '(lambda () (setq TeX-command-default "latexmk")))

;; use Skim as default pdf viewer
;; Skim's displayline is used for forward search (from .tex to .pdf)
;; option -b highlights the current line; option -g opens Skim in the background  
(setq TeX-view-program-selection '((output-pdf "PDF Viewer")))
(setq TeX-view-program-list
     '(("PDF Viewer" "/Applications/Skim.app/Contents/SharedSupport/displayline -b -g %n %o %b")))

;; Use rainbow-delimiters and highlight-parentheses
(global-rainbow-delimiters-mode)
(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)


;; Activate tramp; C-x C-f /ssh:user@server etc.
(require 'tramp)

;; Ack
;(require 'ack-and-a-half)

;(defalias 'ack 'ack-and-a-half)
;(defalias 'ack-same 'ack-and-a-half-same)
;(defalias 'ack-find-file 'ack-and-a-half-find-file)
;(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)

;; Loads magit; use M-x magit-status
(require 'magit)

;; Smartscan, jump between instances of symbol at cursor
;; use M-n M-p to jump forward/backward
(require 'smartscan)
(global-smartscan-mode 1)

;; Pop up dash at point
(require 'dash-at-point)
(global-set-key "\C-cd" 'dash-at-point)

;; Undo/redo (C-/, M-/, C-x u, C-u, C-S-u)
(require 'undo-tree)
(global-undo-tree-mode)

;; Anzu: enhances isearch
(require 'anzu)
(global-anzu-mode)

;; Recentf; use with C-x f
(require 'recentf)
(recentf-mode 1)
(global-set-key "\C-xf" 'anything-recentf)

;; Enables shift-arrow moving between windows
(windmove-default-keybindings)

;; Yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;; Projectile; use together with project-persist (C-c P f)
(require 'projectile)
(projectile-global-mode)

;; Breadcrumbs
;(require 'breadcrumb)
;(global-set-key (kbd "s-1") 'bc-set)            ;; Shift-SPACE for set bookmark
;(global-set-key [(s shift up)]              'bc-previous)       ;; M-j for jump to previous
;(global-set-key [(s shift down)]        'bc-next)           ;; Shift-M-j for jump to next

;; Set up ediff not to open a new frame
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;; Browse-kill-ring
(require 'browse-kill-ring)

;; Show git signal on the fringe
;;(require 'git-gutter-fringe)
;(global-git-gutter+-mode)
;;(global-git-gutter-mode +1)
;;(global-git-gutter-mode)

;; Global linum
(require 'linum-off)
(global-linum-mode)



;; Global paredit
(show-paren-mode 1)

;; Eyebrowse
(eyebrowse-mode t)
(eyebrowse-setup-opinionated-keys)

;; Ace-jump
(require 'ace-jump-mode)

 ;; Key-chord
(require 'key-chord)
(key-chord-mode 1)

(add-hook 'custom-mode-hook (lambda () (linum-mode -1)))


(provide 'my-packages)
