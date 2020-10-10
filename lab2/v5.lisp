(defun iter-count (p x c)
  (if (null x)
      c
      (let ((v (cond ((atom (car x)) (if (funcall p (car x)) 1 0))
		     (t (iter-count p (car x) 0)))))
	(iter-count p (cdr x) (+ c v)))))

(defun my-count (p x)
  (iter-count p x 0))

(defun my-p (x) (< x 5))

(pprint (my-count #'my-p '(3 2 4 1 17 45 0))) ; 5
(pprint (my-count #'my-p '(3 7 (3 3 1 (2 5 8)) (6 4) 2))) ;7
