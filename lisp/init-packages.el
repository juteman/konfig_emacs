
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                           ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; cl - Common Lisp Extension
 (require 'cl)

 ;; Add Packages
 (defvar my/packages '(
                       ;;themes
                       zenburn-theme
		       ;;helm
		       helm
		       ivy
		       ;;
		       ;;better-defaults
		       ;;org-mode
		       org-bullets
		       ;;括号匹配
		       smartparens
		       ;;彩虹括号
		       rainbow-delimiters
		       ;;yasnippet
		       yasnippet
		       ;;自动补全
		       auto-complete
		       auto-complete-clang
                       ac-helm
		       ;;clang-format
		       clang-format
                       ;;flycheck
                       flycheck
		       ;;magit
		       magit
		       ;;python
		       elpy
		       py-autopep8
		       ein
                       ) "Default packages")

 (setq package-selected-packages my/packages)

 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
           when (not (package-installed-p pkg)) do (return nil)
           finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
         (package-install pkg))))


(provide 'init-packages)
