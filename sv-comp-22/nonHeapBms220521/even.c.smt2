(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main3 (Int) Bool)
(declare-fun inv_main4 (Int) Bool)
(assert (inv_main3 0))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main3 var1) (not (= var0 0)))) (inv_main3 (+ var1 2)))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main3 var1) (= var0 0))) (inv_main4 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main4 var0) (not (or (not (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var1)) (- 1))) (<= 0 (+ (+ 2 (* 1 var1)) (- 1)))) (or (not (<= 0 (+ var1 (- 1)))) (<= 0 (+ var0 (- 1))))) (or (not (<= 0 (+ (* (- 1) var1) (- 1)))) (<= 0 (+ (* (- 1) var0) (- 1))))) (= var0 (+ (* 2 var2) var1)))) (= var1 0)))))))
(check-sat)
