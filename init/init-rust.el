(provide 'init-rust)

(quelpa 'rust-mode)
(quelpa 'racer)
(quelpa 'cargo)
(quelpa 'flycheck-rust)

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'rust-mode-hook #'flycheck-mode)
(add-hook 'rust-mode-hook #'flycheck-rust-setup)
(add-hook 'rust-mode-hook #'cargo-minor-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

(require 'rust-mode)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq rust-format-on-save t)
(setq company-tooltip-align-annotations t)
