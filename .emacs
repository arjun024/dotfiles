;; .emacs

(custom-set-variables
 ;; always end a file with a newline
 ;'(require-final-newline t)
 ;; uncomment to disable loading of "default.el" at startup
 ;'(inhibit-default-init t)
 ;; default to unified diffs
 '(diff-switches "-u"))

;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)

; Highlight tabs and trailing whitespace everywhere
(setq whitespace-style '(face trailing tabs))
(custom-set-faces
 '(whitespace-tab ((t (:background "red")))))
(global-whitespace-mode)

;Theme stuff
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'wheatgrass t)

; line numbers on the left side
(global-linum-mode t)
; Don't show welcome to emacs screen
(setq inhibit-startup-screen t)

; make searches case insensitive
(setq case-fold-search t)

; Highlight lines with more than 80 chars
;(add-hook 'python-mode-hook '(lambda () (highlight-lines-matching-regexp ".\\{81\\}" 'hi-red-b)))

; Highlight characters over 80th column
(require 'whitespace)
(setq whitespace-line-column 80)
(setq whitespace-style '(face lines-tail))

(add-hook 'prog-mode-hook 'whitespace-mode)