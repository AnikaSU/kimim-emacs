;;; kimim-theme.el --- Kimim color theme for GNU Emacs.

;; Copyright (C) 2014 Kimi MA <kimi.im@outlook.com>

;; Author:Kimi MA
;; Keywords: faces local color theme of kimim's preference
;; URL: http://github.com/kimim/kimim-theme
;; Version: 0.0.1
;; Keywords: theme

;;; License:

;; This is free software; you can redistribute it and/or modify it under
;; the terms of the GNU General Public License as published by the Free
;; Software Foundation; either version 2, or (at your option) any later
;; version.
;;
;; This is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
;; FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
;; for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
;; MA 02111-1307, USA.

;;; Commentary:
;;
;; This theme assumes light background.  To load it, use:
;;
;;     (require 'kimim-theme)

;;; Code:

(deftheme kimim-light
    "Color theme by kimim.")

(let ((class '((class color) (min-colors 88)))
      (kimim-light-bg "#ffffff")
      (kimim-light-fg "#000000")
      (kimim-light-definition "blue")
      (kimim-light-const "#110099")
      (kimim-light-comment "#3F7F5F")
      (kimim-light-error "#FF0000")
      (kimim-light-builtin "#7F0055")
      (kimim-light-string "#2A00FF")
      (kimim-light-blue-3 "#758BC6")
      (kimim-light-region "LightBlue")
      (kimim-light-shadow "grey20"))
  (apply 'custom-theme-set-faces 'kimim-light
         (mapcar
          (lambda (x) `(,(car x) ((,class ,(cdr x)))))
          `((default :foreground ,kimim-light-fg :background ,kimim-light-bg)
            (cursor :background ,"orange")
            (shadow :foreground ,kimim-light-shadow)
            (success :foreground ,kimim-light-error)
            (error :foreground ,kimim-light-error :weight bold)
            (warning :foreground "DarkOrange" :weight bold)
            (compilation-warning :underline t :inherit warning)
            (compilation-error :underline t :inherit error)
            (compilation-info :underline t :foreground ,kimim-light-const)
            (highlight :background "darkseagreen2")
            (fringe :background ,kimim-light-bg)
            (region :background ,kimim-light-region :foreground ,kimim-light-bg)
            (secondary-selection :background "paleturquoise" :foreground "orange")
            (whitespace-indentation :background "LightYellow" :foreground "lightgray")
            (term)
            ;; (font-lock-negation-char-face :foreground "#e8e2b7")
            (font-lock-builtin-face :foreground ,kimim-light-builtin :bold t)
            (font-lock-comment-face :foreground ,kimim-light-comment :slant normal)
            (font-lock-comment-delimiter-face :foreground ,kimim-light-comment :slant normal)
            (font-lock-constant-face :foreground ,kimim-light-const)
            (font-lock-doc-face :foreground ,kimim-light-string)
            (font-lock-doc-string-face :foreground ,kimim-light-string)
            (font-lock-function-name-face :foreground ,kimim-light-definition :bold t)
            (font-lock-keyword-face :foreground ,kimim-light-builtin :weight bold)
            (font-lock-preprocessor-face :foreground ,kimim-light-builtin :bold t)
            (font-lock-regexp-grouping-backslash :foreground ,kimim-light-builtin)
            (font-lock-regexp-grouping-construct :foreground ,kimim-light-builtin)
            (font-lock-string-face :foreground ,kimim-light-string)
            (font-lock-type-face :foreground ,kimim-light-fg :underline t :slant italic)
            (font-lock-variable-name-face :foreground ,kimim-light-fg)
            (font-lock-warning-face :foreground ,kimim-light-error)
            (font-lock-doxygen-face :foreground "SaddleBrown" :background "#f7f7f7")
            (org-code :foreground ,kimim-light-builtin :weight bold)
            (org-verbatim :foreground ,kimim-light-const)
            (org-level-1 :weight bold :foreground "dark blue")
            (org-level-2 :weight bold :foreground "slate blue")
            (org-level-3 :weight bold :foreground "sienna")
            (org-level-4 :slant normal :foreground "#E3258D")
            (org-level-5 :slant normal :foreground "#0077CC")
            (org-level-6 :slant italic :foreground "#EA6300")
            (org-level-7 :slant italic :foreground "#2EAE2C")
            (org-level-8 :slant italic :foreground "#FD8008")
            (org-hide :foregroud ,kimim-light-bg)
            (org-block-begin-line :foreground ,kimim-light-const)
            (org-block-end-line :foreground ,kimim-light-const)
            (org-scheduled-previously :foreground ,kimim-light-comment)
            (org-todo :foreground "orange red" :weight bold)
            (org-warning :foreground "dark orchid" :weight bold)
            (org-table :foreground "blue1")
            (org-footnote :foreground "purple" :underline t)
            (gnus-summary-cancelled :foreground "lightblue")
            (gnus-header-subject :foreground "blue" :bold t)
            (ido-subdir :weight bold)
            (mode-line :foreground "black" :background "gainsboro" :box nil :height 0.85)
            (mode-line-inactive :foreground "RoyalBlue" :background "gainsboro" :box nil :height 0.85)
            (mode-line-buffer-id :foreground "blue4" :background "gainsboro" :box nil :weight bold)
            (which-func :foreground ,kimim-light-builtin)
            (minibuffer-prompt :foreground "medium blue")
            (hl-line :background "azure")
            ;; defaults
            (show-paren-match :background "turquoise")
            (isearch :background "magenta3" :foreground "lightskyblue1")
            (link :foreground "RoyalBlue3" :underline t)
            ;; other packages
            (helm-locate-finish :foreground ,kimim-light-const)
            (aw-mode-line-face :foreground ,kimim-light-string)
            (swiper-match-face-1 :background "white smoke")
            (swiper-match-face-2 :background "#FFCCCC") ;;selected match 1
            (swiper-match-face-3 :background "#CCFFFF") ;;selected match 2
            (swiper-match-face-4 :background "#FFFFCC") ;;selected match 3
            (swiper-background-match-face-1 :background "white smoke")
            (swiper-background-match-face-2 :background "#FFECEC") ;; unselected match 1
            (swiper-background-match-face-3 :background "#ECFFFF") ;; unselected match 2
            (swiper-background-match-face-4 :background "#FFFFEC") ;; unselected match 3
            (swiper-line-face :background "azure2")
            (swiper-line-face :background "#f3d3d3")
            (hydra-face-red :foreground "#cc0000" :bold t)
            (hydra-face-blue :foreground "RoyalBlue3" :bold t)
            (powerline-active1 :background "grey22" :foreground "white" :inherit mode-line)
            (powerline-active2 :background "grey40" :foreground "white" :inherit mode-line)
            (powerline-inactive1 :background "grey22" :foreground "white" :inherit mode-line-inactive)
            (powerline-inactive2 :background "grey40" :foreground "white" :inherit mode-line-inactive)
            ;; (magit-tag :background "LemonChiffon1" :foreground "goldenrod4")
            ;; (magit-section-heading :inherit header-line)
            (magit-section-highlight :weight bold :background "azure")
            ;; (magit-diff-context :foreground "grey20")
            ;; (magit-diff-context-highlight :weight bold :foreground "grey20")
            ;; (magit-diff-added :inherit diff-added)
            ;; (magit-diff-added-highlight :inherit diff-added :weight bold)
            ;; (magit-diff-removed :inherit diff-removed)
            ;; (magit-diff-removed-highlight :inherit diff-removed :weight bold)
            ;; (magit-diff-file-heading)
            ;; (magit-diff-file-heading-highlight :weight bold)
            ;; (magit-diff-file-heading-selection :foreground "red")
            ;; (magit-diff-hunk-heading :inherit diff-hunk-header)
            ;; (magit-diff-hunk-heading-highlight :inherit diff-hunk-header :weight bold)
            ;; (magit-hash :foreground "firebrick")
            ;; (magit-branch-remote :background "Grey85" :foreground "OliveDrab4" :box t)
            ;; (magit-branch-local :background "Grey85" :foreground "LightSkyBlue4" :box t)
            (ivy-highlight-face)
            (ivy-posframe :background "#eeeeee" :foreground "#000000")
            (wgrep-face :foreground ,kimim-light-comment)
            (cider-instrumented-face)
            (mu4e-header-highlight-face :background "azure")
            (mu4e-replied-face :foreground "dark green")
            (mu4e-forwarded-face :foreground "dark orange")
            (mu4e-unread-face :foreground "blue" :bold t)
            (message-cited-text-1 :foreground "blue")))))

(custom-theme-set-variables
 'kimim-light
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682"
                            "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"]))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'kimim-light)

;;; kimim-light-theme.el ends here
