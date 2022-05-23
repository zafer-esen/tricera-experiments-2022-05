(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main3 (Int Int) Bool)
(declare-fun inv_main6 (Int Int) Bool)
(declare-fun inv_main8 (Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (inv_main3 var1 var0)))
(assert (forall ((var0 Int) (var1 Int)) (or (not (inv_main3 var1 var0)) (inv_main8 0 1))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main8 var1 var0) (and (<= 0 (+ (+ 50 (* (- 1) (+ var1 1))) (- 1))) (not (<= 0 (+ (* (- 1) var0) (- 1))))))) (inv_main8 (+ var1 1) (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main8 var1 var0) (and (not (<= 0 (+ (+ 50 (* (- 1) (+ var1 1))) (- 1)))) (not (<= 0 (+ (* (- 1) var0) (- 1))))))) (inv_main8 (+ var1 1) (+ var0 (- 1))))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main8 var1 var0) (<= 0 (+ (* (- 1) var0) (- 1))))) (inv_main6 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main6 var1 var0) (not (= var1 100))))))
(check-sat)
