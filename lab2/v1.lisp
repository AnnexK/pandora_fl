(defmacro iter-compositor (s x)
  (if (null s)
       x
       `(iter-compositor ,(cdr s) (,(car s) ,x))))

(defmacro compositor (s x)
  `(iter-compositor ,(reverse s) ,x))

(defun f1 (x)
  (+ (* 3 x) 1))

(pprint (compositor (1+ sqrt f1) 5))

