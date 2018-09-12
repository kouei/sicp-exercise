(define (exp base n)
    (cond ((= n 0) 1)
          ((even? n) (square (exp base (/ n 2))))
          (else (* base (exp base (- n 1))))))

(define (square n) (* n n))

(define (even? n)
    (= (remainder n 2) 0))

(define (cons a b)
    (* (exp 2 a) (exp 3 b)))

(define (car z)
    (if (even? z)
        (+ (car (/ z 2)) 1)
        0))

(define (cdr z)
    (if (= (remainder z 3) 0)
        (+ (car (/ z 3)) 1)
        0))

(display (car (cons 1 2))) (newline)
(display (cdr (cons 1 2)))

(exit)