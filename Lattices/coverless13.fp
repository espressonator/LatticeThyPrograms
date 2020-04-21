;;; coverless13.fp

;;; The lattice generated by a, b, c with  ab = 0 and a + c = 1.
;;; 
;;; In this lattice b is not cji and c is not cmi. The smallest w
;;; with w \leq b and \kappa(w) \geq c is 
;;; 
;;; 	w = b(a + bc)		\kappa(w) = c + a(b + c)
;;; 
;;; Note this refutes my conjecture that for p \nleq q in P, (p minimal,
;;; q maximal such) if there is a cji w \leq p and q \leq \kappa(w)
;;; then w is in P^\meet or the kappa of a cmi in P^\join.
;;; 
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
                 (1 ((a c)  ))
              ))
        (meets '(
                 (0 ( (a b)  ))
             )) )
    (make-fp-lattice gens uc joins meets t) )
)



