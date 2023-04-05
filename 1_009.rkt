;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1_009) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define in -3)
(define (ex9 x)
  (cond
    [(number? x) (abs x)]
    [(string? x) (string-length x)]
    [(image? x) (* (image-height x) (image-width x))]
    [(equal? #true x) 10]
    [(equal? #false x) 20]))


(ex9 in)
(ex9 "hello")
(ex9 (square 10 "solid" "red"))
(ex9 #true)
(ex9 #false)