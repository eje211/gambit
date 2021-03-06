(declare (extended-bindings) (not constant-fold) (not safe))

(define a 0)
(define b 536870911)
(define c -536870912)
(define d 1)
(define e -1)
(define f 357913941)

(define (test-neg x)
  (println (##fxarithmetic-shift x -1))
  (println (##fxarithmetic-shift x -2))
  (println (##fxarithmetic-shift x -10))
  (println (##fxarithmetic-shift x -20))
  (println (##fxarithmetic-shift x -28)))

(define (test-pos x)
  (println (##fxarithmetic-shift x 0))
  (println (##fxarithmetic-shift x 1))
  (println (##fxarithmetic-shift x 2))
  (println (##fxarithmetic-shift x 10))
  (println (##fxarithmetic-shift x 20))
  (println (##fxarithmetic-shift x 28)))

(test-pos a)
(test-neg a)
(test-neg b)
(test-neg c)
(test-pos d)
(test-neg d)
(test-pos e)
(test-neg e)

(println (##fxarithmetic-shift f -2))
(println (##fxarithmetic-shift f -1))
(println (##fxarithmetic-shift f 0))
