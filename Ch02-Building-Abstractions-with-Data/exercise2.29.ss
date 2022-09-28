(define (make-mobile left right)
    (list left right))

(define (make-branch length structure)
    (list length structure))

; Question a:
(define (left-branch mobile)
    (car mobile))

(define (right-branch mobile)
    (cdar mobile))

(define (branch-length branch)
    (car branch))

(define (branch-structure branch)
    (cdar branch))

; Question b:
(define (number? x)
    (not (pair? x)))

(define (branch? branch)
    (and (pair? branch) (number? (left-branch branch)) (number? (right-branch branch))))

(define (total-weight mobile)
    (if (branch? mobile)
        (branch-structure mobile)
        (+ (total-weight (left-branch mobile)) (total-weight (right-branch mobile)))))

; Question c:
(define (torque branch)
    (if (number? (right-branch branch))
        (* (left-branch branch) (right-branch branch))
        (* (left-branch branch) (total-weight (right-branch branch)))))

(define (balanced? mobile)
    (if (branch? mobile)
        #t
        (and (= (torque (left-branch mobile)) 
                (torque (right-branch mobile))) 
             (balanced? (left-branch mobile)) 
             (balanced? (right-branch mobile)))))

; Question d:
; Only the following functions need modification:
; (define (right-branch mobile)
;     (cdr mobile))

; (define (branch-structure branch)
;     (cdr branch))

; Notice that "cdar" is changed to "cdr"

(exit)

