#lang racket
(define (factorial n)
  (define (factorial-iter result count max-count)
    (if (> count max-count)
        result
        (factorial-iter (* result count) (+ count 1) n)))
  (factorial-iter 1 1 n))

(factorial 5)