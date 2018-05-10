(define (f g) (g 2))

; this will raise Exception: attempt to apply non-procedure 2
(f f)

(exit)