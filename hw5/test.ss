#lang racket
(define (product x y) (* x y))
(product 1 2)
(quote (1 2 3))
'(+ 3 4)
(car '(a b c))
(cdr '(a b c))
(cons 'a '(b c))
(cons 'a 'b)
(list 'a '(b c))
(list 'a 'b 'c)
(list 'a)
(list)
(let ((x 2)) (+ x 3))
(let ((x 2) (y 3)) (+ x y))
(let ([list1 '(a b c)] [list2 '(d e f)])
	(cons (cons (car list1)
		(car list2))
	(cons (car (cdr list1))
		(car (cdr list2)))))
(let ([a 4] [b -3])
  (let ([a-squared (* a a)]
        [b-squared (* b b)])
    (+ a-squared b-squared)))
((lambda (x) (+ x x)) (* 3 4))
(let ([double (lambda (x) (+ x x))])
	(list (double(* 3 4))
		(double (/ 99 11))
		(double (- 2 7))))
(let ([double-any (lambda (f x) (f x x))])
  (list (double-any + 13)
        (double-any cons 'a)))
(define sandwich "peanut-butter-and-jelly")
sandwich
(define abs
	(lambda (n)
		(if
			(< n 0)
			(- 0 n)
			n
		)
	)
)
(abs 4)
(abs -4)
(define abs2
	(lambda (n)
		(cond
			[(< n 0) (- 0 n)]
			[else n]
		)
	)
)
(abs2 4)
(abs2 -4)
(define abs-all
  (lambda (ls)
    (if (null? ls)
        '()
        (cons (abs (car ls))
              (abs-all (cdr ls))))))
(abs-all '(1 -2 3 -4 5 -6))
(not #t)
(or #f #t)
(and #f #t)
(null? '())
(null? 'hi)
(boolean? #f)
(eqv? 'a 'a)
(not (eqv? 'a 'a))
(define length
	(lambda (ls)
		(if (null? ls)
			0
			(+ (length (cdr ls)) 1))))
(length '())
(length '(a))
