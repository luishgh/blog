#!/usr/bin/env -S emacs -Q --script

;; Load publishing system
(require 'ox-publish)

;; Publishing project
(setq org-publish-project-alist
      (list
       (list "my-blog"
             :recursive t
             :base-directory "./org"
             :publishing-directory "/ssh:luis.higino@login.dcc.ufmg.br:~/public_html/"
             :publishing-function 'org-html-publish-to-html
             :language "pt_BR"
             :section-numbers nil
             :time-stamp-file nil
             :with-creator t
             :auto-sitemap t
             :sitemap-title "Mapa")))

;; Customize HTML output
(setq org-html-validation-link nil ;; Remove validation link
      org-html-head-include-default-style nil ;; Use own stylesheet
      org-html-head "<link rel=\"stylesheet\" href=\"https://cdn.simplecss.org/simple.css\" />") ;; Use Simple CSS

;; Generate site output
(org-publish-all t)
