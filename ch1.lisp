;; ch1 exercises

;; 1. Last name finder

(defparameter *suffixes*
  '(Sr Jr MD Esq PhD DDS I II III)
  "A not-particularly exhaustive list of titles which can appear at the end of a name.")

(defun last-name (name)
  "Return a last name from a name represented as a list."
  (if (member (first (last name)) *suffixes*)
      (last-name (butlast name))
      (first (last name))))

;; or could define a first-name fcn, reverse name and send it to first-name


;; 2. exponentiate

(defun power (base exponent)
  "Return result of base ** exponent."
  (cond
    ((< exponent 0)
     (/ 1 (power base (abs exponent))))
    ((= exponent 0) 1)
    ((evenp exponent)
     (setf to-the-n/2 (power base (/ exponent 2)))
     (* to-the-n/2 to-the-n/2))
    ((oddp exponent) ;this case could also just be t but I prefer it more explicit
     (* base (power base (decf exponent))))))


;; 3. number of atoms in an expression

(defun count-atoms (expression)
  "Return number of atoms in expression. Nil or () count zero times."
  (cond
    ((null expression) 0)
    ((atom expression) 1)
    (t (+ (count-atoms (first expression))
	  (count-atoms (rest expression))))))

;; 4. number of times an expression appears in another expression

(defun count-anywhere (target expression)
  "Return number of times target appears in expression."
  (cond
    ((null expression) 0)
    ((atom expression)
     (if (eql target expression) 1 0))
    (t (+ (count-anywhere target (first expression))
	  (count-anywhere target (rest expression))))))

;; 5. dot product of two sequences of numbers represented by two lists

(defun dot-product (a b)
  "Return dot product of two vectors represented as lists of numbers."
  (apply #'+ (mapcar #'* a b)))


;; other solutions to the dot product given:
(defun dot-product2 (a b)
  (if (or (null a) (null b))
      0
      (+ (* (first a) (first b))
	 (dot-product (rest a) (rest b)))))

(defun dot-product3 (a b)
  (let ((sum 0))
    (dotimes (i (length a))
      (incf sum (* (elt a i) (elt b i))))
    sum))
