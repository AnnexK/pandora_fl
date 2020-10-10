;; чтобы передать в my-some функцию по имени,
;; используйте #', как в примере
;; some от пустого списка равно nil
(defun my-some (p1 p2 x)
  (if (null x)
      nil
      (if (or (funcall p1 (car x)) (funcall p2 (car x)))
	  t
	  (my-some p1 p2 (cdr x)))))

(defun my-p (x) (= x 3))
(defun my-p2 (x) (< x 5))

(pprint (my-some #'my-p #'my-p2 '(30 31 12 4 3 -10 3))) ; T
(pprint (my-some #'my-p #'my-p2 '(6 6 7 66))) ; NIL
