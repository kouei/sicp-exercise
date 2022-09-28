(define (reverse list1)
    (cond ((null? list1) list1)
          ((not (pair? list1)) list1)
          (else (append (reverse (cdr list1)) (list (reverse (car list1)))))))
    
(define list1 (list (list 1 2) (list 3 4)))

(display list1) (newline)

(display (reverse list1)) (newline)

(exit)