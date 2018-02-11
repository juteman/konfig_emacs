(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")
(setq custom-safe-themes 1)
(load-theme 'zenburn 1)
;; 插件包管理
;; ------------分割线-----------------------------------------------------

(require 'init-packages)
(require 'smartparens-config)
(require 'init-complete)
(require 'init-ui)
(require 'init-git)
(require 'init-better-defaults)
(require 'lang-c++)
(require 'init-orgmode)
(require 'lang-elisp)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("599f1561d84229e02807c952919cd9b0fbaa97ace123851df84806b067666332" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
