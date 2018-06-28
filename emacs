
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

;; elisp source code
(add-to-list 'load-path "~/.emacs.d/elisp/")


;; Volumen
 (setq ring-bell-function 'ignore)

;; solarized-Style
(add-to-list 'load-path "~/.emacs.d/lisp/emacs-color-theme-solarized")


(load-theme 'solarized-dark t)

;; create brackets, quotes, etc. by pairs
(electric-pair-mode 1)

;; 
(auto-complete-mode 1)

;; Disable
(tool-bar-mode -1)

;; ispell
(setq ispell-program-name "/usr/bin/aspell")

;; Bash PATH
;; (let ((path (shell-command-to-string ". ~/.bash_profile; echo -n $PATH")))
;;   (setenv "PATH" path)
;;   (setq exec-path 
;;         (append
;;          (split-string-and-unquote path ":")
;;          exec-path)))



;; SOLARIZED THEME
;; make the fringe stand out from the background
(setq solarized-distinct-fringe-background t)

;; Don't change the font for some headings and titles
(setq solarized-use-variable-pitch nil)

;; make the modeline high contrast
(setq solarized-high-contrast-mode-line t)

;; Use less bolding
(setq solarized-use-less-bold t)

;; Use more italics
(setq solarized-use-more-italic t)

;; Use less colors for indicators such as git:gutter, flycheck and similar
(setq solarized-emphasize-indicators nil)

;; Don't change size of org-mode headlines (but keep other size-changes)
(setq solarized-scale-org-headlines nil)

;; Avoid all font-size changes
(setq solarized-height-minus-1 1)
(setq solarized-height-plus-1 1)
(setq solarized-height-plus-2 1)
(setq solarized-height-plus-3 1)
(setq solarized-height-plus-4 1)

;; Latex
(setenv "PATH" (concat (getenv "PATH") ":/usr/texbin/"))
(load "auctex.el" nil t t)
(require 'tex-mik)
(require 'tex)
(TeX-global-PDF-mode t)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

;; Dictionary and spelling
(setq ispell-program-name "/usr/local/bin/ispell")
(setenv "DICTIONARY" "english")


(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "/Users/felipe/.emacs.d/bookmarks")
 '(conda-anaconda-home "/home/felipe/miniconda3")
 '(package-selected-packages
   (quote
    (graphviz-dot-mode gh-md dictionary x-dict dockerfile-mode docker docker-api docker-compose-mode yaml-mode flymake-yaml neotree solarized-theme flymake-python-pyflakes flycheck-pyflakes flycheck-pycheckers flycheck-cython evil-magit elpy cython-mode conda color-theme-solarized color-theme-sanityinc-solarized auto-complete auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; sort words
(defun sort-words (reverse beg end)
  "Sort words in region alphabetically, in REVERSE if negative.
Prefixed with negative \\[universal-argument], sorts in reverse.

The variable `sort-fold-case' determines whether alphabetic case
affects the sort order.

See `sort-regexp-fields'."
  (interactive "*P\nr")
  (sort-regexp-fields reverse "\\w+" "\\&" beg end))


;; MAGIT config
(global-set-key (kbd "C-x g") 'magit-status)

;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; conda setup
(require 'conda)
;; if you want interactive shell support, include:
(conda-env-initialize-interactive-shells)
;; if you want eshell support, include:
(conda-env-initialize-eshell)
;; if you want auto-activation (see below for details), include:
(conda-env-autoactivate-mode t)



;; Python
(package-initialize)
(elpy-enable)
(setq python-shell-interpreter "ipython" python-shell-interpreter-args "--simple-prompt --pprint")


;; pandoc
(setq markdown-command "/usr/bin/pandoc")


