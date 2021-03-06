(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main10 (Int Int) Bool)
(declare-fun inv_main3 (Int Int) Bool)
(declare-fun inv_main7 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (inv_main3 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main3 var2 var1) (and (<= 0 (+ (+ var0 1000) (- 1))) (<= 0 (+ (+ 1000000 (* (- 1) var0)) (- 1)))))) (inv_main7 (- 50) var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main7 var1 var0) (<= 0 (+ (* (- 1) var1) (- 1))))) (inv_main7 (+ var1 var0) (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main7 var1 var0) (not (<= 0 (+ (* (- 1) var1) (- 1)))))) (inv_main10 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main10 var1 var0) (not (<= 0 (+ var0 (- 1))))))))
(check-sat)
