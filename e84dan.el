;; Add the e84dan directory to load support
(add-to-list 'load-path (concat dotfiles-dir "/e84dan-emacs"))

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

;; Setup the color theme of choice
;;(color-theme-twilight)

;; This is only available with Aquamacs by default but is available
;; from the author on github
(require 'color-theme-arjen)
(color-theme-arjen)

;; Open cucumber feature files in ruby-mode too
(add-to-list 'auto-mode-alist '("feature$" . ruby-mode))

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

