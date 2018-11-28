(provide 'init-mail)

(add-hook 'mail-mode-hook (lambda ()
                            (set-fill-column 80)
                            (auto-fill-mode)
                            ))

(add-to-list 'auto-mode-alist '("*neomutt\\'" . mail-mode))
