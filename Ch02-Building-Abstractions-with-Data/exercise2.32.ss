(define (subsets s)
    (if (null? s)
        (list s)
        (let ((rest (subsets (cdr s))))
            (append rest (map (lambda (x) (cons (car s) x)) rest)))))

(display (subsets (list  1 2 3)))

(newline)

(exit)