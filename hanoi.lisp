(defun printMove (n source dest)
  (format t
					"move ~S from ~S to ~S
"
					n source dest))
  
(defun move (n source dest by)
  (if (= n 1)
    (printMove n source dest)
    (progn (move (- n 1) source by dest)
     (printMove n source dest)
     (move (- n 1) by dest source))))

(move 3 1 3 2)
