;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;(unless (>= 24 emacs-major-version)
;;  (error "monokai-theme requires Emacs 24 or later."))

(deftheme monokai
  "Monokai color theme")

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")
			 ("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")
			 ("elpy" .
"http://jorgenschaefer.github.io/packages/")))



(let ((monokai-blue-light "#89BDFF")
      (monokai-gray "#595959")
      (monokai-gray-darker "#383830")
      (monokai-gray-darkest "#141411")
      (monokai-gray-lightest "#595959")
      (monokai-gray-light "#E6E6E6")
      (monokai-green "#A6E22A")
      (monokai-green-light "#A6E22E")
      (monokai-grey-dark "#272822")
      (monokai-magenta "#F92672")
      (monokai-purple "#AE81FF")
      (monokai-purple-light "#FD5FF1")
      (monokai-yellow "#E6DB74")
      (monokai-yellow-dark "#75715E")
      (monokai-yellow-light "#F8F8F2"))
  (custom-theme-set-faces
   'monokai
   ;; Frame
   `(default ((t (:foreground ,monokai-yellow-light :background ,monokai-grey-dark))))
   `(cursor ((t (:foreground ,monokai-magenta))))
   `(hl-line ((t (:background ,monokai-gray-darkest))))
   `(minibuffer-prompt ((t (:foreground ,monokai-yellow-dark))))
   `(modeline ((t (:background ,monokai-gray-lightest :foreground ,monokai-gray-light))))
   `(region ((t (:background ,monokai-gray))))
   `(show-paren-match-face ((t (:background ,monokai-gray-lightest))))
   ;; Main
   `(font-lock-builtin-face ((t (:foreground ,monokai-green))))
   `(font-lock-comment-face ((t (:foreground ,monokai-yellow-dark))))
   `(font-lock-constant-face ((t (:foreground ,monokai-purple))))
   `(font-lock-doc-string-face ((t (:foreground ,monokai-yellow))))
   `(font-lock-function-name-face ((t (:foreground ,monokai-green))))
   `(font-lock-keyword-face ((t (:foreground ,monokai-magenta))))
   `(font-lock-string-face ((t (:foreground ,monokai-yellow))))
   `(font-lock-type-face ((t (:foreground ,monokai-blue-light))))
   `(font-lock-variable-name-face ((t (:foreground ,monokai-magenta))))
   `(font-lock-warning-face ((t (:bold t :foreground ,monokai-purple-light))))
   ;; CUA
   `(cua-rectangle ((t (:background ,monokai-gray-darkest))))
   ;; IDO
   `(ido-first-match ((t (:foreground ,monokai-purple))))
   `(ido-only-match ((t (:foreground ,monokai-green))))
   `(ido-subdir ((t (:foreground ,monokai-blue-light))))
   ;; ECB
   `(ecb-default-highlight-face ((t (:foreground ,monokai-green))))
   ;; Whitespace
   `(whitespace-space ((t (:foreground ,monokai-gray))))
   ;; Yasnippet
   `(yas/field-highlight-face ((t (:background ,monokai-gray-darker))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background "nil")))))))

(provide-theme 'monokai)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Info-additional-directory-list (quote nil))
 '(ac-ignore-case t)
 '(ac-modes
   (quote
    (slime-repl-mode emacs-lisp-mode lisp-interaction-mode c-mode cc-mode c++-mode java-mode clojure-mode scala-mode scheme-mode ocaml-mode tuareg-mode perl-mode cperl-mode python-mode ruby-mode ecmascript-mode javascript-mode js-mode js2-mode php-mode css-mode makefile-mode sh-mode fortran-mode f90-mode ada-mode xml-mode sgml-mode slime-mode lisp-mode prolog-mode prolog-inferior-mode ciao-mode mercury-mode xsb-mode eclipse-mode)))
 '(ac-use-menu-map t)
 '(ac-use-overriding-local-map t)
 '(ahs-modes
   (quote
    (actionscript-mode apache-mode bat-generic-mode c++-mode c-mode csharp-mode css-mode dos-mode emacs-lisp-mode html-mode ini-generic-mode java-mode javascript-mode js-mode lisp-interaction-mode lua-mode latex-mode makefile-mode makefile-gmake-mode markdown-mode moccur-edit-mode nxml-mode nxhtml-mode outline-mode perl-mode cperl-mode php-mode python-mode rc-generic-mode reg-generic-mode ruby-mode sgml-mode sh-mode squirrel-mode text-mode tcl-mode visual-basic-mode slime-mode slime-repl-mode lisp-mode mercury-mode)))
 '(package-selected-packages
   (quote
    (web-mode company-quickhelp flycheck-rust company-racer rust-mode flymake-rust jsx-mode jedi flycheck elpy elnode company-jedi bigint)))
 '(transient-mark-mode nil)
 '(truncate-lines t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;========================================
;;外观设置
;;========================================
;;禁用工具栏
(tool-bar-mode -1)
;;关闭启动画面
(setq inhibit-startup-message t)

;;80字符
(setq-default fill-column 80)


;;========================================
;; 键绑定
;;========================================
;;F10 显示/隐藏菜单栏 ;; M-x menu-bar-open
(define-key global-map (kbd "<f10>") 'menu-bar-mode)
;;透明按键

(global-set-key [(f12)] 'loop-alpha)  ;;注意这行中的F8 , 可以改成你想要的按键  
  
(setq alpha-list '((95 55) (100 100)))  
  
(defun loop-alpha ()  
  (interactive)  
  (let ((h (car alpha-list)))                  
    ((lambda (a ab)  
       (set-frame-parameter (selected-frame) 'alpha (list a ab))  
       (add-to-list 'default-frame-alist (cons 'alpha (list a ab)))  
       ) (car h) (car (cdr h)))  
    (setq alpha-list (cdr (append alpha-list (list h))))  
    )  
)  
;;输入法
(global-unset-key (kbd "C-SPC"))
(global-set-key (kbd "M-SPC") 'set-mark-command)




(set-language-environment 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(setq-default pathname-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(setq ansi-color-for-comint-mode t)
;;处理shell-mode乱码,好像没作用




;;(add-hook 'python-mode-hook
;;          (lambda ()
;;            (setq indent-tabs-mode t)
;;            (setq tab-width 4)
;;            (setq python-indent 4)))

;;缩进4字符
;;(setq default-tab-width 4);
(setq default-tab-width 2);
(setq tab-width 2)



;; 不插入tab字符
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil) ;;如果实在需要tab键，则用C-q Tab

(setq column-number-mode t)
(global-linum-mode 1)



;;自动缩进
;;(global-set-key (kbd "RET") 'newline-and-indent)

;;backup
(setq backup-directory-alist (quote (("."."~/.backups"))))
(setq kept-new-versions 2);;保留最近得几个文件
;;========================================
;; 缓冲区
;;========================================
;;高亮显示成对括号
(show-paren-mode t)
;;显示列号
(setq column-number-mode t)

;;========================================
;; 回显区
;;========================================

;;========================================
;; 状态栏
;;========================================
 
;;显示时间
(display-time)
 
;;-----------------------------------------
;; 时间格式
;;-----------------------------------------
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-interval 10)
 
;;显示列号
(setq column-number-mode t)
;;显示行列号  
(column-number-mode t)
 
;;标题栏显示 %f 缓冲区完整路径 %p 页面百分数 %l 行号
(setq frame-title-format "%f")

;;========================================
;; 颜色设置
;;========================================
 
;; 指针颜色
(set-cursor-color "lightgreen")
 
;; 鼠标颜色
(set-mouse-color "black")
 
;;-----------------------------------------
;; 背景和字体颜色
;;-----------------------------------------
;;(set-foreground-color "white")
(set-foreground-color "#F8F8F2")
;;(set-background-color "black")
(set-background-color "#272822")
(set-border-color "green")
 
;;-----------------------------------------
;; 语法高亮显示，区域选择，二次选择 ;;前景和背景色
;;-----------------------------------------
(set-face-foreground 'highlight "yellow")
(set-face-background 'highlight "green")
(set-face-foreground 'region "tan")
(set-face-background 'region "azure4")
(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")
(set-face-foreground 'font-lock-comment-face "YellowGreen") 
(set-face-foreground 'font-lock-string-face "green")

;;========================================
;; 必备扩展 
;;========================================
;;(setq x-select-enable-clipboard t)
;;(add-to-list 'load-path "/usr/bin/sbcl") ;;(add-to-list 'load-path "D:/Program Files/sbcl/")
;;(add-to-list 'load-path "~/.emacs.d/slime");;(add-to-list 'load-path "D:/Program files/slime/")
;;(setq inferior-lisp-program "sbcl")
;;(require 'slime-autoloads)
;;(slime-setup '(slime-fancy))

(add-to-list 'load-path "~/.emacs.d/auto-complete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/ac-dict")
(ac-config-default)


;;===================================================================
;;add to lisp mode
;;===================================================================
;;ac-slime
(add-hook 'slime-mode-hook 'set-up-slime-ac)
;;(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'slime-repl-mode 'slime-mode))

;;indent when ENTER pressed
(defun my-newline-and-indent ()
  (interactive)
  (newline-and-indent)
  (slime-reindent-defun))
(define-key lisp-mode-shared-map (kbd "RET") 'my-newline-and-indent)


;; auto-complete-etags
;;(require 'auto-complete-etags)
;; (add-to-list 'ac-sources 'ac-source-etags)
;; (setq ac-etags-use-document t)

(defun add-ac-source-etags ()
  (add-to-list 'ac-sources 'ac-source-etags))
(add-hook 'prolog-mode-hook 'add-ac-source-etags)
(add-hook 'eclipse-mode-hook 'add-ac-source-etags)

;;(require 'auto-complete-etags-docs)
;;(aced-update-ac-source-etags)



 
;; '(ahs-suppress-log nil)
;; '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
;; '(cua-mode t nil (cua-base))
;; '(current-language-environment "UTF-8")
;; '(custom-enabled-themes (quote (zenburn)))
;; '(custom-safe-themes (quote ("1df4f61bb50f58d78e88ea75fb8ce27bac04aef1032d4ea6dafe4667ef39eb41" "be7eadb2971d1057396c20e2eebaa08ec4bfd1efe9382c12917c6fe24352b7c1" default)))
;; '(ede-project-directories (quote nil))
;; '(global-auto-highlight-symbol-mode t)
;; '(global-hl-line-mode t)
;; '(global-linum-mode t)

;; '(grep-highlight-matches t)
;; '(grep-scroll-output t)
;; '(home-end-enable t)
;; '(indicate-empty-lines t)
;; '(scroll-bar-mode (quote right))
;; '(semantic-edits-verbose-flag nil)
;; '(semantic-idle-summary-function (quote semantic-format-tag-summarize-with-file))
;; '(semantic-idle-work-parse-neighboring-files-flag t)
;; '(semantic-idle-work-update-headers-flag t)
;; '(semantic-tag-folding-show-tooltips t)
;; '(show-paren-mode t)
;; '(slime-auto-connect (quote always))
;; '(slime-auto-select-connection (quote always))
;; '(slime-autodoc-use-multiline-p t)
;; '(slime-complete-symbol*-fancy t)
;; '(slime-kill-without-query-p t)
;; '(slime-net-coding-system (quote utf-8-unix))
;; '(slime-when-complete-filename-expand t))
;;


;;;;;;;;;;;;;;;
;;;; el-get ;;;
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;;(unless (require 'el-get nil 'noerror)
;;  (with-current-buffer
;;      (url-retrieve-synchronously
;;       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
;;    (goto-char (point-max))
;;    (eval-print-last-sexp)))

;;(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
;;(el-get 'sync)

;;;;


;;;;;;;;;;;
;;;jedi ;;;
;;;;;;;;;;;
(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)                      ; optional
(setq jedi:complete-on-dot t)                 ; optional


;;高亮当前行
(global-hl-line-mode 1)




(add-to-list 'load-path "~/.emacs.d/el-get/jade-mode")
(require 'sws-mode)
(require 'jade-mode)
(add-to-list 'auto-mode-alist '("\\.styl\\\'" . sws-mode))


;;
;;pylint flycheck
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;sudo apt-get install pylint
;;# use emacs’ package manager install it
;;M-x package-install RET flycheck
;;configure emacs

;;(defun flycheck-python-setup ()
;;  (flycheck-mode))
;;(add-hook 'python-mode-hook #'flycheck-python-setup)
;;configure pylint

;;pylint --generate-rcfile >.pylintrc
;;Disable whatever warnings and errors you want by adding the appropriate codes to the “disable=” l;;ine in your .pylintrc file. Full list is here.
;;Examples:
;;disable= C0326, W0621, C0111, C0103, W0702, W0703, C0321, W0511, W0102, R0913,
;;         R0914, R0915, R0912, R0902, R0903, C0303, C0302, C0325, W0401
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun flycheck-python-setup ()
  (flycheck-mode))
(add-hook 'python-mode-hook (lambda ()
                              (flycheck-mode 1)
                              (semantic-mode 1)
                              (setq flycheck-checker 'python-pylint
                                    flycheck-checker-error-threshold 900
                                    flycheck-pylintrc "~/.pylintrc")))

;;(add-hook 'python-mode-hook #'flycheck-python-setup)

(load "~/.emacs.d/site-lisp/php-mode.el")
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.phps\\'" . php-mode)) 

;;restas


(load "~/.emacs.d/site-lisp/sr-speedbar.el")
(require 'sr-speedbar)
(setq speedbar-show-unknown-files t)  
(setq speedbar-use-images nil)  
(setq sr-speedbar-width 30)  
(setq sr-speedbar-right-side nil)  
   
(global-set-key (kbd "<f5>") (lambda()  
                               (interactive)  
                               (sr-speedbar-toggle)))  
;;;
(load "~/.emacs.d/site-lisp/paredit.el")
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code."
  t)



;; golang mode
;;代码跳转: C-c C-j
;;代码释义: C-c C-d
;;代码返回: M-* (这里即是输入: Alt+shift+8)
(load "~/.emacs.d/go-mode.el")
(load "~/.emacs.d/go-mode-autoloads.el")
(load "~/.emacs.d/site-lisp/go-autocomplete.el")
 (require 'go-mode-autoloads)
 (require 'go-autocomplete)
 ;; speedbar
 ;; (speedbar 1)
 (speedbar-add-supported-extension ".go")
 (add-hook
 'go-mode-hook
 '(lambda ()
 ;; gocode
 (auto-complete-mode 1)
 (setq ac-sources '(ac-source-go))
 ;; Imenu & Speedbar
 (setq imenu-generic-expression
 '(("type" "^type *\\([^ \t\n\r\f]*\\)" 1)
 ("func" "^func *\\(.*\\) {" 1)))
 (imenu-add-to-menubar "Index")
 ;; Outline mode
 (make-local-variable 'outline-regexp)36.
(setq outline-regexp "//\\.\\|//[^\r\n\f][^\r\n\f]\\|pack\\|func\\|impo\\|cons\\|var.\\|type\\|\t\t*....")
 (outline-minor-mode 1)
 (local-set-key "\M-a" 'outline-previous-visible-heading)
 (local-set-key "\M-e" 'outline-next-visible-heading)
 ;; Menu bar
 (require 'easymenu)
 (defconst go-hooked-menu
 '("Go tools"
 ["Go run buffer" go t]
 ["Go reformat buffer" go-fmt-buffer t]
 ["Go check buffer" go-fix-buffer t]))
 (easy-menu-define
 go-added-menu
 (current-local-map)
 "Go tools"
 go-hooked-menu)

 ;; Other
 (setq show-trailing-whitespace t)
 ))
 ;; helper function
 (defun go ()
 "run current buffer"
 (interactive)
 (compile (concat "go run " (buffer-file-name))))

 ;; helper function
 (defun go-fmt-buffer ()
 "run gofmt on current buffer"
 (interactive)
 (if buffer-read-only
 (progn
 (ding)
 (message "Buffer is read only"))
 (let ((p (line-number-at-pos))
 (filename (buffer-file-name))
 (old-max-mini-window-height max-mini-window-height))
 (show-all)
 (if (get-buffer "*Go Reformat Errors*")

(progn
 (delete-windows-on "*Go Reformat Errors*")
 (kill-buffer "*Go Reformat Errors*")))78. (setq max-mini-window-height 1)
 (if (= 0 (shell-command-on-region (point-min) (point-max) "gofmt" "*Go
Reformat Output*" nil "*Go Reformat Errors*" t))

(progn
 (erase-buffer)
 (insert-buffer-substring "*Go Reformat Output*")
 (goto-char (point-min))
 (forward-line (1- p)))
 (with-current-buffer "*Go Reformat Errors*"
 (progn
 (goto-char (point-min))
 (while (re-search-forward "<standard input>" nil t)
 (replace-match filename))
 (goto-char (point-min))
 (compilation-mode))))
 (setq max-mini-window-height old-max-mini-window-height)
 (delete-windows-on "*Go Reformat Output*")
 (kill-buffer "*Go Reformat Output*"))))
 ;; helper function
 (defun go-fix-buffer ()
 "run gofix on current buffer"
 (interactive)
(show-all)
(shell-command-on-region (point-min) (point-max) "go tool fix -diff"))

;; 保存文件的时候，对该源文件做一下gofmt
(add-hook 'before-save-hook #'gofmt-before-save)




;;;
;;;Zen Coding   
;'zencoding-expand-line bound to C-Return --ctrl + enter 进入zencoding模式  
;;(add-to-list 'load-path "~/.emacs.d/plugins/zencoding/")   

(load "~/.emacs.d/site-lisp/zencoding-mode.el")
(require 'zencoding-mode)   
(add-hook 'sgml-mode-hook 'zencoding-mode) ;;Auto-start on any markup modes 


(add-to-list 'load-path "~/.emacs.d/js2-mode/")    
(autoload 'js2-mode "js2-mode" nil t)    
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))    
(add-hook 'js2-mode-hook 'my-common-mode-auto-pair)    ;;for auto-pair  


;;(load "~/.emacs.d/site-lisp/vue-mode/vue-html-mode.el")
;;(require 'vue-html-mode)

;;(load "~/.emacs.d/mmm-mode/mmm-mode.el")
;;(load "~/.emacs.d/site-lisp/vue-mode/ssass-mode.el")


;;(require 'mmm-mode)
;;(setq mmm-global-mode 'maybe)
;;(mmm-add-mode-ext-class 'html-mode)


;;(load "~/.emacs.d/site-lisp/vue-mode/vue-mode.el")
;;(require 'vue-mode)


;;react, jsx-mode
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp/jsx-mode/src/"))

(add-to-list 'auto-mode-alist '("\\.jsx\\'" . jsx-mode))
(autoload 'jsx-mode "jsx-mode" "JSX mode" t)

;;(load "~/.emacs.d/site-lisp/jsx-mode/src/jsx-mode.el")
;;(require 'jsx-mode)
;;(autoload 'jsx-mode "jsx-mode" "JSX mode" t)



;;prolog
(autoload 'run-prolog "prolog" "Start a Prolog sub-process." t)
(autoload 'prolog-mode "prolog" "Major mode for editing Prolog programs." t)
(autoload 'mercury-mode "prolog" "Major mode for editing Mercury programs." t)
(setq prolog-system 'swi)
(setq auto-mode-alist (append '(("\\.pl$" . prolog-mode)
                                ("\\.m$" . mercury-mode))
                              auto-mode-alist))


;;
(toggle-truncate-lines 1)  ;;自动换行


;;
;;rust
;;

;;(add-hook 'rust-mode-hook #'racer-mode)
;;(add-hook 'racer-mode-hook #'eldoc-mode)

;(add-hook 'racer-mode-hook #'company-mode)

(require 'rust-mode)
;;(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
;;(setq company-tooltip-align-annotations t)


;; Enable company globally for all mode
;;(global-company-mode)

;; Reduce the time after which the company auto completion popup opens
;;(setq company-idle-delay 0.2)

;; Reduce the number of characters before company kicks in
;;(setq company-minimum-prefix-length 1)
;; Set path to racer binary
;;(setq racer-cmd "/home/hhly/.cargo/bin/racer")

;; Set path to rust src directory
;;(setq racer-rust-src-path "/home/hhly/.rust/src/")

;; Load rust-mode when you open `.rs` files
;;(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

;; Setting up configurations when you load rust-mode

;;(add-hook 'rust-mode-hook

;;     '(lambda ()
     ;; Enable racer
;;        (racer-activate)

     ;; Hook in racer with eldoc to provide documentation
;;     (racer-turn-on-eldoc)

     ;; Use flycheck-rust in rust-mode
;;     (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

     ;; Use company-racer in rust mode
;;     (set (make-local-variable 'company-backends) '(company-racer))

     ;; Key binding to jump to method definition
;;     (local-set-key (kbd "M-.") #'racer-find-definition)

     ;; Key binding to auto complete and indent
;;     (local-set-key (kbd "TAB") #'racer-complete-or-indent)))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;1.先安装 npm install -g vue-language-server
;;;2.list-packages 安装use-package, lsp-vue, company-lsp, lsp-mode
;;;

(use-package lsp-vue :ensure)
(use-package lsp-mode :ensure)

(use-package company-quickhelp :ensure)
(use-package company-lsp
  :ensure
  :config
  ;; 开启yasnippet支持
  (setq company-lsp-enable-snippet t))

(use-package company
  :ensure
  :config
  (setq company-minimum-prefix-length 1)
  (setq company-dabbrev-downcase nil)
  (setq company-idle-delay 0.5)
  (setq company-idle-delay 0.5)
  (add-hook 'company-mode-hook 'company-quickhelp-mode)
  (add-to-list 'company-backends 'company-lsp))


(use-package web-mode
  :ensure
  :init
  (add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
  :config
  (add-hook 'web-mode-hook 'company-mode)
  (add-hook 'web-mode-hook 'lsp-vue-enable))







;;
;; go autoload
;;

(load "~/.emacs.d/autoload/go-projects.el")

(add-to-list 'load-path "~/.emacs.d/autoload")

;;(require 'go-mode-autoloads)
(require 'popup)

(add-to-list 'load-path "~/.emacs.d/autocomplete")
(require 'auto-complete-config)
(ac-config-default)


(add-to-list 'load-path "~/gopath/src/github.com/dougm/goflymake")
(require 'go-flymake)


(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)



(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

(add-hook 'go-mode-hook #'(lambda() (setq ac-sources '(ac-source-go ac-source-abbrev ac-source-dictionary))))









