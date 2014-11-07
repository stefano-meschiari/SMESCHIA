;; Stefano's init.el
;;
;; Some settings from https://github.com/magnars/.emacs.d/

(require 'package)
(add-to-list 'package-archives
            '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

;; Set path to dependencies
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path "~/.emacs.d/my-lisp")
(add-to-list 'load-path site-lisp-dir)
(add-to-list 'load-path "~/.emacs.d/breadcrumb")

;; Start server to use Emacs GUI from command line
(server-start)

;; Define function to give focus to app when called from command line
(defun ns-raise-emacs ()  
  (ns-do-applescript "tell application \"Emacs\" to activate"))  
(add-hook 'server-visit-hook 'ns-raise-emacs)


;; Loads and set up general settings (e.g. autocomplete, undo, etc.)
(require 'my-packages)

;; Language settings
(require 'my-c-mode)
(require 'my-org-mode)
(require 'my-web-mode)
(require 'my-r-mode)
(require 'my-js2-mode)
(require 'my-python-mode)
(require 'my-lua-mode)

;; Better shell defaults
(require 'my-term)
;; Keybindings
(require 'my-keybindings)

(setq custom-file (expand-file-name "my-custom.el" user-emacs-directory))
(load custom-file)

;; Appearance settings
(require 'my-appearance)

;; Refresh screen (to prevent display glitches)
(redraw-display)
