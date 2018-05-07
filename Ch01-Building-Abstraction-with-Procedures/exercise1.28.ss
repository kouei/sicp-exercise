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

(display (fast-prime? 1 1000)) (newline)
(display (fast-prime? 2 1000)) (newline)
(display (fast-prime? 10 1000)) (newline)
(display (fast-prime? 1000037 1000)) (newline)

(newline)

(display (fast-prime? 561 1000)) (newline)
(display (fast-prime? 1105 1000)) (newline)
(display (fast-prime? 1729 1000)) (newline)
(display (fast-prime? 2465 1000)) (newline)
(display (fast-prime? 2821 1000)) (newline)
(display (fast-prime? 6601 1000)) (newline)

(exit)