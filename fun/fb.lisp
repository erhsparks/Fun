(defun fb (max-num)
  (setf fb-dict '((2 "bang")
		  (3 "fizz")
		  (5 "buzz")
		  (7 "boom")))
  
  (loop for num from 1 to max-num by 1 do
       (setf to-print "")

       (loop for pair in fb-dict do
	    (if (= 0 (mod num (first pair)))
		(setf to-print
		      (concatenate 'string to-print (second pair)))))

       (if (= 0 (length to-print))
	   (print (write-to-string num))
	   (print to-print)))

  nil)
