(define (make-interval a b) (cons a b))

(define (upper-bound i) (max (car i) (cdr i)))

(define (lower-bound i) (min (car i) (cdr i)))


(define (make-center-percent c p)
    (make-interval (- c (* p c)) (+ c (* p c))))

(define (center i)
    (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (width i)
    (/ (- (upper-bound i) (lower-bound i)) 2))

(define (percent i)
    (/ (width i) (center i)))

(define interval (make-center-percent 10 0.3))

(display interval) (newline)
(display (width interval)) (newline)
(display (center interval)) (newline)
(display (percent interval)) (newline)
    
(exit)