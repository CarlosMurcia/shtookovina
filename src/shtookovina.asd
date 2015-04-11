;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp -*-
;;;
;;; ASDF file for Шτookωвiнα.
;;;
;;; Copyright © 2015 Mark Karpov
;;;
;;; Шτookωвiнα is free software: you can redistribute it and/or modify it
;;; under the terms of the GNU General Public License as published by the
;;; Free Software Foundation, either version 3 of the License, or (at your
;;; option) any later version.
;;;
;;; Шτookωвiнα is distributed in the hope that it will be useful, but
;;; WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
;;; Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License along
;;; with this program. If not, see <http://www.gnu.org/licenses/>.

(asdf:defsystem :shtookovina
  :version      "0.1.0"
  :description  "Шτookωвiнα -- program to help learn natural languages"
  :author       "Mark Karpov"
  :serial       t
  :license      "GNU GPL, version 3"
  :components   ((:file "package")
                 (:file "hooks")
                 (:file "language")
                 (:file "shtooka-db")
                 (:file "dictionary")
                 (:file "ui-language")
                 (:file "session")
                 (:file "ui-commands")
                 (:file "wizard")
                 (:file "tutorial")
                 (:file "default-hooks")
                 (:file "default-style")
                 (:file "main")
                 (:file "user-utils"))
  :depends-on   (#:alexandria
                 #:anaphora
                 #:babel
                 #:bordeaux-threads
                 #:cl-ansi-term
                 #:cl-fad
                 #:cl-readline
                 #:cl-store
                 #:mk-string-metrics
                 #:split-sequence
                 #:trivial-shell
                 #:trivial-update
                 #:unix-opts))
