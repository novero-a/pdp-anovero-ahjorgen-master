;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname sched-with-avail) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(require "extras.rkt")
(require rackunit)
(define TIME-ON-TASK 10)

(provide schedule/avail-ok?)
(provide schedule/avail)
(provide avg-choice)

;Implement a predicate and scheduling algorithm for the second kind of student, 
;StudentAvail. sched-with-avail.rkt should require and re-use functions from 
;sched-general.rkt. If you have properly organized your code, implementing these 
;functions should take no more than a few lines of code.
;Tasks:
;Implement schedule/avail-ok?, a predicate that checks whether a schedule 
;satisfies a list of student preferences. A schedule is valid according to 
;some preferences if:

;*each code walk is not over capacity,
;*each student is scheduled exactly once,
;*each student is scheduled in an acceptable time slot according to their preferences.

; schedule/avail-ok? : StudentAvails CodeWalks -> Boolean
; Returns true if cws is a valid schedule according to the given
; student preferences.
(define (schedule/avail-ok? students cws) ...)



;Implement the schedule/avail function.

; schedule/avail : StudentAvails CodeWalks -> Maybe<CodeWalks>
; Creates a codewalk schedule by assigning students to cws, 
; while satisfying students' constraints.
; Returns #f if no schedule is possible.
; Strategy: ???
(define (schedule/avail students cws) ...)


;Implement avg-choice, which computes the average of the rank of the codewalks 
;assigned to each student. For example, if each student is assigned their 
;first choice, then avg-choice returns 1. This roughly indicates how well the 
;scheduling algorithm performs.

; avg-choice : StudentAvails CodeWalks -> PosReal
; WHERE: (schedule/avail-ok? students cws) = #t
(define (avg-choice students cws) ...)

;Tinker with your implementation of schedule/avail, with the goal of producing 
;a schedule that maximizes avg-choice. We will apply your scheduler to a dataset 
;of (Boston) student-submitted preferences. Any submission that beats our 
;reference implementation will be rewarded some (to-be-determined) number of bonus points.