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
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main4 var5 var4 var3 var2 var1) (<= 0 (+ (+ 2 (* (- 1) var5)) (- 1))))) (inv_main11 (+ var5 1) var0 0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main11 var9 var8 var7 var6 var5) (and (and (<= 0 (+ (+ 2 (* (- 1) var4)) (- 1))) (<= 0 (+ (+ var8 (* (- 1) var5)) (- 1)))) (and (and (and (and (= var4 var9) (= var3 var8)) (= var2 (+ var7 1))) (= var1 (+ (* (+ var7 1) (+ var7 1)) var6))) (= var0 (+ var5 1)))))) (inv_main11 (+ var4 1) var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main11 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (* (- 1) var0)) (- 1)))))) (inv_main10 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main4 var5 var4 var3 var2 var1) (not (<= 0 (+ (+ 2 (* (- 1) var5)) (- 1)))))) (inv_main10 (+ var5 1) var0 0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main11 var9 var8 var7 var6 var5) (and (and (not (<= 0 (+ (+ 2 (* (- 1) var4)) (- 1)))) (<= 0 (+ (+ var8 (* (- 1) var5)) (- 1)))) (and (and (and (and (= var4 var9) (= var3 var8)) (= var2 (+ var7 1))) (= var1 (+ (* (+ var7 1) (+ var7 1)) var6))) (= var0 (+ var5 1)))))) (inv_main10 (+ var4 1) var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main11 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (* 6 var1) (* (- 1) (* (* (* 2 var2) var2) var2))) (* (- 1) (* (* 3 var2) var2))) (* (- 1) var2)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main10 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (* 6 var1) (* (- 1) (* (* (* 2 var2) var2) var2))) (* (- 1) (* (* 3 var2) var2))) (* (- 1) var2)) 0))))))
(check-sat)
