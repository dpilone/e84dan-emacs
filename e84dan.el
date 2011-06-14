;; Add the e84dan directory to load support
(add-to-list 'load-path (concat dotfiles-dir "/e84dan-emacs"))

;; Move autosave and backup files to a private temp directory
(defvar user-temporary-file-directory
  (concat temporary-file-directory user-login-name "/"))
(make-directory user-temporary-file-directory t)
(setq backup-by-copying t)
(setq backup-directory-alist
      `(("." . ,user-temporary-file-directory)
        (,tramp-file-name-regexp nil)))
(setq auto-save-list-file-prefix
      (concat user-temporary-file-directory ".auto-saves-"))
(setq auto-save-file-name-transforms
      `((".*" ,user-temporary-file-directory t)))

;; I prefer 4 spaces for tab indent
(setq-default tab-width 4)

;; Don't show the startup screen
(setq inhibit-startup-message t)

;; Display line and column numbers
(setq line-number-mode t)
(setq column-number-mode t)

;; Remove trailing whitespace before saving
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

;; I like the menubar and scrollbars, don't judge me.
(menu-bar-mode)
(scroll-bar-mode)
(tool-bar-mode -1)
;(tabbar-mode -1)

;; This is only available with Aquamacs by default but is available
;; from the author on github
;;(require 'color-theme-arjen)
;;(color-theme-arjen)
(color-theme-twilight)

;; Change windmove binding to "meta" so I can enable shift + arrow
;; keys to select text - unfortunately you also have to comment
;; out the windmove default bindings in starter-kit-bindings.el
(windmove-default-keybindings 'super)
(setq shift-select-mode t)

;; Enable line numbers for ruby and javascript files
(add-hook 'ruby-mode-hook
          (lambda() (linum-mode 1)))
(add-hook 'espresso-mode-hook
          (lambda() (linum-mode 1)))

;; Load my custom yasnippet snippets...
(setq yas/root-directory "~/.emacs.d/e84dan-emacs/snippets")
(yas/load-directory yas/root-directory)

;; Allow quick deletion of the region when typing
(delete-selection-mode 1)

;; Maximize the window on launch
(defun e84-maximize-frame ()
  (interactive)
  (set-frame-position (selected-frame) 0 0)
  (set-frame-size (selected-frame) 1000 1000))

(e84-maximize-frame)
(global-set-key (kbd "s-/") 'hippie-expand)

;; We use JRuby as our Ruby
;(setq ruby-program-name "jruby")
;(setq ruby-compilation-executable "jruby")
;(setq inf-ruby-default-implementation "jruby")
;(setq ri-ruby-program "jruby")

;; Add support for rspec
(add-to-list 'load-path "~/.emacs.d/rspec-mode")
(require 'rspec-mode)

;; Add support for cucumber feature editing
(add-to-list 'load-path "~/.emacs.d/feature-mode")
(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

;; Load Cucumber snippets
(yas/load-directory "~/.emacs.d/feature-mode/snippets")

;; Add coffeescript support
(add-to-list 'load-path "~/.emacs.d/coffee-mode")
(require 'coffee-mode)
(setq coffee-js-mode 'javascript-mode)
(define-key coffee-mode-map [(meta r)] 'coffee-compile-buffer)
(defun coffee-custom ()
  "coffee-mode-hook"
 (set (make-local-variable 'tab-width) 2))

(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))

;; Add textmate support
(add-to-list 'load-path "~/.emacs.d/textmate.el")
(require 'textmate)
(textmate-mode)

;; Add RVM support
(add-to-list 'load-path "~/.emacs.d/rvm")
(require 'rvm)
(rvm-use-default)

;; Add rinari support
(add-to-list 'load-path "~/.emacs.d/rinari")
(require 'rinari)
