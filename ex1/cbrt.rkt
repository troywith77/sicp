#lang racket
(define (abs x)
  (if (< x 0) (- x) x))

(define (cbrt x) (cbrt-iter 1.0 x))

(define (cbrt-iter guess x)
  (if (good-enough guess x)
      guess
      (cbrt-iter (improve guess x) x)))

(define (good-enough guess x)
  (< (abs (- (* guess guess guess) x)) 0.0001))

(define (improve y x)
  (/ (+ (/ x (* y y)) (* y 2)) 3))

(cbrt 27)