(define (jiffies-per-second) 1000000)
(define (current-second) (with-module syscalls (time-microseconds (time))))
(define current-jiffy current-second)
(define inexact exact->inexact)
(define exact inexact->exact)
(define (this-scheme-implementation-name)
  (string-append "rscheme-" "unknown"))
(define-syntax when
  (syntax-rules ()
    ((when a b c ...)
     (if a (begin b c ...)))))
(define-syntax unless
  (syntax-rules ()
    ((unless a b c ...)
     (if (not a) (begin b c ...)))))
