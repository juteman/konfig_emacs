(add-hook 'emacs-lisp-mode-hook #'smartparens-mode)

(defun ac-emacs-lisp-mode()
  (setq ac-sources '(ac-source-files-in-current-dir
		     ac-source-functions
		     ac-source-symbols
		     ac-source-words-in-same-mode-buffers)))

(add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode)
(provide 'lang-elisp)
