;; 去除自动备份文件的功能
(setq make-backeup-files nil)
(setq auto-save-default nil)
(setq auto-save-list-file-prefix nil)
;;END


;; smex配置
(require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command) ;旧命令交互
;;END


(provide 'init-better-defaults)
