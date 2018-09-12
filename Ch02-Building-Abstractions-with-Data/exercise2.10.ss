(define (make-interval a b) (cons a b))

(define (upper-bound i) (max (car i) (cdr i)))

(define (lower-bound i) (min (car i) (cdr i)))

(define (add-interval x y)
    (make-interval  (+ (lower-bound x) (lower-bound y))
                    (+ (upper-bound x) (upper-bound y))))

(define (sub-interval x y)
    (add-interval x
        (make-interval (- (upper-bound y)) (- (lower-bound y)))))

(define (mul-interval x y)
(let   ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))

        (make-interval (min p1 p2 p3 p4)
                        (max p1 p2 p3 p4))))

(define (div-interval x y)
    (if (and (<= (lower-bound y) 0)  (<= 0 (upper-bound y)))
        ((display "div-interval: Error! Potential dividing by zero.") (newline))
        (mul-interval x
            (make-interval  (/ 1.0 (upper-bound y))
                            (/ 1.0 (lower-bound y))))))

(define interval1 (make-interval 1 2))
(define interval2 (make-interval 4 7))
(define interval3 (make-interval -4 7))

(display (div-interval interval1 interval2)) (newline)
(display (div-interval interval1 interval3)) (newline)

(exit)