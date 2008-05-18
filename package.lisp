(defpackage :affi
  (:use :common-lisp :iterate :metabang-bind)
  (:export

   ;; utility.lisp -- nothing is exported

   ;; affi.lisp

   affi get-const get-coeff get-domain rank size range make-affi
   make-affi-cm calculate-index make-walker in-affi test-walker
   permute transpose subrange drop check-conformability strict
   map-subarray
      
   ))