; for applicative-order evaluation this is an infinite loop
; for normal-order evaluation this evaluates to 0

(define (p) (p))
(define (test x y)
    (if (= x 0)
        0
        y))

; Infinite Loop
(display "(test 0 (p)) -> ") (display (test 0 (p)))
(exit)