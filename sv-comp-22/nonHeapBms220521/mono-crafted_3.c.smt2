(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main10 (Int Int Int) Bool)
(declare-fun inv_main3 (Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int) Bool)
(declare-fun inv_main5 (Int Int Int) Bool)
(assert (inv_main3 0 500000 0))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main4 var2 var1 var0) (not (<= 0 (+ (+ 1000000 (* (- 1) var2)) (- 1)))))) (inv_main5 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main5 var2 var1 var0) (<= 0 (+ var1 (- 1))))) (inv_main5 (+ var2 (- 1)) (+ var1 (- 2)) (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main5 var2 var1 var0) (not (<= 0 (+ var1 (- 1)))))) (inv_main10 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (inv_main3 var2 var1 var0)) (inv_main4 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main4 var2 var1 var0) (and (<= 0 (+ (+ 500000 (* (- 1) var2)) (- 1))) (<= 0 (+ (+ 1000000 (* (- 1) var2)) (- 1)))))) (inv_main4 (+ var2 1) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main4 var2 var1 var0) (and (not (<= 0 (+ (+ 500000 (* (- 1) var2)) (- 1)))) (<= 0 (+ (+ 1000000 (* (- 1) var2)) (- 1)))))) (inv_main4 (+ var2 1) (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main10 var2 var1 var0) (not (= var2 var0))))))
(check-sat)
