;;; eyebrowse-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (eyebrowse-mode eyebrowse-setup-opinionated-keys)
;;;;;;  "eyebrowse" "eyebrowse.el" (21332 9761 0 0))
;;; Generated autoloads from eyebrowse.el

(autoload 'eyebrowse-setup-opinionated-keys "eyebrowse" "\
Set up more opinionated key bindings for using eyebrowse.

M-1..M-9, C-< / C->, C-`and C-' are used for switching.  If evil
is detected, it will bind gt, gT, gc and zx, too.

\(fn)" nil nil)

(defvar eyebrowse-mode nil "\
Non-nil if Eyebrowse mode is enabled.
See the command `eyebrowse-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `eyebrowse-mode'.")

(custom-autoload 'eyebrowse-mode "eyebrowse" nil)

(autoload 'eyebrowse-mode "eyebrowse" "\
Toggle `eyebrowse-mode'.
This global minor mode provides a set of keybindings for
switching window configurations.  It tries mimicking the tab
behaviour of `ranger`, a file manager.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("eyebrowse-pkg.el") (21332 9761 399974
;;;;;;  0))

;;;***

(provide 'eyebrowse-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; eyebrowse-autoloads.el ends here
