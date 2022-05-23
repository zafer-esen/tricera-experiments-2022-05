(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main10 (Int Int Int) Bool)
(declare-fun inv_main14 (Int Int Int) Bool)
(declare-fun inv_main3 (Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int) Bool)
(declare-fun inv_main5 (Int Int Int) Bool)
(assert (inv_main3 0 500000 0))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (inv_main3 var2 var1 var0)) (inv_main4 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main4 var2 var1 var0) (and (<= 0 (+ (+ 500000 (* (- 1) var2)) (- 1))) (<= 0 (+ (+ 1000000 (* (- 1) var2)) (- 1)))))) (inv_main4 (+ var2 1) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main4 var2 var1 var0) (and (not (<= 0 (+ (+ 500000 (* (- 1) var2)) (- 1)))) (<= 0 (+ (+ 1000000 (* (- 1) var2)) (- 1)))))) (inv_main4 (+ var2 1) (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (inv_main10 var2 var1 var0)) (inv_main14 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main5 var2 var1 var0) (not (<= 0 (+ var1 (- 1)))))) (inv_main10 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main4 var2 var1 var0) (not (<= 0 (+ (+ 1000000 (* (- 1) var2)) (- 1)))))) (inv_main5 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main5 var2 var1 var0) (<= 0 (+ var1 (- 1))))) (inv_main5 (+ var2 (- 1)) (+ var1 (- 2)) (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main10 var2 var1 var0) (not (or (not (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var3)) (- 1))) (<= 0 (+ (+ 2 (* 1 var3)) (- 1)))) (or (not (<= 0 (+ var3 (- 1)))) (<= 0 (+ var0 (- 1))))) (or (not (<= 0 (+ (* (- 1) var3) (- 1)))) (<= 0 (+ (* (- 1) var0) (- 1))))) (= var0 (+ (* 2 var4) var3)))) (= var3 0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main14 var2 var1 var0) (not (or (not (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var3)) (- 1))) (<= 0 (+ (+ 2 (* 1 var3)) (- 1)))) (or (not (<= 0 (+ var3 (- 1)))) (<= 0 (+ var2 (- 1))))) (or (not (<= 0 (+ (* (- 1) var3) (- 1)))) (<= 0 (+ (* (- 1) var2) (- 1))))) (= var2 (+ (* 2 var4) var3)))) (= var3 0)))))))
(check-sat)
