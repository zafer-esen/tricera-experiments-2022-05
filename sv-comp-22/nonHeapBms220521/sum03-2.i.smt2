(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main10 (Int Int Int Int) Bool)
(declare-fun inv_main3 (Int) Bool)
(assert (inv_main3 0))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (inv_main10 var3 var2 var1 var0)) (inv_main10 (+ var3 2) var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main3 var2) (and (<= 0 var1) (<= 0 var0)))) (inv_main10 (+ var2 2) var0 var1 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main10 var3 var2 var1 var0) (and (not (= var3 (* 2 var0))) (not (= var3 0)))))))
(check-sat)
