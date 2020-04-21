; p23.fp   

(setq p23
  (make-fp-lattice
    '(z a b c d e)
    '(
      (z (a b))
      (a (c))
      (b (d))
      (c (e))
      (d (e))
      (e ()) )
    '(
      (e ((c b) (a d))) )
    '(
      (z ((c b) )) ) ))


(setq *lat* p23)
