(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main12 (Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int) Bool)
(assert (inv_main4 0 0 0))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (inv_main12 var3 var2 var1 var0)) (inv_main12 (+ var3 1) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main4 var3 var2 var1) (<= 0 (+ var0 (- 1))))) (inv_main12 0 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main12 var3 var2 var1 var0) (not (= var2 0))))))
(check-sat)
