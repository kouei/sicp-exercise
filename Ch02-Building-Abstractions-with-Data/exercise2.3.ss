(define (make-point x y) (cons x y))

(define (x-point p) (car p))

(define (y-point p) (cdr p))

(define (representation1)

    (define (make-rectangle lt rb) (cons lt rb))

    (define (width r) (- (x-point (cdr r)) (x-point (car r))))

    (define (height r) (- (y-point (cdr r)) (y-point (car r))))

    (define (perimeter r)
        (* (+ (width r) (height r)) 2))

    (define (area r)
        (* (width r) (height r)))

    (define lt (make-point 2 3))
    (define rb (make-point 5 7))
    (define r (make-rectangle lt rb))

    (display (perimeter r)) (newline)
    (display (area r)) (newline))


(define (representation2)

    (define (make-rectangle lt wh) (cons lt wh))

    (define (width r) (car (cdr r)))

    (define (height r) (cdr (cdr r)))

    (define (perimeter r)
        (* (+ (width r) (height r)) 2))

    (define (area r)
        (* (width r) (height r)))

    (define lt (make-point 2 3))
    (define wh (make-point 3 4))
    (define r (make-rectangle lt wh))
    (display (perimeter r)) (newline)
    (display (area r)) (newline))




(representation1)
(representation2)

(exit)