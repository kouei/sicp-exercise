(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
    (if (not (> (abs angle) 0.1))
    angle
    (p (sine (/ angle 3.0)))))

; 12.15
; 4.05
; 1.35
; 0.45
; 0.15
; 0.05
; p will be evaluated total 5 times (the last time with 0.05 dose not require p)

; for both time and space, the order of growth is O(log a) with base 3

(exit)