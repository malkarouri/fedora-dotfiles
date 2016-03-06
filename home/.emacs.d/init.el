(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))

(package-initialize)

(setq inhibit-startup-message t)

(require 'ido)
(ido-mode t)

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
