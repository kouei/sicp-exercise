(define (inc x) (+ x 1))
(define (dec x) (- x 1))

(define (cont-frac-recur n d k)
    
    (define (n_inc i) (n (inc i)))
    
    (define (d_inc i) (d (inc i)))

    (if (= k 1)
        (/ (n 1) (d 1))
        (/ (n 1) (+ (d 1) (cont-frac-recur n_inc d_inc (dec k))))))

(define (cont-frac-iter n d k)

    (define (iter k acc)
        
        (define k-1 (- k 1))

        (define new-acc (/ (n k-1) (+ (d k-1) acc)))

        (if (= k 1)
            acc
            (iter k-1 new-acc)))
    
    (iter k (/ (n k) (d k))))

(define (n i) 1)
(define (d i) 1)

(define (golden-ratio-recur) (/ 1.0 (cont-frac-recur n d 10)))
(define (golden-ratio-iter) (/ 1.0 (cont-frac-iter n d 10)))

(display (golden-ratio-recur)) (newline)
(display (golden-ratio-iter)) (newline)

(exit)