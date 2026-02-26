(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(fido-mode t)

(setq dired-dwim-target t)

(setq dired-listing-switches "-alh")

; #65f02e
(require 'multiple-cursors)

(load-file "~/.emacs.d/odin-mode.el")
(setq treesit-language-source-alist '((odin "https://github.com/tree-sitter-grammars/tree-sitter-odin")))

(load-file "~/.emacs.d/nasm-mode.el")
(load-file "~/.emacs.d/simpc-mode.el")

(setq default-input-method "korean-hangul")
(global-set-key (kbd "<S-SPC>") 'toggle-input-method)

(load-theme 'gruvbox-dark-medium t)
;; (set-face-background 'fringe (face-background 'default)) ; 테두리 배경

;; set transparency
(add-to-list 'default-frame-alist '(alpha-background . 95))
(set-frame-parameter nil 'alpha-background 95)

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)
(show-paren-mode 1)

;; (menu-bar-mode -1)
;; (toggle-scroll-bar -1)
;; (tool-bar-mode -1)

;; (set-frame-font "Rec Mono Casual 18" nil t)
(set-frame-font "Iosevka 14" nil t)

;; 한글 폰트 강제 지정
(set-fontset-font t 'hangul
                  (font-spec :family "Noto Sans KR"))
(setq face-font-rescale-alist
      '(("Noto Sans KR" . 0.85)))

;; (add-to-list 'auto-mode-alist '("\\.c\\'" . text-mode))
;; (add-to-list 'auto-mode-alist '("\\.js\\'" . text-mode))
;; (add-to-list 'auto-mode-alist '("\\.h\\'" . text-mode))
(add-to-list 'auto-mode-alist '("\\.odin\\'" . odin-ts-mode))
(add-to-list 'auto-mode-alist '("\\.s\\'" . nasm-mode))
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

(setq auto-save-default nil)
(setq make-backup-files nil)

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)
(set-face-attribute 'line-number nil :inherit 'default)
(set-face-attribute 'line-number-current-line nil :inherit 'line-number)

;; (setq-default indent-tabs-mode t)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
(put 'upcase-region 'disabled nil)
(setq c-basic-offset 4)
(setq python-indent-offset 4)
(setq js-indent-level 4)
(setq compile-command "./build.sh")

(setq split-height-threshold 0)
(setq split-width-threshold nil)

(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(require 'move-text)
(global-set-key (kbd "M-p") 'move-text-up)
(global-set-key (kbd "M-n") 'move-text-down)

(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "C-x C-p") 'find-file-at-point)
(global-set-key (kbd "C-c C-d") 'duplicate-dwim)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->")         'mc/mark-next-like-this)
(global-set-key (kbd "C-<")         'mc/mark-previous-like-this)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
    '("d48b305295fee98002a63490579c563ff84fde2873d91476f50d7c6364db1ea9"
      "82340c8ad0e483b014a7fdf24c861e4947b37d1b26cde1bba186764d044b08a3"
      "b1a691bb67bd8bd85b76998caf2386c9a7b2ac98a116534071364ed6489b695d"
      "67ca6d4c5dbe850d181140b36196be621a4bd88e9fce6930cfc97a3bbd4c5e94"
      "9b61223c36041652ebf17c461ef6927978a580e5cd91eb08fef4103b3bbbaa40"
      "fc4ff6a34b1ed3913acf2d2dc3c2cbc68129b75b31958ae169148966ce121dd9"
      "edb0a4f55a7f188c750108aa0bfc61f67afab59ef73623f17a079d52cadf8ddb"
      "69b4cfd0ec6f6a57f8e8566dcc86615783194935fa5e753c3db9c6fc40d78634"
      "762f0b1370ac4d2133f62c7e10d7ef6c5230b204215e110c7256d4ee5e33244c"
      "4069f9d9102ac3e89e0f42540b063c6bcc9af9955d56b9ba082e5a3e4a1144c8"
      "61bbdd4c4f62235aca4ab0e67bd3e7ed16c3413c1b1e3efba2f77bda1ea26681"
      "df94467acfe1beb77b00e30e7339f6b49ef84b427eb32d6f949106a26ecd7a17"
      "7a201d66bc548dd583bfc521829c3b7ea678cbee42683f6da9454c736afaf92a"
      "c0b8ab31bf5d202ea9fd9a8a44f4804b13be3120c80a8635c19ead8ec306ebfd"
      "0e50182d12992997697cece28b602358c98401afd9ee4332f9477d4e935d906a"
      "f236d9f28ac29ecdf36ba062ae20b537e473482c36cbfea4772edbedacfd6a14"
      "966c941786d706dd76e9bbb659e290c97c5dfe2eb3e0e61bddcf04bce6e8ee8d"
      "82773e5f8b9e5f5c6cd8d32d3e5a846c0f6123602c734fe2882a7ada18fa702e"
      "2a3f644065525dff900145160d27597ec40ecc187288e93ff316189459a4f39b"
      "2e9bd30ff91fc7c1672cd7eeb2c534ab701704fc8b300d2fd4aa1a83585f0ee7"
      "deef4ae3cca1507296c090da99e18c64b02f406ab8d41181c1a97bd99b10a547"
      "dcc6b94634ddcda0d2854e005d1fc2ceaf630a75390443c166759ad4b7fd3365"
      "16b5544d8b6d9cf1621437f9f1acb0eabaa6bfa219eff59445eae88f568b9829"
      "c104e92b9bcaad3559aa81b2eec396f328a819c1d02ced8d87691fcfdd16c12f"
      "43048bd28c5824feed997557754f788b75372388f94c6ddb08900364e9ee916e"
      "3e59a0016a2dc98f3ec719ff0545e9ee32b98c07fa923752b935f117987f1c6d"
      "9922f29fc5c3a7e0cc78dfff5812781bc074c72dbf2dfbe0921fafb7d5e5209a"
      "0fab9da02ed949ca5ceed2070204b579e66a31dc9c9ad7ef6c6dc76fa8499515"
      "c81a4dd63f4e17d2610e1ae5f6998b3d6da42593055a1ea6e96c004ff9dad138"
      "2551582aa7dba9de3d31e5591779fc10d2545276bb130956a91ac0796964e868"
      "070fadc70bff89d5a0051478b2f78f614e334500ec8368c9bc4d38256c5f6f9b"
      "903098660e8f9db34ce2c8f15bd03ef2a2a582914319a5cab8def5799786c1e1"
      "2d8b29c6d2ebf39fbf0642f7cb38a412749aa5435b047a2b9284c8fcfc3c64e0"
      "15cc33e3840ff0a7496c5afb6445b9b323f5c61987a24995158c151094b2e836"
      "b87b8196a268a742613d87d619a8616087a29f4ce14f32bd52279495b77ab544"
      "b51336dbf697f394a53cd34cce7ce8945dc3c7fce731b66470f010e09684165a"
      "feb5ff67494e8dacd2522bb37809ad3b687292585d8880d29921f4d9efecfc9d"
      "709213c55efabae9bdb6259103936de501dff2a9ad21b03de4cb896227b5216d"
      "21d4c31e291322568ef557f3d870d7dd5b41d40d9077daf852a0e6c71229d583"
      "10fa8f3677ae4dba44c8a790a85aad6d7b8be729958d8ac7b80b211e8bb7cc50"
      "70e274e655ae570c69f22383c5ed224b4714a81614d094e55806079f5567fcc4"
      default))
 '(package-selected-packages '(gruvbox-theme memoize move-text multiple-cursors smex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)

(set-frame-parameter (selected-frame) 'alpha '(85 85))
(add-to-list 'default-frame-alist '(alpha 85 85))
