
(in-package :user)

(setq *lat*
  (let ((gens '(0 1 a b c x))
        (uc '(
              (0 (x b c))
              (x (a))
              (a (1))
              (b (1))
              (c (1))
              (1 ()) ))
        (joins '(
              (1 ((a b) (a c) (b c))) ))
        (meets '(
              (0 ((a b) (a c) (b c))) )) )
    (make-fp-lattice gens uc joins meets ) ) )


