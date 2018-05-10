(define (double x) (+ x x))
(define (halve x) (/ x 2))

(define (even? n)
    (= (remainder n 2) 0))

(define (mul a b)
    (if (= b 0)
        0
        (if (even? b)
            (mul (double a) (halve b))
            (+ a (mul (double a) (halve (- b 1)))))))

(display (mul 1 0)) (newline)
(display (mul 1 2)) (newline)
(display (mul 3 4)) (newline)
(display (mul 5 6)) (newline)
            
(display (mul 0 1)) (newline)
(display (mul 2 1)) (newline)
(display (mul 4 3)) (newline)
(display (mul 6 5)) (newline)
                
(display (mul 123 321)) (newline)
(display (mul 1024 4)) (newline)

(exit)