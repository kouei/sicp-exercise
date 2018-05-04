(define (f-recursive n)
    (cond ((< n 3) n)
          (else (+ (f-recursive (- n 1)) (* 2 (f-recursive (- n 2))) (* 3 (f-recursive (- n 3)))))))

(define (f-iterative n)

    (define (f-iter a b c count)
          (if (= count 0) 
              c
              (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))

    (f-iter 2 1 0 n))

(display (f-recursive 0)) (newline)
(display (f-recursive 1)) (newline)
(display (f-recursive 2)) (newline)
(display (f-recursive 3)) (newline)
(display (f-recursive 4)) (newline)
(display (f-recursive 5)) (newline)
(display (f-recursive 6)) (newline)
(display (f-recursive 7)) (newline)
(display (f-recursive 8)) (newline)
(display (f-recursive 9)) (newline)

(newline) (newline)

(display (f-iterative 0)) (newline)
(display (f-iterative 1)) (newline)
(display (f-iterative 2)) (newline)
(display (f-iterative 3)) (newline)
(display (f-iterative 4)) (newline)
(display (f-iterative 5)) (newline)
(display (f-iterative 6)) (newline)
(display (f-iterative 7)) (newline)
(display (f-iterative 8)) (newline)
(display (f-iterative 9)) (newline)



(exit)