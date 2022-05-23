(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main10 (Int Int Int Int Int) Bool)
(declare-fun inv_main11 (Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (inv_main4 0 var3 var2 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main4 var5 var4 var3 var2 var1) (<= 0 (+ (+ 10 (* (- 1) var5)) (- 1))))) (inv_main11 (+ var5 1) var0 0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main11 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ 10 (* (- 1) var4)) (- 1))) (<= 0 (+ (+ var3 (* (- 1) var0)) (- 1)))))) (inv_main11 (+ var4 1) var3 (+ var2 1) (+ (+ var2 1) var1) (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main11 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (* (- 1) var0)) (- 1)))))) (inv_main10 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main4 var5 var4 var3 var2 var1) (not (<= 0 (+ (+ 10 (* (- 1) var5)) (- 1)))))) (inv_main10 (+ var5 1) var0 0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main11 var4 var3 var2 var1 var0) (and (not (<= 0 (+ (+ 10 (* (- 1) var4)) (- 1)))) (<= 0 (+ (+ var3 (* (- 1) var0)) (- 1)))))) (inv_main10 (+ var4 1) var3 (+ var2 1) (+ (+ var2 1) var1) (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main11 var4 var3 var2 var1 var0) (not (= (+ (+ (* var2 var2) (* (- 2) var1)) var2) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main10 var4 var3 var2 var1 var0) (not (= (+ (+ (* var2 var2) (* (- 2) var1)) var2) 0))))))
(check-sat)
