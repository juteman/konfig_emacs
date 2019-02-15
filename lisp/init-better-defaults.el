;;去除自动备份文件的功能
;;
(setq-default make-backeup-files nil)
(setq auto-save-default nil)
(setq auto-save-list-file-prefix nil)
;;END
;;x(require 'better-defaults)
;;自动缩进
(defun set-newline-and-indent()
  (local-set-key (kbd "RET") 'newline-and-indent))
(add-hook 'c++-mode 'set-newline-and-indent)
(add-hook 'c-mode 'set-newline-and-indent)
;; smex配置
;(require 'smex)
;(global-set-key (kbd "M-x") 'smex)
;(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command) ;旧命令交互
;;END


;; Neo tree
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
;; 修改mark 按键
(global-unset-key (kbd "C-SPC"))
(global-set-key (kbd "S-SPC") 'set-mark-command)
;; 使用space 代替tab, indent setting
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
;;去除文件末尾空格
(add-hook 'before-save-hook 'delete-trailing-whitespace)
;;ivy-mode
;;(require 'helm-config)
(require 'ivy)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)
;;END

;;flycheck


(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(set-buffer-file-coding-system 'utf-8-unix)
(set-clipboard-coding-system 'utf-8-unix)
(set-file-name-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-next-selection-coding-system 'utf-8-unix)
(set-selection-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(setq locale-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
;;cnfonts enable
(require 'cnfonts)
(cnfonts-enable)

;; ccls setting
(require 'lsp-mode)
(require 'ccls)
(require 'lsp-ui)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)
(setq ccls-sem-highlight-method 'font-lock)
(ccls-use-default-rainbow-sem-highlight)

(setq ccls-executable "/usr/local/bin/ccls")
(provide 'init-better-defaults)
