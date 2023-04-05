;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1_030) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
(define people-at-five-dollar 120)
(define default-price 5.0)
(define people-change 15)
(define price-change 0.1)
(define performance-fixed-cost 180)
(define performance-cost-per-attendee 0.04)
(define PRICE-SENSITIVITY (/ people-change price-change))

(define (attendees ticket-price)
  (- people-at-five-dollar (* (- ticket-price default-price) PRICE-SENSITIVITY)))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (* performance-cost-per-attendee (attendees ticket-price)))

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))



(profit 1)
(profit 2)
(profit 2.92)
(profit 3)
(profit 4)
(profit 5)

