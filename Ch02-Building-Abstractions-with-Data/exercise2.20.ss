(define (same-parity x . y)
    (define (same-parity-interal key list1)
        (if (null? list1)
            list1
            (if (= (remainder key 2) (remainder (car list1) 2))
                (cons (car list1) (same-parity-interal key (cdr list1)))
                (same-parity-interal key (cdr list1)))))
    (cons x (same-parity-interal x y)))

(display (same-parity 1 2 3 4 5 6 7)) (newline)

(display (same-parity 2 3 4 5 6 7)) (newline)

(exit)