`;;设置括号匹配以及彩虹括号
(require 'auto-complete-clang)
(add-hook 'c++-mode-hook #'smartparens-mode)
(add-hook 'c++-mode-hook #'rainbow-delimiters-mode)
;;GUI下使用对齐线
(add-hook 'c-mode-common-hook #'highlight-indentation-mode)
(add-hook 'c-mode-common-hook #'highlight-indentation-current-column-mode)
(add-hook 'c-mode-common-hook #'smartparens-mode)
(add-hook 'c-mode-common-hook #'rainbow-delimiters-mode)
;;END
;;YASnippet
(yas-reload-all)
(add-hook 'c++-mode-hook #'yas-minor-mode)
(add-hook 'c-mode-common-hook #'yas-minor-mode)

;;自动补全设置
;;ac-clang-flags 设置

;; (setq ac-clang-flags
;;       (mapcar (lambda (item)(concat "-I" item))
;; 	      (split-string
;; 	       "
;; /usr/bin/../lib/gcc/x86_64-linux-gnu/7.3.0/../../../../include/c++/7.3.0
;; /usr/bin/../lib/gcc/x86_64-linux-gnu/7.3.0/../../../../include/x86_64-linux-gnu/c++/7.3.0
;; /usr/bin/../lib/gcc/x86_64-linux-gnu/7.3.0/../../../../include/c++/7.3.0/backward
;; /usr/include/clang/4.0.1/include
;; /usr/local/include
;; /usr/include/x86_64-linux-gnu
;; /usr/include

;; ")))


;;(defun my-cc-mode-setup()
;;  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))

;;(add-hook 'c-mode-common-hook 'my-cc-mode-setup)
;;(add-hook 'c++-mode-hook 'my-cc-mode-setup)
;;END
(add-hook 'c++-mode-hook #'lsp)
(add-hook 'c-mode-common-hook #'lsp)

;;clang-format
;;(require 'clang-format)
;;(global-set-key (kbd "C-c i") 'clang-format-region)
;;(global-set-key (kbd "C-c u") 'clang-format-buffer)
;;(setq clang-format-style-option "llvm")
;;END

;; flycheck
;;(add-hook 'c++-mode-hook 'flycheck-mode)
;;(add-hook 'c-mode-common-hook 'flycheck-mode)
;;(add-hook 'c++-mode-hook (lambda ()(setq flycheck-clang-language-standard "c++11")))
;;

(provide 'lang-c++)
