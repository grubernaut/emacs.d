(provide 'init-go)

(quelpa 'go-mode)
(quelpa 'go-eldoc)
(quelpa 'go-errcheck)
(quelpa 'gotest)

(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))
(add-to-list 'load-path (concat (getenv "GOPATH") "/src/github.com/golang/lint/misc/emacs"))
(define-key go-mode-map (kbd "C-x t") 'go-test-current-test)
(require 'golint)
