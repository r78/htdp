;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1_036) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
; the input is an image and the output is the number of pixels it has
; (square 10 "solid" "red") => 100

; image -> number
; it computes the number of pixels in an image
; (define (image-area img) area)

; (square 10 "solid" "red") => 100

; (define (image-area img) area)

(define (image-area img)
  (* (image-height img)(image-width img)))


(image-area (square 10 "solid" "red"))