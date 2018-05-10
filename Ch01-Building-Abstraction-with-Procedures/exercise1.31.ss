(define (inc n) (+ n 1))
(define (identity n) n)
(define (truncated-divide a b) (/ (- a (remainder a b)) b))


(define (product-recur term a next b)
    (if (> a b)
        1
        (* (term a) (product-recur term (next a) next b))))

(define (product-iter term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (* (term a) result))))
    (iter a 1))


(define (factorial n) (product-recur identity 1 inc n))

(define (pi n)
    (define (term k)
        (define numerator (* (+ (truncated-divide k 2) 1) 2))
        (define denominator (- (* (+ (truncated-divide (+ k 1) 2) 1) 2) 1))

        (/ numerator denominator))
    
    (* 4.0 (product-iter term 1 inc n)))

(display (factorial 0)) (newline)
(display (factorial 1)) (newline)
(display (factorial 2)) (newline)
(display (factorial 3)) (newline)
(display (factorial 4)) (newline)
(display (factorial 5)) (newline)

(display (pi 10)) (newline)
(display (pi 100)) (newline)
(display (pi 1000)) (newline)

(exit)