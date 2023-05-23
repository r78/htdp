;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1_035) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
; the input is a string and the output is its last character
; "hello world" => "d"
; "abc" => "c"

; string -> string
; it extracts the last character of a string
; (define (string-last s) l)

; "hello world" => "d"
; "abc" => "c"

; (define (string-last s) l)

(define (string-last s)
  (cond
    [(= 0 (string-length s)) s]
    [else (string-ith s (- (string-length s) 1))]))

(string-last "hello world")
(string-last "abc")