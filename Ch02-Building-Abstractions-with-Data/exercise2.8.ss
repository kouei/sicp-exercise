(define (make-interval a b) (cons a b))

(define (upper-bound i) (max (car i) (cdr i)))

(define (lower-bound i) (min (car i) (cdr i)))

(define (add-interval x y)
    (make-interval  (+ (lower-bound x) (lower-bound y))
                    (+ (upper-bound x) (upper-bound y))))

(define (sub-interval x y)
    (add-interval x
        (make-interval (- (upper-bound y)) (- (lower-bound y)))))

(define interval1 (make-interval 1 2))
(define interval2 (make-interval 3 4))

(display interval1) (newline)
(display interval2) (newline)
(display (add-interval interval1 interval2)) (newline)
(display (sub-interval interval1 interval2)) (newline)


(exit)