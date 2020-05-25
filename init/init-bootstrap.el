(provide 'init-bootstrap)
(require 'cl)
(require 'cl-lib)

(push "/usr/local/bin" exec-path)
(push "/usr/bin" exec-path)
(push (concat (getenv "HOME") "/go/bin") exec-path)
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))

; *BSD love
(setq-default quelpa-build-tar-executable "/usr/local/bin/gtar")

(package-initialize)
(if (require 'quelpa nil t)
    (quelpa-self-upgrade)
  (with-temp-buffer
    (url-insert-file-contents "https://framagit.org/steckerhalter/quelpa/raw/master/bootstrap.el")
    (eval-buffer)))
