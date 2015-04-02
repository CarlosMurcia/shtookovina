;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; -*-
;;;
;;; Wizard helps to set up parameters of Шτookωвiнα generating user
;;; configuration file by asking simple questions.
;;;
;;; Copyright (c) 2015 Mark Karpov
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

(in-package #:shtookovina)

(defun run-and-print (sexp stream)
  "Eval given s expression SEXP and print it to stream STREAM."
  (eval sexp)
  (print sexp stream))

(defun wizard-ui-lang (stream)
  "Ask user about his/her preferred user interface language and write
necessary code to the user's configuration file in order to set this
language on every start."
  (term:print (uie :wizard-ui-lang))
  (do (input)
      ((and input (use-ui-language input))
       (run-and-print `(use-ui-language ,input) stream))
    (when input
      (term:print (uie :wizard-ui-lang-bad)
                  :args input))
    (setf input (readline (format nil +session-prompt+ "?"))))
  (term:print (uie :wizard-ui-lang-ok)
              :args (get-ui-locale)))

(defun wizard-shtooka-dirs (stream)
  "Ask user about directory containing Shtooka audio databases downloaded
from Shtooka website, traverse supplied directory and add code that will
bind special variable *SHTOOKA-DIRS* on every start."
  (flet ((get-dir (path)
           (remove-if-not #'fad:directory-exists-p
                          (fad:list-directory path))))
    (term:print (uie :wizard-shtooka-dirs))
    (let (input)
      (do (non-virgin)
          (input (run-and-print `(setf *shtooka-dirs* ',input) stream))
        (when non-virgin
          (term:print (uie :wizard-shtooka-dirs-bad)
                      :args input))
        (setf input
              (get-dir (or (readline (format nil +session-prompt+ "?")) ""))
              non-virgin t))
      (term:table (cons (uie :wizard-shtooka-dirs-ok) input)
                  :border-style nil
                  :margin 2
                  :header-style :hdr
                  :cell-style :typ))))

(defun wizard (stream)
  "Generate user configuration file by asking simple questions. Contents of
the generated file should be sent to OUT (stream)."
  (wizard-ui-lang stream)
  (wizard-shtooka-dirs stream))
