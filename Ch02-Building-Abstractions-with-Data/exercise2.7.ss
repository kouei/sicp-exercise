(define (make-interval a b) (cons a b))

(define (upper-bound i) (max (car i) (cdr i)))

(define (lower-bound i) (min (car i) (cdr i)))

(define interval (make-interval 2 1))
(display interval) (newline)
(display (lower-bound interval)) (newline)
(display (upper-bound interval)) (newline)

(exit)