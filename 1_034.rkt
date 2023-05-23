;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1_034) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
; the input (a string) and the output (first character of the string)
; "hello world" => "h"
; "abc" => "a"

; string -> string
; it extracts the first character of a string
; (define (string-first s) f)

; "hello world" => "h"
; "abc" => "a"

; (define (string-first s) f)

(define (string-first s)
  (substring s 0 1))

(string-first "hello world")
(string-first "abc")