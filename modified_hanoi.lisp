(defun printMove (n from to)
  (format t
					"move ~S from ~S to ~S
"
					n from to))
  
(defun move (n from to by)
  (if (= n 1)
		(if (= by 2)
    	(progn
				(printMove n from by)
				(printMove n by to))
			(printMove n from to))
		(if (= by 2)
    	(progn
				(move (- n 1) from by to)
				(move (- n 1) by to from)
				(printMove n from by)
				(move (- n 1) to by from)
				(move (- n 1) by from to)
				(printMove n by to)
				(move (- n 1) from by to)
				(move (- n 1) by to from))
			(progn
				(move (- n 1) from by to)
				(printMove n from to)
				(move (- n 1) by from to)
				(move (- n 1) from to by)))))

(move 3 1 3 2)
