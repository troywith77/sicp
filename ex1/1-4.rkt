#lang racket
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

#; 我的看法
#; 应用序求值的话开始调用test去寻找procedure (p)
#; 的时候就会出错，正则序求值会把y先带入到test里面，x等于0程序返回0，没有求y的值，程序不会出错