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

(display "(pascal-triangle-elem 4 2)") (display " -> ") (display (pascal-triangle-elem 4 2)) (newline) (newline)

(exit)