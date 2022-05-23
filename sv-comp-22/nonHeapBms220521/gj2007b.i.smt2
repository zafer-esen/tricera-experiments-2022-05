(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main13 (Int Int Int) Bool)
(declare-fun inv_main4 (Int Int) Bool)
(declare-fun inv_main6 (Int Int Int) Bool)
(declare-fun inv_main7 (Int Int Int) Bool)
(assert (inv_main4 0 0))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (inv_main7 var2 var1 var0)) (inv_main13 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main6 var3 var2 var1) (and (not (= var0 0)) (<= 0 (+ (+ var1 (* (- 1) var3)) (- 1)))))) (inv_main6 (+ var3 1) var3 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main6 var3 var2 var1) (and (= var0 0) (<= 0 (+ (+ var1 (* (- 1) var3)) (- 1)))))) (inv_main6 (+ var3 1) var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (inv_main4 var2 var1)) (inv_main6 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main6 var2 var1 var0) (not (<= 0 (+ (+ var0 (* (- 1) var2)) (- 1)))))) (inv_main7 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main7 var2 var1 var0) (and (not (<= 0 var1)) (not (<= 0 (* (- 1) var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main13 var2 var1 var0) (and (not (<= 0 (+ (+ var0 (* (- 1) var1)) (- 1)))) (not (<= 0 (* (- 1) var0))))))))
(check-sat)
