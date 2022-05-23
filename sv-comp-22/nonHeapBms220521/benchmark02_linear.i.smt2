(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main10 (Int Int Int) Bool)
(declare-fun inv_main13 (Int Int Int) Bool)
(declare-fun inv_main2 () Bool)
(assert inv_main2)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main10 var2 var1 var0) (not (<= 0 (+ (+ var2 (* (- 1) var1)) (- 1)))))) (inv_main13 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main10 var2 var1 var0) (<= 0 (+ (+ var2 (* (- 1) var1)) (- 1))))) (inv_main10 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and inv_main2 (<= 0 (+ var1 (- 1))))) (inv_main10 var0 var1 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main13 var2 var1 var0) (not (<= 0 (+ var0 (- 1))))))))
(check-sat)
