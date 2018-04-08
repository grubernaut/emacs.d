;;; init


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/init"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))

(mapc 'require
      '(
	;;; Always bootstrap first
        init-bootstrap

	;; These all use the (quelpa) form.
        init-ack
        init-anzu
        init-appearance
        init-completion
        init-crontab
        init-deft
        init-defuns
        ;init-dired
        init-docker
        init-environment
        init-expand-region
        init-flycheck
        init-groovy
        init-haskell
        init-ido
        init-js
        init-keymaps
        init-lua
        init-magit
        init-markdown
        init-modeline
        init-multiterm
        init-neo
        init-parens
        init-php
        init-powerline
        init-projectile
        init-puppet
        init-python
        init-ruby
        init-rust
        init-session
        init-settings
        init-snippets
        init-tf
        init-toml
        init-yaml
        init-web
		 ))
(require 'server)
(unless (server-running-p)
  (server-start))
(setq custom-file "~/.emacs.d/init/init-custom.el")
(load custom-file)
(defun go-mode-setup ()
  (go-eldoc-setup)
  (setq gofmt-command "goimports")
  (add-to-list 'exec-path (concat (getenv "HOME") "/go/bin/"))
  (add-hook 'before-save-hook 'gofmt-before-save)
  (define-key go-mode-map (kbd "C-x x") 'go-run))
(add-hook 'go-mode-hook 'go-mode-setup)
