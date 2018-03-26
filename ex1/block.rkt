#lang racket
(define (sqrt x)
  (define (good-enough guess)
    (< (abs(- (* guess guess) x)) 1.0))
  (define (improve guess)
    (/ (+ guess (/ x guess)) 2))
  (define (sqrt-iter guess)
    (if (good-enough guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

(sqrt 25)
(sqrt 9)