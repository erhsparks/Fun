;;; 3.1 : create a lambda expression that is equivalent to:
;; (let* ((x 6)
;;        (y (* x x)))
;;   (+ x y))				; returns 42

((lambda (x)
   (+ x ((lambda (y)
	   (* y y))
	 x)))
 6)
