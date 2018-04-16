(display "10") (display " -> ") (display 10) (newline) (newline)

(display "(+ 5 3 4)") (display " -> ") (display (+ 5 3 4)) (newline) (newline)

(display "(- 9 1)") (display " -> ") (display (- 9 1)) (newline) (newline)

(display "(/ 6 2)") (display " -> ") (display (/ 6 2)) (newline) (newline)

(display "(+ (* 2 4) (- 4 6))") (display " -> ") (display  (+ (* 2 4) (- 4 6))) (newline) (newline)

(define a 3)
(display "(define a 3)") (display " -> ") (display a) (newline) (newline)

(define b (+ a 1))
(display "(define b (+ a 1))") (display " -> ") (display b) (newline) (newline)

(display "(+ a b (* a b))") (display " -> ") (display (+ a b (* a b))) (newline) (newline)

(display "(= a b)") (display " -> ") (display (= a b)) (newline) (newline)

(display "(if (and (> b a) (< b (* a b)))") (newline) (newline)
(display "    a") (newline) (newline)
(display "    b)) -> ")
(display 
    (if (and (> b a) (< b (* a b))) 
        b 
        a))
(newline) (newline)

(display "(cond ((= a 4) 6)") (newline)
(display "      ((= b 4) (+ 6 7 a))") (newline)
(display "      (else 25)) -> ")
(display
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25)))
(newline) (newline)

(display "(+ 2 (if (> b a) b a))") (display " -> ") (display (+ 2 (if (> b a) b a))) (newline) (newline)

(display "(* (cond ((> a b) a)") (newline)
(display "         ((< a b) b)") (newline)
(display "         (else -1))") (newline)
(display "   (+ a 1))) -> ")
(display
        (* (cond ((> a b) a)
                 ((< a b) b)
                 (else -1))
           (+ a 1)))

(exit)
