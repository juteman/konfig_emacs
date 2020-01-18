(package-initialize)

(add-to-list 'load-path "/home/juteman/.emacs.d/lisp/")

;; 插件包管理
;; ------------分割线-----------------------------------------------------

(require 'init-packages)
(require 'smartparens-config)
(require 'init-complete)
(require 'highlight-indentation)
(require 'init-ui)
(require 'init-git)
(require 'init-better-defaults)
(require 'init-md)
(require 'init-tex)
(require 'lang-c++)
(require 'init-orgmode)
(require 'neotree)
(require 'lang-elisp)
(require 'lang-python)
(require 'lang-csharp)
(require 'lang-lua)
(setq custom-safe-themes 1)
(load-theme 'zenburn 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "599f1561d84229e02807c952919cd9b0fbaa97ace123851df84806b067666332" default)))
 '(package-selected-packages
   (quote
    (auctex irony spacemacs-theme cnfonts zenburn-theme helm ivy counsel swiper org-bullets smartparens rainbow-delimiters yasnippet auto-complete auto-complete-clang ac-helm  clang-format flycheck magit elpy py-autopep8 ein)))
 '(safe-local-variable-values (quote ((c-indent-level . 4)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
