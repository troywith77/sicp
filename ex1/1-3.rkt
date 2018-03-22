#lang racket
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 1 -3)

#; a加上b的绝对值.符号运算如果b大于0，返回正号，否则返回-负号将b转为正数