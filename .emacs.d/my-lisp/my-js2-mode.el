;; Stefano's my-js2-mode

;; Provide settings for j2-mode

;; Use js2-mode as default javascript mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js2-mode-hook 'js2-imenu-extras-mode)

(defvar js2-my-global-externs '("it" "loadFixtures" "expect" "describe" "beforeEach" "spyOn" "jasmine"
                            "$" "$j" "Mustache" "jQuery" "_" "qcloud" "Nulogy" "qc" "Backbone" "JST"
                            "afterEach" "setFixtures" "require" "Handlebars" "exports" "todo" "setTimeout"
                            "clearTimeout" "setInterval" "clearInterval" "runs" "waits" "module" "Marionette"
                            "Ember" "angular" "process" "__dirname" "define" "sinon" "before" "after" "chai"
                            "moment" "location"))

(add-hook 'js2-mode-hook
            (lambda ()
              (push '("function" . ?λ) prettify-symbols-alist)))

(require 'ac-js2)
(add-hook 'js2-mode-hook 'ac-js2-mode)
(provide 'my-js2-mode)
