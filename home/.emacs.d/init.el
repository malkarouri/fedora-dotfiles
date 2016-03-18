(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))

(package-initialize)

(setq inhibit-startup-message t)

(require 'ido)
(ido-mode t)

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

(require 'multi-term)
(require 'workgroups2)


;; Make windmove work in org-mode:
(add-hook 'org-shiftup-final-hook 'windmove-up)
(add-hook 'org-shiftleft-final-hook 'windmove-left)
(add-hook 'org-shiftdown-final-hook 'windmove-down)
(add-hook 'org-shiftright-final-hook 'windmove-right)

(workgroups-mode 1)
