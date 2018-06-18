(define (find s predicate)
  (if (null? s)
  #f
  (if (predicate (car s))
  (car s)
  ( find ( cdr-stream s ) predicate )))
)

(define (scale-stream s k)
   (if (null? s)
      nil
   (cons-stream (* k (car s)) (scale-stream (cdr-stream s) k)))
  )

(define (has-cycle s)
(define (helper1 so-far cur)
  (cond ((null? cur) #f)
      ((contains so-far cur) #t)
      (else (helper1 (cons cur so-far) (cdr-stream cur)))))
(define (contains lst s)
  (cond ((null? lst) #f)
      ((eq? s (car lst)) #t)
      (else (contains (cdr lst) s))))
(helper1 nil s))


(define (has-cycle-constant s)
  'YOUR-CODE-HERE
)
