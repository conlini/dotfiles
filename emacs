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
 '(inhibit-startup-echo-area-message "")
 '(inhibit-startup-screen t)
 '(jdee-server-dir "~/dotfiles/jdee-server")
 '(package-selected-packages
   (quote
    (jdee javaimp javap-mode elpy project-explorer go-eldoc exec-path-from-shell go-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; enable iswitch mode for quick switch of buffers
(iswitchb-mode 1)
(add-hook 'iswitchb-define-mode-map-hook 'iswitchb-local-keys)
;; end iswitch

;; following are go-specific
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (replace-regexp-in-string
                          "[ \t\n]*$"
                          ""
                          (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq eshell-path-env path-from-shell) ; for eshell users
    (setq exec-path (split-string path-from-shell path-separator))))

(when window-system (set-exec-path-from-shell-PATH))

(setenv "GOPATH" "/Users/$USER/dev/src/hub/cisco/gocode")

(defun my-go-mode-hook ()
  ; Use goimports instead of go-fmt
  (setq gofmt-command "goimports")
  ; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; eldoc
  (go-eldoc-setup)
 ; godef
  (local-set-key (kbd "M-.") 'godef-jump)
)

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
