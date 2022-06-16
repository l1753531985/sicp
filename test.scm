(define max a b
  (cond (> a b) (a)
		(= a b) (a)
		(< a b) (b)))
(display max 1 2)
