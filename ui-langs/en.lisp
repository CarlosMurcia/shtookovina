;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; -*-
;;;
;;; English translation of user interface.
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

;; This is English translation of the user interface. Other translations can
;; be easily written by substitution of corresponding English words and
;; phrases. To apply some style (see documentation of CL-ANSI-TERM library)
;; enclose text in brackets, and immediately after closing bracket ']', put
;; name of desired style in parenthesis. For example: [my text](cmd).

(set-ui-language
 "English"
 :arg-parser-failed
 "[Cannot](err) parse [\"~\"](inc) as [~](typ)"
 :ask-save-dict
 "Do you want to save all changes of your dictionary made in this session?"
 :aspect
 "Aspect"
 :aspect-listening
 "Listening"
 :aspect-translation
 "Translation"
 :aspect-writing
 "Writing"
 :available-commands
 "Available Commands:"
 :command
 "Command"
 :command-invalid-call
 "[Cannot](err) call [~](cmd) with these arguments"
 :correct
 "[Correct answer!](crc)"
 :cmd-add-l
 "Add new dictionary item of type [TYPE](arg) (see [lexemes](cmd)). The item
will have default form [DEFAULT-FORM](arg). If the item already exists in
the dictionary, this command has no effect."
 :cmd-add-s
 "Add new item to the dicitonary."
 :cmd-audio-l
 "Search Shtooka databases, pick and play some audio file that's relevant to
given [TEXT](arg)."
 :cmd-audio-s
 "Play audio that's relevant to given text."
 :cmd-clear-l
 "Clear the dictionary deleting all its items."
 :cmd-clear-s
 "Clear the dictionary."
 :cmd-conj-l
 "Show conjugation of given [VERB](arg), possibly with help of an external
program."
 :cmd-conj-s
 "Show conjugation of given verb."
 :cmd-const-l
 "Word constructor exercise. You are given translation and letters of the
word, but they are shuffled. You need to enter the word correctly, letter by
letter. Argument [PROGRESS](arg), denotes how many percents of progress you
would like to make."
 :cmd-const-s
 "Word constructor exercise."
 :cmd-crosswd-l
 "Crossword exercise. This crossword doesn't show you visual representation
of the crossing words. It doesn't really matter if such representation can
be drawn or not. You cycle through various words and try to enter them
correctly by their description. If you don't know a word, you can skip
it. If you enter a word correctly, some letters of other words that coincide
with the letters of the entered word are revealed. This exercise picks
[WORDS](arg) words from your dictionary."
 :cmd-crosswd-s
 "Crossword exercise."
 :cmd-dict-l
 "Print information about the dictionary. If [PREFIX](arg) argument is
given, show detailed information regarding every dictionary item which
default form (zero-indexed) starts with given prefix. Otherwise print
general information about the entire dictionary."
 :cmd-dict-s
 "Print information about the dictionary."
 :cmd-eform-l
 "Edit dictionary item changing one of its forms. Target item is identified
by [TYPE](arg) and [DEFAULT-FORM](arg). Selected form at [FORM-INDEX](arg)
will be replaced with [NEW-FORM](arg). To get information about form indexes
try [forms](cmd) command."
 :cmd-eform-s
 "Change form of specified dictionary item."
 :cmd-etrans-l
 "Edit dictionary item changing its translation. Target item is identified
by [TYPE](arg) and [DEFAULT-FORM](arg)."
 :cmd-etrans-s
 "Change translation of dictionary item."
 :cmd-forms-l
 "Print table with indexed forms of given [LEXEME](arg). You can get list of
all defined lexemes with [lexemes](cmd) command."
 :cmd-forms-s
 "Print forms of given lexeme."
 :cmd-help-l
 "When invoked without arguments, it prints information about all available
commands. When [COMMAND](arg) argument given, it prints detailed description
of the specific command."
 :cmd-help-s
 "Print info about commands."
 :cmd-history-l
 "Print current session history. Argument [ITEMS](arg) denotes how many
history items should be printed."
 :cmd-history-s
 "Print history."
 :cmd-lang-l
 "The [lang](cmd) command prints name of the language that you're learning
in the current Шτookωвiнα session. It's useful for troubleshooting."
 :cmd-lang-s
 "Print name of the language you're learning."
 :cmd-learned-l
 "Mark specified dictionary item as learned. The dictionary item is
identified by its [TYPE](arg) and [DEFAULT-FORM](arg)."
 :cmd-learned-s
 "Mark specified item as learned."
 :cmd-lexemes-l
 "Print a table of all lexemes defined for actual language."
 :cmd-lexemes-s
 "Print all lexemes."
 :cmd-listen-l
 "Listening comprehension exercise. Some relevant audio is played to you,
you should recognize dictionary item and enter it correctly. Argument
[PROGRESS](arg) denotes how many percents of progress you would like to
make."
 :cmd-listen-s
 "Listening comprehension exercise."
 :cmd-query-l
 "Show information about (and translation of) given [WORD](arg)."
 :cmd-query-s
 "Show translation of given word."
 :cmd-quit-l
 "Quit the Шτookωвiнα REPL."
 :cmd-quit-s
 "Quit the Шτookωвiнα REPL."
 :cmd-rem-l
 "Remove specified dictionary item. The dictionary item is identified by its
[TYPE](arg) and [DEFAULT-FORM](arg)."
 :cmd-rem-s
 "Remove specified dictionary item."
 :cmd-reset-l
 "Reset progress of specified dictionary item. The dictionary item is
identified by its [TYPE](arg) and [DEFAULT-FORM](arg)."
 :cmd-reset-s
 "Reset progress of specified dictionary item."
 :cmd-train-l
 "Comprehensive training. It includes all sorts of exercises: translation,
writing, and audition in right order. It's recommended to use this command
for all training."
 :cmd-train-s
 "Comprehensive training."
 :cmd-trans-l
 "This is translation exercise. In this exercise you are given a
word (either in interface language or target language) and four possible
translations. You should select correct one. Argument [PROGRESS](arg)
denotes how many percents of progress you would like to make."
 :cmd-trans-s
 "Translation exercise."
 :cmd-ui-lang-l
 "Print name of user interface language."
 :cmd-ui-lang-s
 "Print name of user interface language."
 :current-language
 "You are learning [~](arg)"
 :current-ui-language
 "User interface is in [~](arg)"
 :default-form
 "default form"
 :description
 "Description"
 :dict-cleared
 "The dictionary is cleared, [~](arg) item(s) removed"
 :dict-entry-header
 "[~](arg), [~](typ) - ~ [[~](arg) %]"
 :dict-general
 "[~](arg) word(s) in the dictionary, overall progress [~](arg) %"
 :dict-form-changed
 "Changed [~](typ) [~](arg) ~"
 :dict-item-added
 "[~](typ) [~](arg) added to your dictionary"
 :dict-item-already-exists
 "[Cannot](err) add [~](typ) [~](arg), it's already present in your dictionary"
 :dict-item-learned
 "[~](typ) [~](arg) has been marked as fully learned"
 :dict-item-removed
 "[~](typ) [~](arg) removed from your dictionary"
 :dict-item-reset
 "progress of [~](typ) [~](arg) was reset"
 :dict-no-such-item
 "[Cannot](err) find [~](typ) [~](arg), no such item"
 :dict-trans-changed
 "Changed translation of [~](typ) [~](arg)"
 :exercise-constructor
 "Enter the word letter by letter (hint: you are given all letters of the
word in the prompt, but they are shuffled):"
 :exercise-crossword
 "Cycle through various words and try to enter them correctly by their
description. If you don't know a word, you can skip it (press [Enter](typ)
entering empty line). If you enter a word correctly, some letters of other
words that coincide with the letters of the entered word are revealed. The
exercises continues until you enter all words correctly."
 :exercise-listening
 "Listen to some recordings, recognize and enter target word (press
[Ctrl-o](typ) to hear audio recording again):"
 :exercise-translation
 "Select correct translation of given dictionary item:"
 :failed-audio-query
 "[Cannot](err) find any relevant audio for [\"~\"](arg)"
 :help-command-reminder
 "For information about the command use: [help](cmd) [~](arg)"
 :incorrect
 "[Incorrect answer.](inc)"
 :index
 "Index"
 :lexemes
 "Defined Lexemes"
 :lexeme-forms
 "Lexeme Forms"
 :name
 "Name"
 :no-such-lexeme
 "[Cannot](err) find definition of the [~](arg) lexeme"
 :not-enough-forms
 "There is [not enough](err) words in the dictionary"
 :possible-corrections
 "Possible corrections for [~](cmd):"
 :progress
 "Progress"
 :proposed-audio
 "Proposed audio: [\"~\"](arg)"
 :uncorrectable-command
 "[Cannot](err) correct command [~](cmd)"
 :unknown-form-query
 "[~](typ) [~](arg) ~ is [unknown](err), fill it out to continue:"
 :value
 "Value"
 :where
 "where "
 :wizard-shtooka-dirs
 "Шτookωвiнα needs to know where Shtooka audio bases are located in your
system. You can download audio recordings for your language from official
site of Shtooka project [<http://download.shtooka.net/>](typ). Untar them
and put into one directory, then enter path to the directory here:"
 :wizard-shtooka-dirs-bad
 "Directory [\"~\"](arg) does not exist or it's empty, try again."
 :wizard-shtooka-dirs-ok
 "Added directories"
 :wizard-ui-lang
 "Please select language that will be used for user interface. Enter two
letters, for example: [\"en\"](arg) for English."
 :wizard-ui-lang-bad
 "This your input [\"~\"](arg) doesn't designate any defined language, try
again."
 :wizard-ui-lang-ok
 "OK, using [~](arg) for user interface.")
