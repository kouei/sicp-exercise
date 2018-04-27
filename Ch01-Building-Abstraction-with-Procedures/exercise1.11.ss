(define (f-recursive n)
    (cond ((< n 3) n)
          (else (+ (f-recursive (- n 1)) (* 2 (f-recursive (- n 2))) (* 3 (f-recursive (- n 3)))))))

(define (f-iterative n)

    (define (f-iter a b c count)
    (cond ((= count 2) a)
          ((= count 1) b)
          ((= count 0) c)
          (else (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1)))))

    (f-iter 2 1 0 n))

(display "(f-recursive 2)") (display " -> ") (display (f-recursive 2)) (newline) (newline)
(display "(f-iterative 2)") (display " -> ") (display (f-iterative 2)) (newline) (newline)

(display "(f-recursive 5)") (display " -> ") (display (f-recursive 5)) (newline) (newline)
(display "(f-iterative 5)") (display " -> ") (display (f-iterative 5)) (newline) (newline)

(exit)