(define dx 0.00001)

(define (compose f g) (lambda (x) (f (g x))))

(define (repeated f n)
    (if (= n 1)
        f
        (compose (repeated f (- n 1)) f)))

(define (smooth f) (lambda (x) (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

(define (n-fold-smoothed f n) ((repeated smooth n) f))

(define (square x) (* x x))

(display ((n-fold-smoothed square 2) 5)) (newline)

(exit)