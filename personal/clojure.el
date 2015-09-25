(defun my-clojure-execute ()
  (interactive)
  (save-buffer)
  (save-some-buffers t)
  (push-mark (point) t)
  (push-mark (point) t)
  (push-mark (point) t)
  (save-excursion
    (cider-eval-defun-at-point)))

(add-hook 'clojure-mode-hook (lambda ()
			       (define-key clojure-mode-map (kbd "M-<f5>") 'my-clojure-execute)))

(defun live-cider-connect ()
  (interactive)
  (cider-connect "localhost" 8889))

(global-set-key (kbd "C-<f6>") 'live-cider-connect)
