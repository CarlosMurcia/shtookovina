;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; -*-
;;;
;;; Definition of French language for Шτookωвiнα.
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

(set-language
 "français"
 '((:adj "adjectif"
    :form-aspects
    (("m" "f")
     ("" " pl")))
   (:adv "adverbe")
   (:art "article")
   (:cnj "conjonction")
   (:int "interjection")
   (:nom "nom"
    :form-aspects
    (("m" "f")))
   (:phr "phrase")
   (:prp "préposition")
   (:prn "pronom")
   (:vrb "verbe"
    :ss-forms
    ("Infinitif" "Participe Passe" "Gérondif")
    :form-aspects
    (("Present de l'indicatif"
      "Futur simple"
      "Imparfait"
      "Present du subjonctif")
     (" (je)" " (tu)" " (il)" " (nous)" " (vous)" " (ils)")))))
