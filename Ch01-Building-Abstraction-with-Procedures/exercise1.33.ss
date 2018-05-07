(define (square n) (* n n))
(define (inc n) (+ n 1))
(define (identity n) n)

(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))

(define (filtered-accumulate combiner null-value term a next b predicate)

    (define (iter a result)
        (if (> a b)
            result
            (if (predicate a)
                (iter (next a) (combiner (term a) result))
                (iter (next a) result))))

    (iter a null-value))


(define (expmod base exp m)

    (define (nontrivial-square x)
        (if (and (not (= x 1))
                 (not (= x (- m 1)))
                 (= (remainder (square x) m) 1))
            0
            (square x)))
        

    (cond ((= exp 0) 1)
          ((even? exp)
          (remainder (nontrivial-square (expmod base (/ exp 2) m)) m))
          (else (remainder (* base (expmod base (- exp 1) m)) m))))

(define (square n) (* n n))

(define (fermat-test n)

    (define (try-it a)
        (= (expmod a (- n 1) n) 1))
    
    (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
    (cond ((= n 1) #f)
          ((= times 0) #t)
          ((fermat-test n) (fast-prime? n (- times 1)))
          (else #f)))

(define (prime? n) (fast-prime? n 100))

(define (sum-of-square-of-primes a b)
    (filtered-accumulate + 0 square a inc b prime?))

(define (product-of-positive-integer-less-than-b-and-prime-to-b b)
    
    (define (prime-to a) (= (gcd a b) 1))

    (filtered-accumulate * 1 identity 1 inc b prime-to))

(display (sum-of-square-of-primes 1 10)) (newline)
(display (+ (square 2) (square 3) (square 5) (square 7))) (newline)

(display (product-of-positive-integer-less-than-b-and-prime-to-b 10)) (newline)
(display (* 1 3 7 9)) (newline)
(exit)