(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define (sum-of-squares-of-larger-two x y z)
    (cond ((and (<= z x) (<= z y)) (sum-of-squares x y))
          ((and (<= y x) (<= y z)) (sum-of-squares x z))
          (else (sum-of-squares y z))))

(display "(sum-of-squares-of-larger-two 1 2 3) -> ")
(display (sum-of-squares-of-larger-two 1 2 3))
(exit)