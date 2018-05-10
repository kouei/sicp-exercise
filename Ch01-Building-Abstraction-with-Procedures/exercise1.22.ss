(define (smallest-divisor n) (find-divisor n 2))

(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b) (= (remainder b a) 0))

(define (square n) (* n n))

(define (prime? n) (= n (smallest-divisor n)))



(define (timed-prime-test n) 
    (newline) 
    (display n) 
    (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
    (if (prime? n) 
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
(search-for-primes 10000 10037)
(search-for-primes 100000 100043)
(search-for-primes 1000000 1000037)

(search-for-primes 1000000000 1000000021)
(search-for-primes 10000000000 10000000061)
(search-for-primes 100000000000 100000000057)
(search-for-primes 1000000000000 1000000000063)


(exit)