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
(color-theme-blackboard)

;; This is only available with Aquamacs
;;(color-theme-arjen)

;; Open cucumber feature files in ruby-mode too
(add-to-list 'auto-mode-alist '("feature$" . ruby-mode))

