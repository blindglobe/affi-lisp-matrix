(defpackage #:affi-asd
  (:use :cl :asdf))

(in-package :affi-asd)

(defsystem affi
  :description "Affine indexing."
  :author "Tamas K Papp"
  :license "GPL"
;  :serial t
  :components ((:file "package")
	       (:file "utility" :depends-on ("package"))
	       (:file "affi" :depends-on ("utility")))
  :depends-on (:iterate :metabang-bind))
