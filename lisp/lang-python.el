(add-hook 'python-mode #'smartparens-mode)
(elpy-enable)

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
(setq python-shell-interpreter "python"
            python-shell-interpreter-args "-i")
(setq python-shell-interpreter "jupyter"
            python-shell-interpreter-args "console --simple-prompt")
(provide 'lang-python)
