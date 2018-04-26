(define (A x y)
    (cond ((= y 0) 0)
          ((= x 0) (* 2 y))
          ((= y 1) 2)
          (else (A (- x 1)
                   (A x (- y 1))))))

(display "(A 1 10)") (display " -> ") (display (A 1 10)) (newline) (newline)
(display "(A 2 4)") (display " -> ") (display (A 2 4)) (newline) (newline)
(display "(A 3 3)") (display " -> ") (display (A 3 3)) (newline) (newline)


(display
    "(define (f n) (A 0 n)) -> 2n") (newline) (newline)

(display
    "(define (g n) (A 1 n)) -> 2^n") (newline) (newline)

(display
    "(define (h n) (A 2 n)) -> 2^(2^(2^...2)))))...) the total number of 2 is n") (newline) (newline)


(exit)