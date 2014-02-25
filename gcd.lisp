; remainder on division of m by n
(defun remainder (m n)
	(- m (* (quotient m n) n)))

; quotient on division of m by n
(defun quotient (m n)
	(floor (/ m n)))

; greatest common devisor
(defun gcd (m n)
	(let ((r (remainder m n)))
		(if (= r 0)
			n
			(gcd n r))))

; modified gcd where we also compute
; a, b where
; am + bn = d
; where d is the greatest common divisor
; run (ab_gcd c d 1 0)
(defun ab_gcd (a b ap bp c d)
	(let ((r (remainder c d)) (q (quotient c d)))
		(if (= r 0)
			d
			(gcd (- ap (* q a)) (- bp -(* q b)) a b d r))))
