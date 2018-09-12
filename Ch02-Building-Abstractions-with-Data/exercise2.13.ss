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

(define (make-center-percent c p)
    (make-interval (- c (* p c)) (+ c (* p c))))

(define (center i)
    (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (width i)
    (/ (- (upper-bound i) (lower-bound i)) 2))

(define (percent i)
    (/ (width i) (center i)))

(define interval1 (make-center-percent 10 0.004))
(define interval2 (make-center-percent 10 0.005))
(define interval3 (mul-interval interval1 interval2))


(display (percent interval1)) (newline)
(display (percent interval2)) (newline)

; the outputs of the following two lines are very close to each other
(display (percent interval3)) (newline)
(display (+ (percent interval1) (percent interval2))) (newline)

(exit)