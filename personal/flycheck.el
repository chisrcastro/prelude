(require 'flycheck-pyflakes)

(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'python-mode-hook 'flycheck-mode)

