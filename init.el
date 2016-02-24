;;=========================
;;key binding
;;=========================
;; C-x b => CRM bufer list
(global-set-key (kbd "C-x b") 'electric-buffer-list)
;;delete current window  ;; C-x 0
(global-set-key (kbd "M-4") 'delete-window)
;;delete other windows ;; C-x 1
(global-set-key (kbd "M-1") 'delete-other-windows)
;;horizotal split ;; C-x 2
(global-set-key (kbd "M-2") 'split-window-vertically)
;;vertical split  ;; C-x 3
(global-set-key (kbd "M-3") 'split-window-horizontally)
;;switch to other window ;; C-x o 
(global-set-key (kbd "M-0") 'other-window)
;;set indent
(global-set-key (kbd "TAB") '"    ")


    
;;======================
;;set variables
;;======================
;no tool bar
(tool-bar-mode -1)
;;no menu bar
(menu-bar-mode -1)
;;no scroll bar
(scroll-bar-mode -1)
;;no open animation
(setq inhibit-startup-message t)
;;set page windth
(setq fill-column 79)
;;set default mode to text-mode
(setq default-major-mode 'emacs-lisp-mode)
;;set kill log
(setq kill-ring-max 200)
;;syntax highlighting
(global-font-lock-mode t)
;;highlighting mark region
(transient-mark-mode t)
;; scroll-margin 5 
(setq scroll-margin 5
      scroll-conservatively 10000)
;;highlighting correspond brackets
(show-paren-mode t)
(setq show-paren-style 'parentheses)
;;paste at the point
(setq mouse-yank-at-point t)
;;sey y for yes, n for no
(fset 'yes-or-no-p 'y-or-n-p)
;;enable recursive minibuffer
(setq enable-recursive-minibuffers t)
;;show the shot name of commend after call
(setq suggest-key-bindings 1) 
;;show column number
(setq column-number-mode t)
;;totall name in title bar
(setq frame-title-format "%f")
;;no temp file
(setq-default make-backup-files t)
;;only render current window syntax highlighting
(setq font-lock-maximum-decoration t)
;;cursor color
(set-cursor-color "white")
;;background
(set-foreground-color "gainsboro")
(set-background-color "grey30")
;;font setting
(set-default-font "Monospace-13")



;;======================
;;line number
;;======================
(load-file "~/.emacs.d/linum.el") 
(require 'linum)  
(setq linum-format "%3d ")
 

;;======================
;;auto complete
;;======================
(add-to-list 'load-path "~/.emacs.d/my-auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/my-auto-complete/ac-dict")
(ac-config-default)



;;======================
;;ess
;;======================
(add-to-list 'load-path "/home/han.cao/.emacs.d/ess/lisp")
(load "ess-site")
(setq ess-history-directory "~/.R/")



;;======================
;;my-text-hook
;;======================
(defun my-text-hook ()
    (auto-fill-mode t)
    (set-fill-column 72)
    (auto-complete-mode t)
    (linum-mode t))
(add-hook 'find-file-hooks '(lambda () (my-text-hook)))
