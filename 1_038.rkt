;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1_038) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
; the input is a string and the output is the same string minus its last character
; "hello world" => "hello worl"
; "abc" => "ab"

; string-> string
; it returns a string minus its last character
; (define (string-remove-last s) r)

; "hello world" => "hello worl"
; "abc" => "ab"
; (define (string-remove-last s) r)

(define (string-remove-last s)
  (substring s 0 (- (string-length s) 1)))

(string-remove-last "hello world")
(string-remove-last "abc")