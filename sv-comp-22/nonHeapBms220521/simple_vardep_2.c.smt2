(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main5 (Int Int Int) Bool)
(declare-fun inv_main9 (Int Int Int) Bool)
(assert (inv_main5 0 0 0))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (inv_main9 var2 var1 var0)) (inv_main5 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main5 var2 var1 var0) (<= 0 (+ (+ 268435455 (* (- 1) var0)) (- 1))))) (inv_main9 (+ var2 1) (+ var1 2) (+ var0 3)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main9 var2 var1 var0) (or (not (= var0 (* 3 var2))) (not (= var1 (* 2 var2))))))))
(check-sat)
