;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname sched-general) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(require "extras.rkt")
(require rackunit)
(define TIME-ON-TASK 10)

;Add the following data definitions:
; A StudentAvail is a (make-student StudentID Preferences)
; Represents a student and their available times, most-preferred first.
; An unlisted time means the student is unavailable.
 
; A Student is one of:
; - StudentUnavail
; - StudentAvail
 
; A StudentAvails is a ListOf<StudentAvail>
; A Students is a ListOf<Student>
;Don’t worry about templates for these data definitions, since none of your 
;functions should have to decompose the Student itemization.
;Abstract your program such that it’s easy to implement versions of the 
;scheduling predicate and algorithm from part 1 for either version of student. 
;You will almost certainly need to user higher-order functions, à la map, filter, and friends.

;As one possible example, you might define a function:
; schedule/general : Students CodeWalks ... -> Maybe<CodeWalks>
(define (schedule/general students cws ...) ...)

;Then schedule/unavail would simply be a call to schedule/general. However, 
;you may also choose to abstract in a different manner.
;Either way, if you’ve been following the concepts in the course, and have 
;organized your code in a clean manner, this is an extremely easy refactoring 
;of no more than a few lines of code and should take no more than a few minutes.

;NOTE: Your abstractions should not come at the expense of code readability. 
;All your signatures and purpose statements must remain valid and clear. 
;You will fail this assignment if this is not the case.

;(If you are struggling with this part of the assignment, you may try to first 
;complete parts 1 and 3, before coming back to part 2. If you do this, you 
;should observe a large amount of code duplication between parts 1 and 3, and 
;the possible abstractions may be more evident.)

;Split your code into two files:
;sched-with-unavail.rkt: All code in this file only handles the first kind of 
;student, StudentUnavail. This file still implements the schedule/unavail 
;schedule/unavail-ok? functions from part 1.

;sched-general.rkt: All code in this file handles the general Student data 
;definition. For example, you might put the schedule/general function mentioned 
;above in this file. This file should be required by sched-with-unavail.rkt. 
;You may find it helpful to add (provide (all-defined-out)) at the top of this 
;file (make sure you have the most recent "extras.rkt" file). However, no 
;functions from this file will be accessed by our test suite.

;If you have followed the concepts from this course, sched-general.rkt file 
;should contain the bulk of the code (not counting tests).
;Testing Note: If all the code was properly tested before splitting the files, 
;it’s acceptable if a few of the generalized functions in sched-general.rkt do 
;not have full test coverage, since these functions are expected to be 
;instantiated and tested in sched-with-unavail.rkt.