(add-to-list 'package-archives'
			 ("melpa" . "https://melpa.org/packages/"))

;;(add-to-list 'package-archives
;;             '("melpa" . "https://melpa.org/packages/") t)

(add-hook 'emacs-startup-hook 'toggle-frame-maximized)

(savehist-mode +1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)
(column-number-mode +1)
(delete-selection-mode +1)
(save-place-mode +1)
(recentf-mode +1)

(setq make-backup-files nil)
(setq auto-save-default nil)

(setq auth-sources '("~/.authinfo.gpg"))

(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(setq split-height-threshold nil)
(setq split-width-threshold 0)

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package company
  :ensure t)

(use-package beacon
  :config
  (beacon-mode 1))

(use-package org-bullets
  :ensure t
  :config
    (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; REPLACED BY FIDO
;(use-package smex
;  :ensure t)
;(smex-initialize)
;(global-set-key (kbd "M-x") 'smex)

;; use-package with package.el:
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

(setq dashboard-banner-logo-title "")
(setq dashboard-footer-messages '(""))

(global-prettify-symbols-mode t)
(setq display-time-24hr-format t)
(display-time-mode 1)

(setq ring-bell-function 'ignore)

(defalias 'yes-or-no-p 'y-or-n-p)
(add-hook 'dired-mode-hook 'dired-hide-details-mode)
(setq dired-dwim-target t)
(setq dired-kill-when-opening-new-dired-buffer t)
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)

(setq scroll-conservatively 100)
(setq scroll-margin 7)
(setq display-line-numbers 'nil)
;;(setq display-line-numbers 'relative)


(setq frame-title-format '(buffer-file-name "%f" ("%b")))

(setq-default tab-width 4)
(global-set-key (kbd "C-c h") 'hippie-expand)
(setq hippie-expand-try-functions-list
      '(
        try-expand-dabbrev
        try-expand-dabbrev-all-buffers
        ;; try-expand-dabbrev-from-kill
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol
        try-complete-file-name-partially
        try-complete-file-name
        ;; try-expand-all-abbrevs
        ;; try-expand-list
        ;; try-expand-line
        ))

(defvar my-term-shell "/bin/bash")
(defadvice ansi-term (before force-bash)
  (interactive (list my-term-shell)))
(ad-activate 'ansi-term)
(global-set-key (kbd "<s-return>") 'ansi-term)

;(setq dired-hide-details-mode t)
(global-set-key (kbd "C-x k") 'kill-current-buffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;;ido

;;(setq ido-enable-flex-matching nil)
;;(setq ido-create-new-buffer 'always)
;;(setq ido-everywhere t)
;;(ido-mode 1)
;;(global-set-key (kbd "C-x b") 'ido-switch-buffer)
;;(setq max-mini-window-height 0.2)
;;(setq resize-mini-windows 'grow-only)
;;(setq ido-separator nil)
;;
;;(setf (nth 2 ido-decorations) "\n\t   ")
;;(setf (nth 1 ido-decorations) "\n\t")
;;(setf (nth 0 ido-decorations) "\n \t > ")
;;(setf (nth 3 ido-decorations) "\n   ...")
;;(setf (nth 4 ido-decorations) "")
;;(setf (nth 5 ido-decorations) "")
;;
;;(defun ido-define-keys () ;; C-n/p is more intuitive in vertical layout
;;  (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
;;  (define-key ido-completion-map (kbd "C-p") 'ido-prev-match))
;;(add-hook 'ido-setup-hook 'ido-define-keys)

;; icomplete
;;(icomplete-vertical-mode 1)
(setq completion-styles '(flex))

;;fido
(fido-mode t)
(fido-vertical-mode t)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-cursor-color "gold2")

;;(when (member "Terminus" (font-family-list))
;;  (set-frame-font "Terminus-12" t t))

(when (member "Iosevka Term" (font-family-list))
  (set-frame-font "Iosevka Term-11" t t))


(setq doc-view-resolution 600)
(pdf-tools-install) 




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("1a6d120936f9df3f44953124dbf9e56b399e021702ca7d1844e6c5e1658b692b" "551629d1e63bb66423dd80b3ec2d1a67611d1fa570e7238201e65b25a3b3834f" "a1c18db2838b593fba371cb2623abd8f7644a7811ac53c6530eebdf8b9a25a8d" "80214de566132bf2c844b9dee3ec0599f65c5a1f2d6ff21a2c8309e6e70f9242" "18cf5d20a45ea1dff2e2ffd6fbcd15082f9aa9705011a3929e77129a971d1cb3" "88f7ee5594021c60a4a6a1c275614103de8c1435d6d08cc58882f920e0cec65e" default))
 '(package-selected-packages
   '(magit dashboard lsp-mode tao-theme citeproc pdf-tools org-bullets cyberpunk-theme catppuccin-theme zenburn-theme smex beacon doom-themes auctex company which-key)))
(put 'upcase-region 'disabled nil)

(load-theme 'zenburn)
;;(load-theme 'doom-one)
;;(load-theme 'cyberpunk)
;;(load-theme 'catppuccin :no-confirm)
;;(setq catppuccin-flavor 'latte) ;; or 'latte, 'macchiato, or 'mocha
;;(catppuccin-reload)


(put 'downcase-region 'disabled nil)
