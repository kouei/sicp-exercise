(define (square x) (* x x))

(define (square-list items)
    (if (null? items)
        items
        (cons (square (car items)) (square-list (cdr items)))))

(define (square-list2 items)
    (map square items))

(display (square-list (list 1 2 3 4))) (newline)

(display (square-list2 (list 1 2 3 4))) (newline)

(exit)