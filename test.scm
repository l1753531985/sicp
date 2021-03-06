(define (square x) (* x x))
(define (sum-of-squares x y)
  (+ (square x) (square y)))
(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))
(define (abs x)
  (cond ((> x 0) x)
		((= x 0) 0)
		((< x 0) (- x))))
;(display (abs (- 3)))
(define (>= x y)
  (or (> x y) (= x y)))
;(display (>= 3 2))
(define a 3)
(define b (+ a 1))
;(display (if (and (> b a) (< b (* a b)))
;	b
;	a))
;(display (cond ((= a 4) 6)
;	  ((= b 4) (+ 6 7 a))
;	  (else 25)))
;(display (+ 2 (if (> b a) b a)))
;(display (* (cond ((> a b) a) 
;		 ((< a b) b)
;		 (else (- 1)))
;         (+ a 1)))
;(display (/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
;			(* 3 (- 6 2) (- 2 7))))
;(define (>= x y)
;  (or (> x y) (= x y)))
;(define (max x y)
;  (cond ((>= x y) x)
;		((< x y) y)))
;(define (a-plus-abs-b a b)
;  ((if (> b 0) + -) a b))
;(define (p) (p))
;(define (test x y)
;  if ((= x 0)
;	  0
;	  y))
(define (sqrt-iter guess x)
  (if (good_enough? guess x)
	  guess
	  (sqrt-iter (imporve guess x) x)))
(define (imporve guess x) 
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
(define (good_enough? guess x)
  (< (abs (- (square guess) x)) 0.0001))
(define (sqrt x)
  (sqrt-iter 1.0 x))
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
		(else else-clause)))
;(define (sqrt-iter guess x)
;  (new-if (good_enough? guess x)
;		  guess
;		  (sqrt-iter (imporve guess x) x)))
