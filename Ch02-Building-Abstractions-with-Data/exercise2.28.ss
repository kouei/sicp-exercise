(define (fringe list1)
    (cond ((null? list1) list1)
          ((not (pair? list1)) (list list1))
          (else (append (fringe (car list1)) (fringe (cdr list1))))))

(define x (list (list 1 2) (list 3 4)))

(display (fringe x)) (newline)

(display (fringe (list x x))) (newline)

(exit)