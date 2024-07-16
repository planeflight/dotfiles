;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; nav shortcuts
(defun my-set-direction-keys ()
  "Set direction keys for insert mode."
  (define-key key-translation-map (kbd "C-h") (kbd "<left>"))
  (define-key key-translation-map (kbd "C-l") (kbd "<right>"))
  (define-key key-translation-map (kbd "C-j") (kbd "<down>"))
  (define-key key-translation-map (kbd "C-k") (kbd "<up>")))

(defun my-reset-direction-keys ()
  "Reset direction keys for insert mode."
  (define-key key-translation-map (kbd "C-h") nil)
  (define-key key-translation-map (kbd "C-l") nil)
  (define-key key-translation-map (kbd "C-j") nil)
  (define-key key-translation-map (kbd "C-k") nil))

(add-hook 'evil-insert-state-entry-hook #'my-set-direction-keys)
(add-hook 'evil-insert-state-exit-hook #'my-reset-direction-keys)

(map! :leader
      :desc "Toggle Treemacs"
      "e e" #'treemacs)

;; tmux package
(use-package! tmux-pane
  :config
  (tmux-pane-mode)
  (map! :leader
        (:prefix ("v" . "tmux pane")
          :desc "Open vpane" :nv "o" #'tmux-pane-open-vertical
          :desc "Open hpane" :nv "h" #'tmux-pane-open-horizontal
          :desc "Open hpane" :nv "s" #'tmux-pane-open-horizontal
          :desc "Open vpane" :nv "v" #'tmux-pane-open-vertical
          :desc "Close pane" :nv "c" #'tmux-pane-close
          :desc "Rerun last command" :nv "r" #'tmux-pane-rerun))
  (map! :leader
        (:prefix "t"
          :desc "vpane" :nv "v" #'tmux-pane-toggle-vertical
          :desc "hpane" :nv "h" #'tmux-pane-toggle-horizontal)))

;; org-bullets package
(use-package org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; copied from Derek Taylor https://gitlab.com/dwt1/dotfiles
(custom-set-faces
 '(org-level-1 ((t (:inherit outline-1 :height 1.7))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.6))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.5))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.4))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.3))))
 '(org-level-6 ((t (:inherit outline-5 :height 1.2))))
 '(org-level-7 ((t (:inherit outline-5 :height 1.1)))))

