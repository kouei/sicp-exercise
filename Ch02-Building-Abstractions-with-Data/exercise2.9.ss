(define (make-interval a b) (cons a b))

(define (upper-bound i) (max (car i) (cdr i)))

(define (lower-bound i) (min (car i) (cdr i)))

(define (add-interval x y)
    (make-interval  (+ (lower-bound x) (lower-bound y))
                    (+ (upper-bound x) (upper-bound y))))

(define (sub-interval x y)
    (add-interval x
        (make-interval (- (upper-bound y)) (- (lower-bound y)))))

(define (width i) (/ (- (upper-bound i) (lower-bound i)) 2.0))

(define interval1 (make-interval 1 2))
(define interval2 (make-interval 4 7))

(display (width interval1)) (newline)
(display (width interval2)) (newline)
(display (width (add-interval interval1 interval2))) (newline)

; [0, 10] * [0, 2] = [0, 20]   (width = 10)
; [-5, 5] * [-1, 1] = [-5, 5]   (width = 5)
; please refer to http://community.schemewiki.org/?sicp-ex-2.9

(exit)