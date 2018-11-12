(provide 'init-csharp)

(quelpa 'csharp-mode)
(quelpa 'omnisharp)

(eval-after-load
  'company
  '(add-to-list 'company-backends 'company-omnisharp))

(defun my-csharp-hook ()
  (omnisharp-mode)
  (company-mode)
  (flycheck-mode)

  (setq indent-tabs-mode nil)
  (setq c-syntactic-indentation t)
  (c-set-style "ellemtel")
  (setq truncate-lines t)
  (setq c-basic-offset 2)
  (setq tab-width 2))

(add-hook 'csharp-mode-hook 'my-csharp-hook t)
