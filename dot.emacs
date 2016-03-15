(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(require 'cc-mode)
(setq c-default-style '((java-mode . "java")
                        (awk-mode . "awk")
                        (other . "stroustrup")))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(require 'compile)

(require 'ido)
(setq ido-enable-flex-matching t)
(ido-mode t)

(require 'mouse)
(xterm-mouse-mode t)

(require 'mwheel)
(setq mouse-wheel-follow-mouse 't)
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-yank-at-point t)
(mouse-wheel-mode t)

(defalias 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "C-z") 'undo)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(blink-cursor-mode nil)
 '(compilation-read-command nil)
 '(initial-scratch-message nil)
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(scroll-step 1)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
