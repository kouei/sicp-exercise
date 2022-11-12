(define (accumulate op initial sequence)
    (if (null? sequence)
        initial
        (op (car sequence)
            (accumulate op initial (cdr sequence)))))

 (define (enumerate-tree tree) 
   (cond ((null? tree) tree)
         ((not (pair? tree)) (list tree)) 
         (else (append (enumerate-tree (car tree)) 
                       (enumerate-tree (cdr tree))))))

(define (count-leaves t)
    (accumulate (lambda (x y) (+ (length x) y)) 0 (map enumerate-tree t)))

(define tree (list 1 2 3 (list 4 5 (list 6 7))))

(display (count-leaves tree)) (newline)

(exit)