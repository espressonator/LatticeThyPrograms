;;; coverless10.fp

;;; The lattice generated by a, b, c with  bc = 0 and all 3 joins 1.
;;; It appears that the only cji's in the lattice are ab and ac and
;;; the only cmi's are b and c.
;;; 
;;; 
;;; So we need to investigate when dean's conditions on the generators
;;; can be fixed by doubling (or some other construction).
;;; 

(in-package :user)

(setq *lat*
  (let ((gens '(a b c 0 1))
        (uc '(
	      (0 (a b c ))
	      (a (1))
	      (b (1))
	      (c (1))
	      (1 ())

             ))
        (joins '(
		 (1 ((a b) (a c) (b c)  ))
              ))
        (meets '(
		 (0 ( (b c)  ))
             )) )
    (make-fp-lattice gens uc joins meets t) ) 
)




