(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))


; normal-order-evaluation
(gcd 206 40)
(if (= 40 0) ... )
(gcd 40 (remainder 206 40))
; +1
(if (= (remainder 206 40) 0) ... )
(gcd (remainder 206 40) (remainder 40 (remainder 206 40)))
; +2
(if (= (remainder 40 (remainder 206 40)) 0) ... )
(gcd (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))
; +4
(if (= (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) 0) ... )
(gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))
; +7
(if (= (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))) 0) ... )
; +4
(remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
2

; remainder evaluated 1 + 2 + 4 + 7 + 4 = 18 times in total





; applicative-order-evaluation
(gcd 206 40)
(if (= 40 0) ... )
; +1
(gcd 40 (remainder 206 40))
(gcd 40 6)
(if (= 6 0) ... )
; +1
(gcd 6 (remainder 40 6))
(gcd 6 4)
(if (= 4 0) ... )
; +1
(gcd 4 (remainder 6 4))
(gcd 4 2)
(if (= 2 0) ... )
; +1
(gcd 2 (remainder 4 2))
(gcd 2 0)
(if (= 0 0) ... )
2

; remainder evaluated 1 + 1 + 1 + 1 = 4 times in total

(exit)