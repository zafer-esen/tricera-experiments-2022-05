(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main2 () Bool)
(declare-fun inv_main7 (Int Int Int Int) Bool)
(declare-fun inv_main8 (Int Int Int Int) Bool)
(assert inv_main2)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main7 var4 var3 var2 var1) (and (<= 0 var0) (not (= var0 0))))) (inv_main7 var4 var3 (+ var2 1) (+ var1 1)))))
(assert (forall ((var0 Int)) (or (not (and inv_main2 (<= 0 var0))) (inv_main7 var0 var0 (+ var0 1) (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main7 var4 var3 var2 var1) (and (<= 0 var0) (= var0 0)))) (inv_main8 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main8 var3 var2 var1 var0) (not (= var1 var0))))))
(check-sat)
