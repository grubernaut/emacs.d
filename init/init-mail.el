(provide 'init-mail)

(add-hook 'mail-mode-hook (lambda ()
                            (set-fill-column 80)
                            ))

(add-to-list 'auto-mode-alist '("*neomutt\\'" . mail-mode))
