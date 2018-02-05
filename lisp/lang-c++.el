;;设置括号匹配以及彩虹括号
(require 'auto-complete-clang)
(add-hook 'c++-mode-hook #'smartparens-mode)
(add-hook 'c++-mode-hook #'rainbow-delimiters-mode)
(add-hook 'c-mode-common-hook #'smartparens-mode)
(add-hook 'c-mode-common-hook #'rainbow-delimiters-mode)

;;自动补全设置
;;ac-clang-flags 设置
(setq ac-clang-flags
      (mapcar (lambda (item)(concat "-I" item))
	      (split-string
	       "
/usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0
/usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0
/usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/backward
/usr/local/include
/usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include
/usr/include/x86_64-linux-gnu
/usr/include

")))


(defun my-cc-mode-setup()
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))

(add-hook 'c-mode-common-hook 'my-cc-mode-setup)
(add-hook 'c++-mode-hook 'my-cc-mode-setup)
(provide 'lang-c++)