(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main4 (Int Int) Bool)
(declare-fun inv_main5 (Int Int) Bool)
(assert (inv_main4 0 1))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main4 var1 var0) (not (<= 0 (+ (+ 6 (* (- 1) var1)) (- 1)))))) (inv_main5 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main4 var1 var0) (<= 0 (+ (+ 6 (* (- 1) var1)) (- 1))))) (inv_main4 (+ var1 1) (* 2 var0)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main5 var1 var0) (and (and (and (and (and (<= 0 (+ (+ 3 (* (- 1) var2)) (- 1))) (<= 0 (+ (+ 3 (* 1 var2)) (- 1)))) (or (not (<= 0 (+ var2 (- 1)))) (<= 0 (+ var0 (- 1))))) (or (not (<= 0 (+ (* (- 1) var2) (- 1)))) (<= 0 (+ (* (- 1) var0) (- 1))))) (= var0 (+ (* 3 var3) var2))) (= var2 0))))))
(check-sat)
