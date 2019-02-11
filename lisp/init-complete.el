(require 'yasnippet)
(require 'auto-complete-config)
;;(ac-config-default)
;;(global-auto-complete-mode 1)
;;(setq ac-use-quick-help t)
;;(setq ac-quick-help-delay 1.0)
;;(setq ac-auto-start 4)
;;(setq ac-fuzzy-enable t)
;;(setq ac-use-comphist nil)
;;(setq ac-dwim t)
;;(setq ac-quick-help-prefer-pos-tip t)
;;(require 'ac-helm)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay              t
      company-minimum-prefix-length   2
      company-show-numbers            t
      company-tooltip-limit           20
      company-dabbrev-downcase        nil)

;;(eval-after-load 'company
;;  '(add-to-list
;;    'company-backends ' (company-irony-c-headers company-irony company-lsp)))

;;(add-hook 'c++-mode-hook 'irony-mode)
;;(add-hook 'c-mode-hook 'irony-mode)
;;(add-hook 'objc-mode-hook 'irony-mode)
;;(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(require 'company-lsp)
(push 'company-lsp company-backends)
(provide 'init-complete)
