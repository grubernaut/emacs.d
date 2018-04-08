(provide 'init-toml)
(quelpa 'toml-mode)

(add-to-list 'auto-mode-alist '("\\.toml$" . toml-mode))
