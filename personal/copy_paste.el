;;; http://www.emacswiki.org/emacs-en/CopyAndPaste#toc2
(setq x-select-enable-clipboard t) ; as above
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;;; Source: http://superuser.com/questions/88864/is-there-a-hotkey-for-paste-in-ubuntu-emacs
(global-set-key [(control shift X)] 'clipboard-kill-region)
(global-set-key [(control shift C)] 'clipboard-kill-ring-save)
(global-set-key [(control shift V)] 'clipboard-yank)
