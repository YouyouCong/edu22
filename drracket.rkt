;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname drscheme) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; error messages
(define (len1 l)
  (cond
    [(null? l) 0]
    [else 1 + (len1 (cdr l))]))

(len1 (list 1 2 3))

(define (len2 l)
  (cond
    [null? (l) 0]
    [else 1 + (len2 (cdr l))]))

(len2 (list 1 2 3))

(define (len3 l start)
  (cond
    [(null? l) start]
    [else (len3 (cdr l) (add1 begin))]))

(len3 (list 1 2 3) 0)

 stepper
(define (len4 l)
  (cond
   [(null? l) 0]
   [else (add1 (len4 (cdr l)))]))

(len4 (list 1 2 3))