; a plus the absolute value of b
(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

(display "(a-plus-abs-b 1 2) -> ") (display (a-plus-abs-b 1 2)) (newline) (newline)
(display "(a-plus-abs-b 1 -2) -> ") (display (a-plus-abs-b 1 -2))
(exit)