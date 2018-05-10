(define (square x) (* x x))

(define (cont-frac-iter n d k)

    (define (iter k acc)
        
        (define k-1 (- k 1))

        (define new-acc (/ (n k-1) (- (d k-1) acc)))

        (if (= k 1)
            acc
            (iter k-1 new-acc)))
    
    (iter k (/ (n k) (d k))))

(define (tan-cf x k)

    (define (n i)
        (if (= i 1)
            x
            (square x)))
    
    (define (d i) (- (* 2 i) 1))
    
    (cont-frac-iter n d k))

(define pi 3.1415926)
(display (tan-cf 0.0 10)) (newline)
(display (tan-cf (/ pi 4) 10)) (newline)
(display (tan-cf pi 10)) (newline)

(exit)