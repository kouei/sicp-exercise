(define (make-point x y) (cons x y))

(define (x-point p) (car p))

(define (y-point p) (cdr p))

(define (print-point p)
    (newline)
    (display "(")
    (display (x-point p))
    (display ",")
    (display (y-point p))
    (display ")"))

(define (make-segment start end) (cons start end))

(define (start-segment s) (car s))

(define (end-segment s) (cdr s))

(define (average x y) (/ (+ x y) 2))

(define (midpoint-segment s)
    (let ((sx (x-point (start-segment s)))
         (sy (y-point (start-segment s)))
         (ex (x-point (end-segment s)))
         (ey (y-point (end-segment s))))

         (make-point (average sx ex) (average sy ey))))


(define sp (make-point 2 3))
(define ep (make-point 3 4))
(define s (make-segment sp ep))
(print-point (midpoint-segment s))

(exit)