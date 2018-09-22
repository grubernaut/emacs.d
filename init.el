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
      	init-clojure
        init-completion
        init-crontab
        init-deft
        init-defuns
        init-environment
        init-expand-region
        init-flycheck
      	init-go
      	init-haskell
      	init-ido
        init-js
        init-keymaps
        init-lua
        init-magit
        init-mail
        init-markdown
        init-modeline
        init-multiterm
        init-parens
        init-powerline
        init-projectile
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
