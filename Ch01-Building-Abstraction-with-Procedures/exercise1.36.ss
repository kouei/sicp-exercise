(define tolerance 0.00001)

(define (fixed-point f first-guess)

    (define (close-enough? v1 v2) (< (abs (- v1 v2)) tolerance))

    (define (try guess)
        (display "trying ") 
        (display guess) 
        (newline)
        (let ((next (f guess)))
            (if (close-enough? guess next)
                next
                (try next))))
    
    (try first-guess))

(define (average x y) (/ (+ x y) 2))

(define (find-root) (fixed-point (lambda (x) (/ (log 1000.0) (log x))) 10.0))
(define (find-root-average-damping) (fixed-point (lambda (x) (average x (/ (log 1000.0) (log x)))) 10.0))

(display "find root:") (newline) (newline)
(display (find-root)) (newline) (newline)

(display "find root with average damping:") (newline) (newline)
(display (find-root-average-damping)) (newline)

(exit)