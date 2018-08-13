(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (tango-dark)))
 '(inhibit-startup-echo-area-message "")
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (go-guru projectile go-autocomplete jedi yaml-mode markdown-mode elpy project-explorer go-eldoc exec-path-from-shell go-mode)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; set meta key to option
( setq mac-option-key-is-meta t
  mac-option-modifier 'meta)

;; enable iswitch mode for quick switch of buffers
(iswitchb-mode 1)
(add-hook 'iswitchb-define-mode-map-hook 'iswitchb-local-keys)
;; end iswitch

;; following are go-specific
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH"))
  
(defun my-go-mode-hook ()
  ;; Use goimports instead of go-fmt
  (setq gofmt-command "goimports")
  ;; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; eldoc
 (go-eldoc-setup)
 ;; godef
  (local-set-key (kbd "M-.") 'godef-jump)
  (local-set-key (kbd "M-,") 'pop-tag-mark)
  (go-guru-hl-identifier-mode)
  (auto-complete-mode 1)
)


(with-eval-after-load 'go-mode
   (require 'go-autocomplete))
   
(add-hook 'go-mode-hook 'my-go-mode-hook)

;; end go specific

;; package-explorer
(require 'project-explorer)
(global-set-key (kbd "M-e") 'project-explorer-toggle)
 (defun iswitchb-local-keys ()
      (mapc (lambda (K) 
	      (let* ((key (car K)) (fun (cdr K)))
    	        (define-key iswitchb-mode-map (edmacro-parse-keys key) fun)))
	    '(("<right>" . iswitchb-next-match)
	      ("<left>"  . iswitchb-prev-match)
	      ("<up>"    . ignore             )
	      ("<down>"  . ignore             ))))

;; end package-explorer

;; delete highlighted text when start typing
(delete-selection-mode t)

;; highlight matching paren when cursor is over one
(require 'paren)
(show-paren-mode 1)

;disable auto-backup
(setq make-backup-files nil)

;; forces line numbers to be displayed on mode line as well
(line-number-mode t)
(column-number-mode t)


(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)


(projectile-mode)
(defun my-switch-project-hook ()
  (go-set-project))
(add-hook 'projectile-after-switch-project-hook #'my-switch-project-hook)


