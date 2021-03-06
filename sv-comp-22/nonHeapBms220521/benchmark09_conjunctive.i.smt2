(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main10 (Int Int) Bool)
(declare-fun inv_main2 () Bool)
(declare-fun inv_main7 (Int Int) Bool)
(assert inv_main2)
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main7 var1 var0) (and (and (not (<= 0 (+ (* (- 1) (+ var1 (- 1))) (- 1)))) (not (<= 0 (+ (* (- 1) (+ var0 (- 1))) (- 1))))) (not (= var1 0))))) (inv_main7 (+ var1 (- 1)) (+ var0 (- 1))))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and inv_main2 (and (= var1 var0) (<= 0 var0)))) (inv_main7 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main7 var1 var0) (= var1 0))) (inv_main10 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main7 var1 var0) (and (or (<= 0 (+ (* (- 1) (+ var1 (- 1))) (- 1))) (<= 0 (+ (* (- 1) (+ var0 (- 1))) (- 1)))) (not (= var1 0))))) (inv_main10 (+ var1 (- 1)) (+ var0 (- 1))))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main10 var1 var0) (not (= var0 0))))))
(check-sat)
