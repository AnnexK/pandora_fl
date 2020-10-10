;; чтобы передать в my-all функцию по имени,
;; используйте #', как в примере
;; all от пустого списка равно t
(defun my-all (p x)
  (if (null x)
      t
      (if (not (funcall p (car x)))
	  nil
	  (my-all p (cdr x)))))

(defun my-p (x) (= x 3))

(pprint (my-all #'my-p '(3 3 3 3 3 3 3))) ; T
(pprint (my-all #'my-p '(3 3 3 2 3 3 3))) ; NIL
