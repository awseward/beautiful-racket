#lang br/quicklang

(define (read-syntax path port)
  (define src-lines (port->lines port))
  (define src-datums (format-datums '~a src-lines))
  (define module-datum `(module funstacker-mod "funstacker.rkt"
                          (handle-args ,@src-datums)))
  (datum->syntax #f module-datum))
(provide read-syntax)

(define-macro (funstacker-module-begin HANDLE-ARGS-EXPR)
  #'(#%module-begin
     (display (first HANDLE-ARGS-EXPR))))
(provide (rename-out [funstacker-module-begin #%module-begin]))

;; The dot in front of `args` designates it as a `rest argument`. It is
;; optional, and any number of positional arguments can appear before it.
;;
;; "Gather the remaining arguments in a list and assign it to this variable"
;;
;; This makes it possible to accept any number of arguments.
(define (handle-args . args)
  (for/fold ([stack-acc empty])
            ;; `in-list` is sequence constructor (helps compiler)
            ;; is generally "virtuous" to use
            ([arg (in-list args)]
             #:unless (void? arg))
    (cond
      [(number? arg) (cons arg stack-acc)]
      [(or (equal? * arg) (equal? + arg))
       (define op-result
         (arg (first stack-acc) (second stack-acc)))
       (cons op-result (drop stack-acc 2))])))
(provide handle-args)

(provide + *)
