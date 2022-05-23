(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun inv_main4 (Int Int) Bool)
(declare-fun inv_main5 (Int Int) Bool)
(declare-fun inv_main7 (Int Int) Bool)
(assert (inv_main4 0 0))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main4 var1 var0) (not (<= 0 (+ (+ 268435455 (* (- 1) var1)) (- 1)))))) (inv_main5 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main4 var1 var0) (<= 0 (+ (+ 268435455 (* (- 1) var1)) (- 1))))) (inv_main7 var1 0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main7 var1 var0) (<= 0 (+ (+ 10 (* (- 1) var0)) (- 1))))) (inv_main7 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main7 var1 var0) (not (<= 0 (+ (+ 10 (* (- 1) var0)) (- 1)))))) (inv_main4 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main5 var1 var0) (not (or (not (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var2)) (- 1))) (<= 0 (+ (+ 2 (* 1 var2)) (- 1)))) (or (not (<= 0 (+ var2 (- 1)))) (<= 0 (+ var1 (- 1))))) (or (not (<= 0 (+ (* (- 1) var2) (- 1)))) (<= 0 (+ (* (- 1) var1) (- 1))))) (= var1 (+ (* 2 var3) var2)))) (= var2 0)))))))
(check-sat)