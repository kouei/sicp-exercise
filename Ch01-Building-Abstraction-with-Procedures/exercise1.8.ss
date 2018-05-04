(define (square x) (* x x))

(define (cube x) (* x x x))

(define (good-enough? guess last-guess)
        (< (abs (/ (- guess last-guess) last-guess)) 0.001))

(define (improve guess x)
        (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cbrt-iter guess last-guess x)
    (if (good-enough? guess last-guess)
        guess
        (cbrt-iter (improve guess x) guess x)))

(define (cbrt x)
        (cond ((= x 0) 0)
              ((> x 0) (cbrt-iter (improve 1.0 x) 1.0 x))
              (else (- (cbrt (- x))))))

(display (cbrt 0)) (newline)
(display (cube (cbrt 0))) (newline) (newline)

(display (cbrt 3)) (newline)
(display (cube (cbrt 3))) (newline) (newline)

(display (cbrt (- 3))) (newline)
(display (cube (cbrt (- 3)))) (newline) (newline)
(exit)