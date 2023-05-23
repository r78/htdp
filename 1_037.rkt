;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1_037) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
; the input is a string and the output is the same string minus its first character
; "hello world" => "ello world"
; "abc" => "bc"

; string-> string
; it returns a string minus its first character
; (define (string-rest s) rest)

; "hello world" => "ello world"
; "abc" => "bc"
; (define (string-rest s) rest)

(define (string-rest s)
  (substring s 1 (string-length s)))

(string-rest "hello world")
(string-rest "abc")