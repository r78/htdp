;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1_059) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
(define EMPTY (empty-scene 90 30))
(define RED (place-image (circle 10 "outline" "green") 75 15 (place-image (circle 10 "outline" "yellow") 45 15 (place-image (circle 10 "solid" "red") 15 15 EMPTY))))
(define YELLOW (place-image (circle 10 "outline" "green") 75 15 (place-image (circle 10 "solid" "yellow") 45 15 (place-image (circle 10 "outline" "red") 15 15 EMPTY))))
(define GREEN (place-image (circle 10 "solid" "green") 75 15 (place-image (circle 10 "outline" "yellow") 45 15 (place-image (circle 10 "outline" "red") 15 15 EMPTY))))
; TrafficLight -> TrafficLight
; yields the next state, given current state cs
(define (tl-next cs)
  (cond
    [(string=? cs "red") "green"]
    [(string=? cs "yellow") "red"]
    [(string=? cs "green") "yellow"]))
 
; TrafficLight -> Image
; renders the current state cs as an image
(check-expect (tl-render "red") RED)
(check-expect (tl-render "yellow") YELLOW)
(define (tl-render current-state)
  (cond
    [(string=? current-state "red") RED]
    [(string=? current-state "yellow") YELLOW]
    [(string=? current-state "green") GREEN]))

; TrafficLight -> TrafficLight
; simulates a clock-based American traffic light
(define (traffic-light-simulation initial-state)
  (big-bang initial-state
    [to-draw tl-render]
    [on-tick tl-next 1]))