(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun inv_main10 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main16 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main19 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main22 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (<= 0 var5) (and (and (and (and (<= 0 var4) (<= 0 var3)) (<= 0 var2)) (<= 0 var1)) (<= 0 var0)))) (inv_main4 var4 var3 var2 var1 var0 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main19 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ (+ var0 (- 1)) (* (- 1) var1)) (- 1)))))) (inv_main16 var5 var4 var3 (+ var2 1) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main10 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ var0 (- 1)) (- 1))) (<= 0 (+ (+ (+ var0 (- 1)) (* (- 1) var4)) (- 1)))))) (inv_main16 var5 var4 0 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main16 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ (+ var0 (- 1)) (* (- 1) (+ var3 1))) (- 1))) (not (<= 0 (+ (+ (+ var0 (- 1)) (* (- 1) var2)) (- 1))))))) (inv_main16 var5 var4 (+ var3 1) 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main16 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ (+ var0 (- 1)) (* (- 1) var2)) (- 1))))) (inv_main19 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main22 var5 var4 var3 var2 var1 var0)) (inv_main19 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main19 var5 var4 var3 var2 var1 var0) (and (or (or (or (or (not (= var5 var4)) (not (= var4 var3))) (not (= var3 var2))) (not (= var2 var1))) (not (= var1 (+ var0 (- 2))))) (<= 0 (+ (+ (+ var0 (- 1)) (* (- 1) var1)) (- 1)))))) (inv_main19 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main19 var5 var4 var3 var2 var1 var0) (and (and (and (and (and (= var5 var4) (= var4 var3)) (= var3 var2)) (= var2 var1)) (= var1 (+ var0 (- 2)))) (<= 0 (+ (+ (+ var0 (- 1)) (* (- 1) var1)) (- 1)))))) (inv_main22 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main4 var5 var4 var3 var2 var1 var0)) (inv_main10 0 0 var3 var2 var1 4294967295))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main10 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ (+ var0 (- 1)) (* (- 1) (+ var5 1))) (- 1))) (not (<= 0 (+ (+ (+ var0 (- 1)) (* (- 1) var4)) (- 1))))))) (inv_main10 (+ var5 1) 0 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main10 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ (+ var0 (- 1)) (- 1)))) (<= 0 (+ (+ (+ var0 (- 1)) (* (- 1) var4)) (- 1)))))) (inv_main10 var5 (+ var4 1) 0 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main16 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ (+ (+ var0 (- 1)) (* (- 1) (+ var3 1))) (- 1)))) (not (<= 0 (+ (+ (+ var0 (- 1)) (* (- 1) var2)) (- 1))))))) (inv_main10 var5 (+ var4 1) (+ var3 1) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (inv_main22 var5 var4 var3 var2 var1 var0))))
(check-sat)
