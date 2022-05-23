(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main3 (Int) Bool)
(declare-fun inv_main5 (Int) Bool)
(assert (inv_main3 0))
(assert (forall ((var0 Int)) (or (not (inv_main3 var0)) (inv_main5 var0))))
(assert (forall ((var0 Int)) (or (not (inv_main5 var0)) (inv_main3 var0))))
(assert (forall ((var0 Int)) (not (and (inv_main5 var0) (not (= var0 0))))))
(check-sat)
