(defun iter-filter (p x current-list)
  (if (null x)
      current-list
      (let ((new-cur (if (funcall p (car x))
			 (cons (car x) current-list)
			 current-list)))
	(iter-filter p (cdr x) new-cur))))

(defun my-filter (p x)
  (iter-filter p (reverse x) nil))

(defun my-p (x) (< x 5))

(pprint (my-filter #'my-p '(3 2 3 5 5 7 4 1 0))) ; (3 2 3 4 1 0)
