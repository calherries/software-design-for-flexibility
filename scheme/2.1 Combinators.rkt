#lang sicp

;; 2.1.1 Function combinators

(define (inc x) 
  (+ 1 x))

(define (dec x) 
  (- x 1))

(define ((compose f g) args)
  (f (apply g args)))

(define (compose f g)
  (define (the-composition . args)
    (f (apply g args)))
  the-composition)

(apply (lambda (x y) (+ x y)) '(1 2))

((compose inc +) 2 4)

(define ((iterate n) f)
  (if (= n 0)
    identity
    (compose f ((iterate (dec n)) f))))

(((iterate 6) inc) 2)

;; Ex 2.1
