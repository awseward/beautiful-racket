#lang br/quicklang

(define (read-syntax path port)
  (define src-lines (port->lines port))
;; (second layer of quoting for debugging purposes)
;;  (define src-datums (format-datums ''(handle ~a) src-lines))
  (define src-datums (format-datums '(handle ~a) src-lines))
  (define module-datum `(module stacker-mod br
                          ,@src-datums))
  (datum->syntax #f module-datum))

(provide read-syntax)
