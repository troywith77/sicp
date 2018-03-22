#lang racket
(define (abs x)
  (cond ((> x 0) x)
        ((< x 0) (- x))
        ((= x 0) 0)))

(define (abs2 x)
  (cond ((< x 0) (- x))
        (else x)))

(define (abs3 x)
  (if (< x 0)
      (- x) x))

(define (abs4 x)
  (cond ((or (> x 0) (= x 0)) x)
        ((< x 0) (- x))))

(define (abs4_ x)
  (cond ((or (> x 0) (= x 0)) x) (- x)))

(define (abs5 x)
  (cond ((not (< x 0)) x) (- x)))

(abs 0)
(abs2 -1)
(abs3 -2)
(abs4 100)
(abs4_ -200)
(abs5 -20)