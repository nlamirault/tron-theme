;;; tron-theme-theme.el --- Emacs 24 theme

;; Copyright (C) 2014 , Nicolas Lamirault <nicolas.lamirault@gmail.com>
;;
;; Author: Nicolas Lamirault
;;
;; Version: 0.1
;; Package-Requires: ((emacs "24"))

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:

;;; Code:


(unless (>= emacs-major-version 24)
  (error "The Tron theme requires Emacs 24 or later!"))

(deftheme tron-theme
  "An Emacs 24 theme.")

(defun create-tron-theme ()
  "Create the Tron-theme."
  (let ((class '((class color) (min-colors 89)))
        (fg1 "#6fc3df")
        (fg2 "#66b2cb")
        (fg3 "#5ea1b8")
        (fg4 "#5590a4")
        (bg1 "#000000")
        (bg2 "#181818")
        (bg3 "#282828")
        (bg4 "#393939")
        (key2 "#01e964")
        (key3 "#e0ca46")
        (builtin "#e6ffff")
        (keyword "#FFE64D")
        (const   "#d8dae7")
        (comment "#afbfc7")
        (func    "#ffffff")
        (str     "#df740c")
        (type    "#34608d")
        (var     "#b5aa9a")
        (warning "#ff0034")
        (white "#ffffff")
        (black "#000000")
        )
    (custom-theme-set-faces
     'tron-theme
     `(default ((,class (:background ,bg1 :foreground ,fg1))))

     ;; font lock
     `(font-lock-builtin-face ((,class (:foreground ,builtin))))
     `(font-lock-comment-face ((,class (:foreground ,comment))))
     `(font-lock-negation-char-face ((,class (:foreground ,const))))
     `(font-lock-reference-face ((,class (:foreground ,const))))
     `(font-lock-constant-face ((,class (:foreground ,const))))
     `(font-lock-doc-face ((,class (:foreground ,comment))))
     `(font-lock-function-name-face ((,class (:foreground ,func :bold t))))
     `(font-lock-keyword-face ((,class (:bold ,class :foreground ,keyword))))
     `(font-lock-string-face ((,class (:foreground ,str))))
     `(font-lock-type-face ((,class (:foreground ,type ))))
     `(font-lock-variable-name-face ((,class (:foreground ,var))))
     `(font-lock-warning-face ((,class (:foreground ,warning :background ,bg2))))

     `(region ((,class (:background ,fg1 :foreground ,bg1))))
     `(highlight ((,class (:foreground ,fg3 :background ,bg3))))
     `(hl-line ((,class (:background  ,bg2))))

     ;; UI basic
     `(fringe ((,class (:background ,bg2 :foreground ,fg4))))
     `(vertical-border ((,class (:foreground ,fg3))))
     ;;`(cursor ((,class (:background ,bg3))))
     `(cursor ((,class (:background ,white :foreground ,black :inverse-video t))))
     `(show-paren-match-face ((,class (:background ,warning))))
     `(isearch ((,class (:bold t :foreground ,warning :background ,bg3))))

     ;; modeline
     `(mode-line ((,class (:box (:line-width 1 :color nil :style released-button) :bold t :foreground ,fg4 :background ,bg2))))
     `(mode-line-inactive ((,class (:box (:line-width 1 :color nil :style pressed-button) :foreground ,fg2 :background ,bg1))))
     `(mode-line-buffer-id ((,class (:bold t :foreground ,fg2 :background nil))))
     `(mode-line-highlight ((,class (:background ,bg4))))

     `(minibuffer-prompt ((,class (:bold t :foreground ,keyword))))
     `(default-italic ((,class (:italic t))))
     `(link ((,class (:foreground ,const :underline t))))

     ;; Org
     `(org-code ((,class (:foreground ,fg2))))
     `(org-hide ((,class (:foreground ,fg4))))
     `(org-level-1 ((,class (:bold t :foreground ,fg2 :height 1.1))))
     `(org-level-2 ((,class (:bold nil :foreground ,fg3))))
     `(org-level-3 ((,class (:bold t :foreground ,fg4))))
     `(org-level-4 ((,class (:bold nil :foreground ,bg4))))
     `(org-date ((,class (:underline t :foreground ,var) )))
     `(org-footnote  ((,class (:underline t :foreground ,fg4))))
     `(org-link ((,class (:underline t :foreground ,type ))))
     `(org-special-keyword ((,class (:foreground ,func))))
     `(org-verbatim ((,class (:foreground ,bg3 :underline t :slant italic))))
     `(org-block ((,class (:foreground ,fg3))))
     `(org-quote ((,class (:inherit org-block :slant italic))))
     `(org-verse ((,class (:inherit org-block :slant italic))))
     `(org-todo ((,class :foreground ,keyword :bold t)))
     `(org-done ((,class (:bold t :foreground ,bg4))))
     `(org-warning ((,class (:underline t :foreground ,warning))))
     `(org-agenda-structure ((,class (:weight bold :foreground ,fg3 :box (:color ,fg4) :background ,bg3))))
     `(org-agenda-date ((,class (:foreground ,var :height 1.1 ))))
     `(org-agenda-date-weekend ((,class (:weight normal :foreground ,fg4))))
     `(org-agenda-date-today ((,class (:weight bold :foreground ,keyword :height 1.4))))
     `(org-scheduled ((,class (:foreground ,type))))
     `(org-ellipsis ((,class (:foreground ,builtin))))
     `(org-verbatim ((,class (:foreground ,fg4))))
     `(org-document-info-keyword ((,class (:foreground ,func))))
     `(org-sexp-date ((,class (:foreground ,fg4))))

     ;; Latex
     `(font-latex-bold-face ((,class (:foreground ,type))))
     `(font-latex-italic-face ((,class (:foreground ,key3 :italic t))))
     `(font-latex-string-face ((,class (:foreground ,str))))
     `(font-latex-match-reference-keywords ((,class (:foreground ,const))))
     `(font-latex-match-variable-keywords ((,class (:foreground ,var))))

     ;; Ido
     `(ido-only-match ((,class (:foreground ,warning))))
     `(ido-first-match ((,class (:foreground ,keyword :bold t))))

     ;; Gnus / Mu4e
     `(gnus-header-content ((,class (:foreground ,keyword))))
     `(gnus-header-from ((,class (:foreground ,var))))
     `(gnus-header-name ((,class (:foreground ,type))))
     `(gnus-header-subject ((,class (:foreground ,func :bold t))))
     `(mu4e-view-url-number-face ((,class (:foreground ,type))))
     `(mu4e-cited-1-face ((,class (:foreground ,fg2))))
     `(mu4e-cited-7-face ((,class (:foreground ,fg3))))
     `(mu4e-header-marks-face ((,class (:foreground ,type))))

     `(ffap ((,class (:foreground ,fg4))))

     ;; Javascript
     `(js2-private-function-call ((,class (:foreground ,const))))
     `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,str))))
     `(js2-jsdoc-html-tag-name ((,class (:foreground ,key2))))
     `(js2-external-variable ((,class (:foreground ,const  ))))
     `(warning ((,class (:foreground ,warning))))
     `(ac-completion-face ((,class (:underline t :foreground ,keyword))))
     `(info-quoted-name ((,class (:foreground ,builtin))))
     `(info-string ((,class (:foreground ,str))))
     `(icompletep-determined ((,class :foreground ,builtin)))

     ;; Undo
     `(undo-tree-visualizer-current-face ((,class :foreground ,builtin)))
     `(undo-tree-visualizer-register-face ((,class :foreground ,keyword)))
     `(undo-tree-visualizer-default-face ((,class :foreground ,fg2)))
     `(undo-tree-visualizer-unmodified-face ((,class :foreground ,var)))
     `(undo-tree-visualizer-register-face ((,class :foreground ,type)))

     ;; Slime
     `(slime-repl-inputed-output-face ((,class (:foreground ,type))))

     `(trailing-whitespace ((,class :foreground nil :background ,warning)))

     ;; rainbow-delimiters
     `(rainbow-delimiters-depth-1-face ((,class :foreground ,fg1)))
     `(rainbow-delimiters-depth-2-face ((,class :foreground ,type)))
     `(rainbow-delimiters-depth-3-face ((,class :foreground ,var)))
     `(rainbow-delimiters-depth-4-face ((,class :foreground ,const)))
     `(rainbow-delimiters-depth-5-face ((,class :foreground ,keyword)))
     `(rainbow-delimiters-depth-6-face ((,class :foreground ,fg1)))
     `(rainbow-delimiters-depth-7-face ((,class :foreground ,type)))
     `(rainbow-delimiters-depth-8-face ((,class :foreground ,var)))
     `(rainbow-delimiters-unmatched-face ((,class :foreground ,warning)))

     ;; Magit
     `(magit-process-ok ((,class :foreground ,type)))
     `(magit-item-highlight ((,class :background ,bg3)))
     `(magit-section-heading        ((,class (:foreground ,keyword :weight bold))))
     `(magit-hunk-heading           ((,class (:background ,bg3))))
     `(magit-section-highlight      ((,class (:background ,bg2))))
     `(magit-hunk-heading-highlight ((,class (:background ,bg3))))
     `(magit-diff-context-highlight ((,class (:background ,bg3 :foreground ,fg3))))
     `(magit-diffstat-added   ((,class (:foreground ,type))))
     `(magit-diffstat-removed ((,class (:foreground ,var))))
     `(magit-process-ok ((,class (:foreground ,func :weight bold))))
     `(magit-process-ng ((,class (:foreground ,warning :weight bold))))
     `(magit-branch ((,class (:foreground ,const :weight bold))))
     `(magit-log-author ((,class (:foreground ,fg3))))
     `(magit-hash ((,class (:foreground ,fg2))))

     )))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(create-tron-theme)

(provide-theme 'tron-theme)
;;; tron-theme.el ends here
