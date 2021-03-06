; jb5.fp

;;; this is one of jb's Q poset with FL(Q) finite.
;;; it comes from D_1 and p below one of the atoms, not the middle one.
;;; FL(Q) has 8 elements.

;;;                                 o 1
;;;                                / \
;;;                             a o   \
;;;                              /     \
;;;                           b o       o c
;;;                              \     /
;;;                               \   /
;;;                                \ /
;;;                                 o 0

;;; JB's A part is 0,1,a while the B part is 0,1,b,c

(in-package :user)


(setq *lat*
  (let ((gens '(0 1 a b c ))
        (uc '(
              (0 (a b c ))
              (b (a))
              (a (1))
              (c (1))
              (1 ())
           ))
        (meets '(
             ))
        (joins '(
              (1 ((b c)))
             )))
    (make-fp-lattice gens uc joins meets t ) )
  jb5 *lat*)

