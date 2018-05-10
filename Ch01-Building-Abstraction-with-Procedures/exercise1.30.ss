(define (even? n) (= (remainder n 2) 0))
(define (inc n) (+ n 1))
(define (cube n) (* n n n))



(define (sum term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (+ (term a) result))))
    (iter a 0))


(define (simpson-integral f a b n)

    (define h (/ (- b a) n))

    (define (y k) (f (+ a (* k h))))
    
    (define (term k)
        (if (or (= k 0) (= k n))
            (y k)
            (if (even? k)
                (* 2 (y k))
                (* 4 (y k)))))

    (* (/ h 3) (sum term 0 inc n)))


(display (simpson-integral cube 0.0 1.0 100)) (newline)
(display (simpson-integral cube 0.0 1.0 1000)) (newline)

(exit)