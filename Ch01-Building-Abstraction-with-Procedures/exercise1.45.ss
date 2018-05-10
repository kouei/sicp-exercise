(define tolerance 0.00001)

(define (compose f g) (lambda (x) (f (g x))))

(define (repeated f n)
    (if (= n 1)
        f
        (compose (repeated f (- n 1)) f)))

(define (fixed-point f first-guess)

    (define (close-enough? v1 v2) (< (abs (- v1 v2)) tolerance))

    (define (try guess)
        (let ((next (f guess)))
            (if (close-enough? guess next)
                next
                (try next))))
    
    (try first-guess))

(define (fixed-point-of-transform g transform guess)
    (fixed-point (transform g) guess))

(define (average x y) (/ (+ x y) 2))

(define (average-damp f) (lambda (x) (average x (f x))))

; this is O(N), we can write O(logN) instead, but not this time for the sake of simplicity
(define (n-power x n)
    (cond ((= x 0) 0)
          ((= n 0) 1)
          (else (* x (n-power x (- n 1))))))

(define (truncated-divide a b) (/ (- a (remainder a b)) b))

(define (truncated-log2 x)
    (if (= x 1)
        0
        (+ 1 (truncated-log2 (truncated-divide x 2)))))


(define (n-root x n)
    (fixed-point-of-transform (lambda (y) (/ x (n-power y (- n 1)))) (repeated average-damp (truncated-log2 n)) 1.0))



(define nth 16)
(display (n-power 2 nth)) (newline)
(display (n-root (n-power 2 nth) nth)) (newline)


(exit)