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

(display (my-sqrt 2)) (newline) (newline)



; The following code will enter an infinite loop
; the short-circuit property of *if* is the reason why it needs to be a special form
(define (new-if predicate then-clause else-clause)
        (cond (predicate then-clause)
              (else else-clause)))

(define (new-sqrt-iter guess x)
    (new-if (good-enough? guess x)
        guess
        (new-sqrt-iter (improve guess x) x)))

(define (new-my-sqrt x)
        (new-sqrt-iter 1.0 x))

(display (new-my-sqrt 2))

(exit)