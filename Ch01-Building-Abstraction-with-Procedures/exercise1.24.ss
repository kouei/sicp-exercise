(define (expmod base exp m)
    (cond ((= exp 0) 1)
          ((even? exp)
          (remainder (square (expmod base (/ exp 2) m)) m))
          (else (remainder (* base (expmod base (- exp 1) m)) m))))

(define (square n) (* n n))

(define (fermat-test n)
    (define (try-it a)
        (= (expmod a n n) a))
    (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
    (cond ((= times 0) #t)
          ((fermat-test n) (fast-prime? n (- times 1)))
          (else #f)))


(define (timed-prime-test n) 
    (newline) 
    (display n) 
    (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
    (if (fast-prime? n 1000) 
        (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time) 
    (display " *** ") 
    (display elapsed-time) (display " ms "))

(define (runtime) (/ (time-nanosecond (current-time)) 1000.0 1000.0))

(define (even? n)
    (= (remainder n 2) 0))

(define (search-for-primes start end)
    (if (<= start end) (timed-prime-test start))
    (if (<= start end) 
        (if (even? start)
            (search-for-primes (+ start 1) end)
            (search-for-primes (+ start 2) end))))


(search-for-primes 1000 1019)
(search-for-primes 1000000 1000037)
(search-for-primes 1000000000000 1000000000063)


(exit)