(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(zenburn-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; activate zenburn theme
(load-theme 'zenburn t)

(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq delete-auto-save-files t)
;; highlight parens
(show-paren-mode 1)
(setq show-paren-style 'parenthisis)
;; highlight cursor's row
(global-hl-line-mode t)
;; Keybindings to swap adjacent lines
(defun move-line (direction)
  (let ((col (current-column)))
    (unless (eq col 0)
      (move-to-column 0))
    (save-excursion
      (forward-line)
      (transpose-lines direction))
    (forward-line direction)))
(defun move-line-down ()
  (interactive)
  (move-line 1))
(defun move-line-up ()
  (interactive)
  (move-line -1))
(global-set-key (kbd "M-<down>") 'move-line-down)
(global-set-key (kbd "M-<up>") 'move-line-up)
;; Keybindings to move buffer
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <down>") 'windmove-down)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)
