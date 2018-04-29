(define (pascal-triangle-elem row col)
    (cond ((= col 1) 1)
          ((= col row) 1)
          (else (+ (pascal-triangle-elem (- row 1) (- col 1)) (pascal-triangle-elem (- row 1) col)))))

(display "    1") (newline)
(display "   1 1") (newline)
(display "  1 2 1") (newline)
(display " 1 3 3 1") (newline)
(display "1 4 6 4 1") (newline)

(newline) (newline)

(display "(pascal-triangle-elem 2 2)") (display " -> ") (display (pascal-triangle-elem 2 2)) (newline) (newline)
(display "(pascal-triangle-elem 3 2)") (display " -> ") (display (pascal-triangle-elem 3 2)) (newline) (newline)
(display "(pascal-triangle-elem 4 3)") (display " -> ") (display (pascal-triangle-elem 4 3)) (newline) (newline)
(display "(pascal-triangle-elem 5 4)") (display " -> ") (display (pascal-triangle-elem 5 4)) (newline) (newline)
(exit)