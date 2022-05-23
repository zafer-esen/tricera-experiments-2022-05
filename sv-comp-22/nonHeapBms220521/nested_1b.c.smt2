(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun inv_main3 (Int) Bool)
(declare-fun inv_main5 (Int) Bool)
(declare-fun inv_main9 (Int) Bool)
(assert (inv_main3 6))
(assert (forall ((var0 Int)) (or (not (inv_main3 var0)) (inv_main5 0))))
(assert (forall ((var0 Int)) (or (not (and (inv_main5 var0) (<= 0 (+ (+ 6 (* (- 1) var0)) (- 1))))) (inv_main5 (+ var0 1)))))
(assert (forall ((var0 Int)) (or (not (and (inv_main5 var0) (and (= var0 6) (not (<= 0 (+ (+ 6 (* (- 1) var0)) (- 1))))))) (inv_main9 var0))))
(assert (forall ((var0 Int)) (not (inv_main9 var0))))
(check-sat)
