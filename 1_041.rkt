;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1_041) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
(define WHEEL-RADIUS 5)
(define WHEEL
  (circle WHEEL-RADIUS "solid" "black"))
(define SPACE
  (rectangle (* WHEEL-RADIUS 2) WHEEL-RADIUS "solid" "white"))
(define BOTH-WHEELS
  (beside WHEEL SPACE WHEEL))

(define WIDTH 400)
(define HEIGHT 100)
(define BACKGROUND-EMPTY (empty-scene WIDTH HEIGHT))
(define tree
  (underlay/xy (circle 10 "solid" "green")
               9 15
               (rectangle 2 20 "solid" "brown")))
(define BACKGROUND (underlay/xy BACKGROUND-EMPTY 200 10 tree))
(define Y-CAR 40)

(define BODY
  (rectangle (* WHEEL-RADIUS 8) (* WHEEL-RADIUS 2) "solid" "red"))
(define TOP
  (rectangle (* WHEEL-RADIUS 4) (* WHEEL-RADIUS 2) "solid" "red"))
(define CAR
  (overlay/xy
  (overlay/xy
   (overlay
    BOTH-WHEELS
    SPACE)
   (- WHEEL-RADIUS) (- WHEEL-RADIUS)
   BODY)
   (* WHEEL-RADIUS 2) (* WHEEL-RADIUS -2)
   TOP
  ))

; WorldState -> WorldState 
; moves the car by 3 pixels for every clock tick
; examples: 
;   given: 20, expect 23
;   given: 78, expect 81
(check-expect (tock 20) 23)
(check-expect (tock 78) 81)
(define (tock cw)
  (+ cw 3))

; WorldState -> Image
; places the car into the BACKGROUND scene,
; according to the given world state 
 (define (render cw)
   (place-image CAR cw Y-CAR BACKGROUND))

; WorldState -> Boolean
; decides if the animation has to stop 
(define (end-front? ws)
  (> ws (- WIDTH (* WHEEL-RADIUS 4))))
(define (end? ws)
  (> ws (+ WIDTH (* WHEEL-RADIUS 4))))

 ; WorldState -> WorldState
; launches the program from some initial state 
(define (main ws)
   (big-bang ws
     [on-tick tock]
     [to-draw render]
     [stop-when end?]))

(main 0)