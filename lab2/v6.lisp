(defun iter-drop (l n p cur)
  (if (or (= n 0) (null l))
      (append (reverse cur) l)
      (if (funcall p (car l))
	  (iter-drop (cdr l) (1- n) p cur)
	  (iter-drop (cdr l) n p (cons (car l) cur)))))

(defun drop (l n p)
  (iter-drop l n p nil))

(defun my-p (x) (< x 5))

(pprint (drop '(3 4 5 4 7 1 2) 4 #'my-p)) ; (5 7 2)
