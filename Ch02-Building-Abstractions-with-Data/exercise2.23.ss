(define (for-each f list1)
    (if(null? list1)
        list1
        (cons (f (car list1)) (for-each f (cdr list1)))))

(for-each (lambda (x) (display x) (newline)) (list 1 2 3 4))

(exit)