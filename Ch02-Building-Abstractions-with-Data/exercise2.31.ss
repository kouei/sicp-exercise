(define (tree-map f tree)
    (map (lambda (sub-tree)
                (if (pair? sub-tree)
                    (tree-map f sub-tree)
                    (f sub-tree)))
          tree))

(define (square x) (* x x))

(define (square-tree tree) (tree-map square tree))

(display
    (square-tree
        (list 1
            (list 2 (list 3 4) 5)
            (list 6 7))))

(newline)

(exit)