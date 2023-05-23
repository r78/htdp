;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1_047) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
(define WIDTH 100)
(define HEIGHT 20)
(define Y 100)
(define X 100)
(define BACKGROUND (empty-scene WIDTH HEIGHT))

(define (tock h)
  (max 0 (- h 0.1)))

(define (render h)
   (place-image/align (rectangle h HEIGHT "solid" "red") 0 0 "left" "top" BACKGROUND))


(define (decrease? h ke)
  (cond
    [(key=? ke "down") (max 0 (- h 1/5))]
    [(key=? ke "up") (min 100 (+ h 1/3))]
    [else h]))


  
(define (gauge-prog h)
  (big-bang h
     [on-tick tock]
     [on-key decrease?]
     [to-draw render]))
