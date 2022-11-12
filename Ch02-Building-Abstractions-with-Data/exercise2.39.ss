(define nil '())

(define (accumulate op initial sequence)
    (if (null? sequence)
        initial
        (op (car sequence)
            (accumulate op initial (cdr sequence)))))

(define fold-right accumulate)

(define (fold-left op initial sequence)
    (define (iter result rest)
        (if (null? rest)
            result
            (iter (op result (car rest))
                (cdr rest))))
    (iter initial sequence))

(define (reverse-with-fold-right sequence)
    (fold-right (lambda (x y) (append y (list x))) nil sequence))

(define (reverse-with-fold-left sequence)
    (fold-left (lambda (x y) (cons y x)) nil sequence))

(display (reverse-with-fold-right (list 1 2 3))) (newline)

(display (reverse-with-fold-left (list 1 2 3))) (newline)

(exit)