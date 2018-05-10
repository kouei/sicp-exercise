(define (square x) (* x x))
(define (average x y) (/ (+ x y) 2))

(define (iterative-improve good-enough? improve)
    (define (iter guess)
        (if (good-enough? guess)
            guess
            (iter (improve guess))))
    iter)

(define (mysqrt x)

    (define (good-enough? guess) (< (abs (- (square guess) x)) 0.00001))

    (define (improve guess) (average guess (/ x guess)))

    ((iterative-improve good-enough? improve) 1.0))

(define (fixed-point f first-guess)
    
    (define (good-enough? guess) (< (abs (- guess (f guess))) 0.00001))

    (define (improve guess) (f guess))

    ((iterative-improve good-enough? improve) first-guess))

(define (mysqrt-with-fixed-point x)
    (fixed-point (lambda (y) (average y (/ x y)))  1.0))

(display (mysqrt 2)) (newline)
(display (mysqrt-with-fixed-point 2)) (newline)


(exit)