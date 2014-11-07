
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-auto-show-menu nil)
 '(ac-auto-start nil)
 '(ac-quick-help-delay 0.5)
 '(ack-and-a-half-executable "/opt/local/bin/ack-5.12")
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#212121" "#CC5542" "#6aaf50" "#7d7c61" "#5180b3" "#DC8CC3" "#9b55c3" "#bdbdb3"])
 '(background-color "#002b36")
 '(background-mode dark)
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups"))))
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(company-show-numbers t)
 '(cursor-color "#839496")
 '(custom-enabled-themes (quote (smart-mode-line-dark graphene flatland)))
 '(custom-safe-themes
   (quote
    ("f1ea873350bbb910a551854d700dfa7a16f0b6e7b9e88e12e012d9f0f881d083" "573e46dadf8c2623256a164831cfe9e42d5c700baed1f8ecd1de0675072e23c2" "119d3875a0e29c0c3af025a157493c950753c02519986365806276e370bd0033" "e80a0a5e1b304eb92c58d0398464cd30ccbc3622425b6ff01eea80e44ea5130e" "013e87003e1e965d8ad78ee5b8927e743f940c7679959149bbee9a15bd286689" "0c311fb22e6197daba9123f43da98f273d2bfaeeaeb653007ad1ee77f0003037" "696927ed40057050d219989dd473cc08fab27995e4febd6cf14429a448364bc6" "7ed6913f96c43796aa524e9ae506b0a3a50bfca061eed73b66766d14adfa86d1" "50edb7914e8d369bc03820d2dcde7e74b7efe2af5a39511d3a130508e2f6ac8f" "1bf7c6867e0b1ba1f9cc9785c457aa3b06cc48b5ff5d90170245f4a69c42f0ef" "c6ebdd352d2e7f26eb2cd9468af8c764447dbac05b979ed36bd00477e621a90b" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "70cf411fbf9512a4da81aa1e87b064d3a3f0a47b19d7a4850578c8d64cac2353" "1011be33e9843afd22d8d26b031fbbb59036b1ce537d0b250347c19e1bd959d0" "40c4ae07d79f89c8f4e35b11066e059d289da043e70a37b5e4a87b0a06f26d07" "3a727bdc09a7a141e58925258b6e873c65ccf393b2240c51553098ca93957723" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "74e4ff79ff08923d2fe7ab9024016fbe07e92211ad3c26745ad057c77646027a" "146d24de1bb61ddfa64062c29b5ff57065552a7c4019bee5d869e938782dfc2a" "d8a4e35ee1b219ccb8a8c15cdfed687fcc9d467c9c8b9b93bd25229b026e4703" "2435505ebb865b4d96b0bbe17f79fd2190b5f7a48bd5ddffb09c0180ae4a6e6d" "e617436a24b380999fa0c2b9e3a56a1560beb769dfb3b3e1cf2cdb6c4f79c554" "ab3a5935a219ca4d4c6aea5defc9f4b4199e248d45bf93b9e72e43f1242e44e3" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "543976df2de12eb2ac235c79c7bc1dac6c58f4a34ae6f72237d6e70d8384f37a" "86f4407f65d848ccdbbbf7384de75ba320d26ccecd719d50239f2c36bec18628" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "c739f435660ca9d9e77312cbb878d5d7fd31e386a7758c982fa54a49ffd47f6e" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "7dd17c354cfb6b46a70eeb19e1e64f8bdaec474c64f890617b6e76f0d8665514" "9873d7793e0449ed30b78358a81d8219622aabf9df4492c22e08b247751ade5c" "30f861ee9dc270afc2a9962c05e02d600c998905433c8b9211dc2b33caa97c51" "65ae93029a583d69a3781b26044601e85e2d32be8f525988e196ba2cb644ce6a" "2b5aa66b7d5be41b18cc67f3286ae664134b95ccc4a86c9339c886dfd736132d" "8eef22cd6c122530722104b7c82bc8cdbb690a4ccdd95c5ceec4f3efa5d654f5" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "ce8998464858cd579515f35dd9c582f03e14175d898f67ace69f6a6c5624ed68" "fc2782b33667eb932e4ffe9dac475f898bf7c656f8ba60e2276704fabb7fa63b" "70fecb7e435889b7d0df23246b4c94343b7ed03bca0367e8e50787a8f85866d7" "5a1a016301ecf6874804aef2df36ca8b957443b868049d35043a02a0c1368517" "821af11eb274545d40c3a6cd5a43f37099e720889c39e398e5e4b0c84648d398" default)))
 '(ede-project-directories (quote ("/Users/sm52286/Dropbox/Projects/DiskMass/mcdm")))
 '(ess-toolbar-global t)
 '(fci-rule-color "#c7c7c7")
 '(flycheck-display-errors-delay 3)
 '(flycheck-highlighting-mode nil)
 '(foreground-color "#839496")
 '(frame-brackground-mode (quote dark))
 '(fringe-mode (quote (20 . 20)) nil (fringe))
 '(global-semantic-decoration-mode t)
 '(global-semantic-highlight-func-mode nil)
 '(global-semantic-stickyfunc-mode nil)
 '(global-semanticdb-minor-mode t)
 '(graphene-autocomplete-auto nil)
 '(graphene-default-font "Consolas-16")
 '(graphene-errors-auto nil)
 '(graphene-variable-pitch-font "Lucida Grande-12")
 '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
 '(hl-paren-colors (quote ("#ecf0f1" "#ecf0f1" "#c0392b")))
 '(inferior-R-program-name "/usr/bin/R")
 '(js2-global-externs js2-my-global-externs)
 '(multi-term-program "/bin/bash" t)
 '(org-agenda-files
   (quote
    ("~/Projects/Plans/Website/TODO.org" "~/Dropbox/Org/Today.org" "~/Projects/Plans/plans.org")))
 '(org-pretty-entities t)
 '(powerline-color1 "#3d3d68")
 '(powerline-color2 "#292945")
 '(pretty-symbol-categories (lambda))
 '(pretty-symbol-patterns
   (quote
    ((955 lambda "\\<lambda\\>"
          (emacs-lisp-mode inferior-lisp-mode lisp-mode scheme-mode python-mode inferior-python-mode))
     (402 lambda "\\<function\\>"
          (js-mode j2-mode))
     (8800 relational "!="
           (c-mode c++-mode go-mode java-mode js-mode perl-mode cperl-mode ruby-mode python-mode inferior-python-mode))
     (8800 relational "/="
           (emacs-lisp-mode inferior-lisp-mode lisp-mode scheme-mode))
     (8805 relational ">="
           (c-mode c++-mode go-mode java-mode js-mode perl-mode cperl-mode ruby-mode python-mode inferior-python-mode emacs-lisp-mode inferior-lisp-mode lisp-mode scheme-mode))
     (8804 relational "<="
           (c-mode c++-mode go-mode java-mode js-mode perl-mode cperl-mode ruby-mode python-mode inferior-python-mode emacs-lisp-mode inferior-lisp-mode lisp-mode scheme-mode))
     (8743 logical "&&"
           (c-mode c++-mode go-mode java-mode js-mode perl-mode cperl-mode ruby-mode python-mode inferior-python-mode))
     (8743 logical "\\<and\\>"
           (emacs-lisp-mode inferior-lisp-mode lisp-mode scheme-mode))
     (8744 logical "||"
           (c-mode c++-mode go-mode java-mode js-mode perl-mode cperl-mode ruby-mode python-mode inferior-python-mode))
     (8744 logical "\\<or\\>"
           (emacs-lisp-mode inferior-lisp-mode lisp-mode scheme-mode))
     (172 logical "\\<not\\>"
          (emacs-lisp-mode inferior-lisp-mode lisp-mode scheme-mode)))))
 '(safe-local-variable-values
   (quote
    ((eval org-preview-latex-fragment)
     (eval if
           (fboundp
            (quote pretty-symbols-mode))
           (pretty-symbols-mode -1)))))
 '(save-place t nil (saveplace))
 '(semantic-mode t)
 '(show-paren-mode t)
 '(sml/active-background-color "#34495e")
 '(sml/active-foreground-color "#ecf0f1")
 '(sml/inactive-background-color "#dfe4ea")
 '(sml/inactive-foreground-color "#34495e")
 '(speedbar-use-images t)
 '(tool-bar-mode nil)
 '(transient-mark-mode (quote (only . t)))
 '(vc-annotate-background "#d4d4d4")
 '(vc-annotate-color-map
   (quote
    ((20 . "#437c7c")
     (40 . "#336c6c")
     (60 . "#205070")
     (80 . "#2f4070")
     (100 . "#1f3060")
     (120 . "#0f2050")
     (140 . "#a080a0")
     (160 . "#806080")
     (180 . "#704d70")
     (200 . "#603a60")
     (220 . "#502750")
     (240 . "#401440")
     (260 . "#6c1f1c")
     (280 . "#935f5c")
     (300 . "#834744")
     (320 . "#732f2c")
     (340 . "#6b400c")
     (360 . "#23733c"))))
 '(vc-annotate-very-old-color "#23733c")
 '(visible-bell nil)
 '(yascroll:delay-to-hide nil))
;; ;;(custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(header-line ((t (:inherit mode-line :background "gray30" :foreground "dark gray" :box (:line-width 2 :color "grey75" :style released-button)))))
;;  '(mode-line ((t (:background "gray73" :foreground "gray0" :box (:line-width 1 :style released-button) :family "Lucida Grande"))))
;;  '(mode-line-buffer-id ((t (:foreground "black" :weight bold))))
;;  '(mode-line-highlight ((t (:foreground "gray0" :box (:line-width 2 :color "grey75" :style released-button) :weight bold))))
;;  '(mode-line-inactive ((t (:inherit mode-line :background "#393939" :foreground "#999999" :box (:line-width 1 :color "#cccccc" :style released-button) :weight normal))))
;;  '(powerline-active1 ((t (:inherit mode-line :background "gray60"))) t)
;;  '(powerline-active2 ((t (:inherit mode-line :background "gray60"))) t)
;;  '(rainbow-delimiters-unmatched-face ((t (:foreground "#f2777a" :underline t))))
;;  '(which-func ((t (:foreground "dark red" :weight bold))) t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(linum ((t (:background "#3F3F3F" :slant normal :height 140)))))
