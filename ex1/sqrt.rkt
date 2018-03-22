#lang racket
(define (abs x)
  (if (< x 0) (- x) x))

(define (sqrt x) (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good-enough guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (good-enough guess x)
  (< (abs (- (* guess guess) x)) 0.0001))

(define (improve guess x)
  (/ (+ guess (/ x guess)) 2))

(sqrt 25)
(sqrt 9)
(sqrt 2)