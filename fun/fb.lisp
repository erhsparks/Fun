(defun fb (max-num &optional (fb-dict '((2 "bang")
					(3 "fizz")
					(5 "buzz")
					(7 "boom"))))
  "Customizable Fizzbuzz because I love nonsense words!"

  (defvar to-print)
  
  (loop for num from 1 to max-num by 1 do
       (setf to-print "")

       (loop for pair in fb-dict do
	    (if (= 0 (mod num (first pair)))
		(setf to-print
		      (concatenate 'string to-print (second pair)))))

       (if (= 0 (length to-print))
	   (setf to-print num))

       (format t "~a~%" to-print))

  nil)




(defparameter *max* 21)
;;;
(format t "~a~%" (documentation 'fb 'function))
;;;
(format t "~%Default to ~a:~%" *max*)
(fb *max*)
;;;
(format t "~%With custom dictionary to ~a:~%" *max*)
(fb *max* '((2 "root") (3 "toot")))
