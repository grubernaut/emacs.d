(provide 'init-magit)

(quelpa 'magit)
(quelpa 'yagist)
(quelpa 'diff-hl)

(global-set-key (kbd "<f1>") 'magit-status)
(global-diff-hl-mode +1)
