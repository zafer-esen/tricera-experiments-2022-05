(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main4 (Int Int) Bool)
(declare-fun inv_main5 (Int Int) Bool)
(assert (inv_main4 1 0))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main4 var1 var0) (<= 0 (+ (+ 1024 (* (- 1) var0)) (- 1))))) (inv_main4 0 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main4 var1 var0) (not (<= 0 (+ (+ 1024 (* (- 1) var0)) (- 1)))))) (inv_main5 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (not (and (inv_main5 var1 var0) (not (= var1 0))))))
(check-sat)
