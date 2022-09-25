(define (append list1 list2)
    (if (null? list1)
    list2
    (cons (car list1) (append (cdr list1) list2))))

(define (reverse list1)
    (if (null? list1)
        list1
        (append (reverse (cdr list1)) (list (car list1)))))
    
(display (reverse (list 1 4 9 16 25)) )

(exit)