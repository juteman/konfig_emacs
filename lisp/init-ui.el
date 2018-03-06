(setq-default cursor-type 'bar)
(global-hl-line-mode 0)
;;去掉工具栏
(tool-bar-mode 0) 
(menu-bar-mode 0) 
(scroll-bar-mode 0)
;;去掉
(setq inhibit-startup-message t)
(display-time-mode 1) ;; 常显 
(setq display-time-24hr-format t) ;;格式 
(setq display-time-day-and-date t) ;;显示时间、星期、日期
(provide 'init-ui)
