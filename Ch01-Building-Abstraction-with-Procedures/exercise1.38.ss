(define (truncated-divide a b) (/ (- a (remainder a b)) b))

(define (cont-frac-iter n d k)

    (define (iter k acc)
        
        (define k-1 (- k 1))

        (define new-acc (/ (n k-1) (+ (d k-1) acc)))

        (if (= k 1)
            acc
            (iter k-1 new-acc)))
    
    (iter k (/ (n k) (d k))))

(define (n i) 1)
(define (d i) 
    (if (< (remainder i 3) 2)
        1
        (* 2 (+ (truncated-divide i 3) 1))))

(define (e) (+ 2.0 (cont-frac-iter n d 10)))

(display (e)) (newline)

(exit)