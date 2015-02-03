;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; -*-
;;;
;;; This is the place where we put it all together.
;;;
;;; Copyright (c) 2015 Mark Karpov
;;;
;;; Shtookovina is free software: you can redistribute it and/or modify it
;;; under the terms of the GNU General Public License as published by the
;;; Free Software Foundation, either version 3 of the License, or (at your
;;; option) any later version.
;;;
;;; Shtookovina is distributed in the hope that it will be useful, but
;;; WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
;;; Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License along
;;; with this program. If not, see <http://www.gnu.org/licenses/>.

(in-package #:shtookovina)

;;; Testing

(load "/home/mark/projects/programs/shtookovina/git/langs/en.lisp")
(load "/home/mark/projects/programs/shtookovina/git/ui-langs/en.lisp")

(setf *shtooka-dirs*
      '("/home/mark/Downloads/eng-balm-emmanuel/"
        "/home/mark/Downloads/eng-balm-judith/"
        "/home/mark/Downloads/eng-balm-judith-proverbs/"
        "/home/mark/Downloads/eng-balm-verbs/"
        "/home/mark/Downloads/eng-wcp-us/"
        "/home/mark/Downloads/eng-wims-mary/"
        "/home/mark/Downloads/eng-wims-mary-conversation/"
        "/home/mark/Downloads/eng-wims-mary-num/"))

;; (setf *shtooka-dirs*
;;       '("/home/mark/Downloads/fra-balm-conjug/"
;;         "/home/mark/Downloads/fra-balm-flora-expr/"
;;         "/home/mark/Downloads/fra-balm-flora-num/"
;;         "/home/mark/Downloads/fra-balm-frank/"
;;         "/home/mark/Downlaods/fra-balm-tnitot/"
;;         "/home/mark/Downloads/fra-balm-voc/"
;;         "/home/mark/Downloads/fra-nallet-camille/"
;;         "/home/mark/Downloads/fra-nallet-caroline/"
;;         "/home/mark/Downlaods/fra-nallet-christian/"
;;         "/home/mark/Downloads/fra-nallet-denise/"
;;         "/home/mark/Downloads/fra-nallet-marie/"
;;         "/home/mark/Downloads/fra-nallet-nicolas/"
;;         "/home/mark/Downloads/fra-nallet-odile/"
;;         "/home/mark/Downloads/fra-wims-lettres fra-wims-voc/"))

(define-hook :audio-query (x)
  (format nil "flac -cd ~a | aplay" x))

(define-command foo ((a string) (b integer) &optional (c keyword))
    (:foo-short-desc :foo-long-desc)
  (if c
      (list a b c)
      (list a b)))

(define-command fob ((a string) (b integer) &optional (c keyword))
    (:foo-short-desc :foo-long-desc)
  (if c
      (list a b c)
      (list a b)))

(add-ui-elements
 :foo-long-desc
 "[foo](cmd) command does nothing. It takes, however, up to three arguments:
[A](arg), [B](arg), and [C](arg)."
 :foo-short-desc
 "Does nothing.")

(define-hook :external-dict (word)
  ;; just a test, we probably need something like URL-HEXIFY-STRING in final
  ;; version of the program... also, to support one init file for many
  ;; languages we need some way to easily determine target and interface
  ;; languages, probably code them as keywords... currently we only cat
  ;; returns their names as strings, it may work too
  (format nil "icecat -new-tab \"www.wordreference/enen/~a\"" word))
