(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
    (lambda (f) (lambda (x) (f ((n f) x)))))

; (add-1 zero)
(define one 
    (lambda (f) (lambda (x) (f x))))

; (add-1 one)
(define two
    (lambda (f) (lambda (x) (f (f x)))))

(exit)