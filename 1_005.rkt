;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1_005) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))

(define boat (overlay/xy (overlay/xy (overlay/xy (overlay/xy (triangle 16 "solid" "green") -8 20 (rectangle 32 10 "solid" "brown")) 32 20 (triangle/ass 90 10 10 "solid" "brown")) -10 20 (triangle/sas 10 90 10 "solid" "brown")) 25 10 (rectangle 2 10 "solid" "red")))

(define (draw-boat sc) (scale sc boat))
(draw-boat 2)