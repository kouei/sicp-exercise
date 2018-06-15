(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))

(define (make-rat n d)
    (let ((g (gcd (abs n) (abs d))))
        (if (or (and (>= n 0) (> d 0)) (and (< n 0) (< d 0)))
            (cons (abs (/ n g)) (abs (/ d g)))
            (cons (- (abs (/ n g))) (abs (/ d g))))))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (print-rat x)
    (newline)
    (display (numer x))
    (display "/")
    (display (denom x)))

(print-rat (make-rat -6 -2))
(print-rat (make-rat 0 -2))
(print-rat (make-rat -6 2))

(exit)