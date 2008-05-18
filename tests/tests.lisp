(in-package :affi)

;;; testing 
(defun make-enum-array (&rest dimensions)
  (let ((array (make-array dimensions :element-type 'fixnum)))
    (dotimes (i (reduce #'* dimensions))
      (setf (row-major-aref array i) i))
    array))


(defparameter *a2* (make-enum-array 5 6))

(defparameter *a1* (make-enum-array 2 3 4))

(defparameter *affi* (make-affi *a1*))

(defparameter *walker* (make-walker *affi*))

(defparameter *b* (make-array '(10 10) :element-type 'fixnum))

*a2*
(copy-subarray *a2* nil :source-range '((1 3) 2) :drop-which nil)
(copy-subarray *a2* nil :permutation '(1 0))
(copy-subarray *a2* *b* :source-range '((0 3) (-1 -3)) :target-range '(all (1 3)))

(test-walker (make-walker (make-affi-cm '(2 3))))
