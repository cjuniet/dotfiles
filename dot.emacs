(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(
    alchemist
    better-defaults
    clojure-mode
    company
    elixir-mode
    evil
    helm
    magit
    monokai-theme
    nyan-mode
    projectile
    rainbow-delimiters
    solarized-theme
    zenburn-theme))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(fset 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "C-z") 'undo)
(nyan-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(blink-cursor-mode nil)
 '(custom-enabled-themes (quote (monokai)))
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(make-backup-files nil)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1) ((control)))))
 '(ring-bell-function (quote ignore))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
