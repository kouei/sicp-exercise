(define (square n) (display "square ") (display n) (newline) (* n n))

(define (even? n)
    (= (remainder n 2) 0))

(define (expt-iter b counter product)
    (if (= counter 0)
        product
        (if (even? counter)
            (expt-iter (square b) (/ counter 2) product)
            (expt-iter b (- counter 1) (* product b)))))

(define (fast-expt b n)
    (expt-iter b n 1))

(define (expmod base exp m)
    (cond ((= exp 0) 1)
          ((even? exp)
          (remainder (square (expmod base (/ exp 2) m)) m))
          (else (remainder (* base (expmod base (- exp 1) m)) m))))


(define (new-expmod base exp m)
    (remainder (fast-expt base exp) m))

(display "(expmod 5 101 101)") (newline)
(expmod 5 101 101)

(newline) (newline)

(display "(new-expmod 5 101 101)") (newline)
(new-expmod 5 101 101)

(exit)