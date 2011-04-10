;; Don't show the startup screen
(setq inhibit-startup-message t)

;; Display line and column numbers
(setq line-number-mode t)
(setq column-number-mode t)

;; Put backup files out of the way so they aren't scattered everywhere
(setq bckup-directory-alist '(("." . "~/.emacs.d/backups")))

;; Remove trailing whitespace before saving
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

;; I like the menubar and scrollbars, don't judge me.
(menu-bar-mode)
(scroll-bar-mode)

;; Switch to blackboard theme
(color-theme-blackboard)

;; Open cucumber feature files in ruby-mode too
(add-to-list 'auto-mode-alist '("feature$" . ruby-mode))


