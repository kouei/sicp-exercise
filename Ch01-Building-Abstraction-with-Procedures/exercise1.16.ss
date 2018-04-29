(define (square n) (* n n))

(define (even? n)
    (= (remainder n 2) 0))

(define (expt-iter b counter product)
    (if (= counter 0)
        product
        (if (even? counter)
            (expt-iter (square b) (/ counter 2) product)
            (expt-iter b (- counter 1) (* product b)))))

(define (expt b n)
    (expt-iter b n 1))


(display "exponention of 2:") (newline) (newline)
(display (expt 2 0)) (newline)
(display (expt 2 1)) (newline)
(display (expt 2 2)) (newline)
(display (expt 2 3)) (newline)
(display (expt 2 4)) (newline)
(display (expt 2 5)) (newline)
(display (expt 2 6)) (newline)
(display (expt 2 7)) (newline)
(display (expt 2 8)) (newline)
(display (expt 2 9)) (newline)
(display (expt 2 10)) (newline)

(newline) (newline)

(display "exponention of 3:") (newline) (newline)
(display (expt 3 0)) (newline)
(display (expt 3 1)) (newline)
(display (expt 3 2)) (newline)
(display (expt 3 3)) (newline)
(display (expt 3 4)) (newline)
(display (expt 3 5)) (newline)
(display (expt 3 6)) (newline)
(display (expt 3 7)) (newline)
(display (expt 3 8)) (newline)
(display (expt 3 9)) (newline)
(display (expt 3 10)) (newline)


(exit)