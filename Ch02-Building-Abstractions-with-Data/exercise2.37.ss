(define nil '())

(define (accumulate op initial sequence)
    (if (null? sequence)
        initial
        (op (car sequence)
            (accumulate op initial (cdr sequence)))))

(define (accumulate-n op init seqs)
    (if (null? (car seqs))
        nil
        (cons (accumulate op init (map car seqs))
              (accumulate-n op init (map cdr seqs)))))

(define (dot-product v w)
    (accumulate + 0 (map * v w)))


(lambda (this-coeff higher-terms) (+ (* higher-terms x) this-coeff))

(define (matrix-*-vector m v)
    (map (lambda (w) (dot-product w v)) m))

(define (transpose mat)
    (accumulate-n cons nil mat))

(define (matrix-*-matrix m n)
    (let ((cols (transpose n)))
        (map (lambda (w) (matrix-*-vector cols w)) m)))

(define v (list 1 2 3 4))
(define w (list 2 3 4 5))
(define m (list v w))
(define n (transpose m))

(display (dot-product v w)) (newline)

(display (matrix-*-vector m v)) (newline)

(display (transpose m)) (newline)

(display (matrix-*-matrix m n)) (newline)

(exit)