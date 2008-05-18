(in-package :affi)


(defun copy-into-fixnum-vector (seq)
  "Copy a sequence into a vector of fixnums."
  (map '(simple-array fixnum (*)) #'identity seq))

(defun make-fixnum-vector (length)
  "Create a vector with element type fixnum."
  (make-array length :element-type 'fixnum))
