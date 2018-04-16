(define (square x) (* x x))

(define (good-enough? guess x)
        (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
        (/ (+ guess (/ x guess)) 2))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (my-sqrt x)
        (sqrt-iter 1.0 x))

(display (my-sqrt 0.0001)) (newline) (newline)



(define (better-good-enough? guess last-guess)
        (< (abs (/ (- guess last-guess) last-guess)) 0.001))

(define (better-sqrt-iter guess last-guess x)
    (if (better-good-enough? guess last-guess)
        guess
        (better-sqrt-iter (improve guess x) guess x)))

(define (better-my-sqrt x)
        (better-sqrt-iter (improve 1.0 x) 1.0 x))

(display (better-my-sqrt 0.0001))

(exit)