
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode 1)
(setq ac-use-quick-help t)
(setq ac-quick-help-delay 1.0)
(setq ac-auto-start 4)
(setq ac-fuzzy-enable t)
(setq ac-use-comphist nil)
(setq ac-dwim t)
(setq ac-quick-help-prefer-pos-tip t)
(require 'ac-helm)
(provide 'init-complete)

