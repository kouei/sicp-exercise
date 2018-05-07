(define (inc n) (+ n 1))
(define (identity n) n)
(define (cube n) (* n n n))
(define (even? n) (= (remainder n 2) 0))


(define (accumulate-recur combiner null-value term a next b)
    (if (> a b)
        null-value
        (combiner (term a) (accumulate-recur combiner null-value term (next a) next b))))

(define (accumulate-iter combiner null-value term a next b)

    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (combiner (term a) result))))

    (iter a null-value))


(define (sum-recur term a next b) (accumulate-recur + 0 term a next b))
(define (sum-iter term a next b) (accumulate-iter + 0 term a next b))

(define (product-recur term a next b) (accumulate-recur * 1 term a next b))
(define (product-iter term a next b) (accumulate-iter * 1 term a next b))

(define (simpson-integral-recur f a b n)

    (define h (/ (- b a) n))

    (define (y k) (f (+ a (* k h))))
    
    (define (term k)
        (if (or (= k 0) (= k n))
            (y k)
            (if (even? k)
                (* 2 (y k))
                (* 4 (y k)))))

    (* (/ h 3) (sum-recur term 0 inc n)))

(define (simpson-integral-iter f a b n)

    (define h (/ (- b a) n))

    (define (y k) (f (+ a (* k h))))
    
    (define (term k)
        (if (or (= k 0) (= k n))
            (y k)
            (if (even? k)
                (* 2 (y k))
                (* 4 (y k)))))

    (* (/ h 3) (sum-iter term 0 inc n)))


(define (factorial-recur n) (product-recur identity 1 inc n))

(define (factorial-iter n) (product-iter identity 1 inc n))

(display (simpson-integral-recur cube 0.0 1.0 100)) (newline)
(display (simpson-integral-recur cube 0.0 1.0 1000)) (newline)

(newline)

(display (simpson-integral-iter cube 0.0 1.0 100)) (newline)
(display (simpson-integral-iter cube 0.0 1.0 1000)) (newline)

(newline)

(display (factorial-recur 0)) (newline)
(display (factorial-recur 1)) (newline)
(display (factorial-recur 2)) (newline)
(display (factorial-recur 3)) (newline)
(display (factorial-recur 4)) (newline)
(display (factorial-recur 5)) (newline)

(newline)

(display (factorial-iter 0)) (newline)
(display (factorial-iter 1)) (newline)
(display (factorial-iter 2)) (newline)
(display (factorial-iter 3)) (newline)
(display (factorial-iter 4)) (newline)
(display (factorial-iter 5)) (newline)

(exit)