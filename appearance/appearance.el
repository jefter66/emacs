(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
(fringe-mode 0)
(font-lock-mode t)

(setq initial-scratch-message nil)
(setq inhibit-startup-message t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq confirm-kill-processes nil)
(setq-default truncate-lines t)
(setq-default fill-column 80)

(setq-default cursor-type 'square)
(defalias 'yes-or-no-p 'y-or-n-p)

(setq frame-resize-pixelwise t)

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode)
  :ensure t)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)

;    (use-package doom-themes
;       :init (load-theme 'doom-Iosvkem t))

    (use-package spacemacs-theme
      :defer t
      :init (load-theme 'spacemacs-dark t))
;    (set-background-color "black")

(set-frame-parameter (selected-frame) 'alpha '(100 100))
(add-to-list 'default-frame-alist '(alpha 100 100))

(set-frame-font "Inconsolata-12:antialias=true")

(use-package default-text-scale
  :ensure t
  :hook (after-init . default-text-scale-mode))
(set-language-environment "UTF-8")
(global-prettify-symbols-mode t)
(prefer-coding-system 'utf-8)

(global-set-key (kbd "C-x C-l") 'font-lock-mode)

(use-package all-the-icons :ensure t)
(use-package doom-modeline
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 25))
  :ensure t)

;(global-display-line-numbers-mode)
;(setq display-line-numbers-type 'relative)