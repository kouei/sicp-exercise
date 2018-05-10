(define (compose f g) (lambda (x) (f (g x))))

(define (repeated f n)
    (if (= n 1)
        f
        (compose (repeated f (- n 1)) f)))

(define (square x) (* x x))

(display ((repeated square 2) 5)) (newline)

(exit)