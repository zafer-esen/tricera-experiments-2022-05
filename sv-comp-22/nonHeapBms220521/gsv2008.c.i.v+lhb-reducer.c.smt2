(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main17 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main31 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (inv_main4 0 0 0 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main17 var5 var4 var3 var2 var1 var0) (<= 0 (+ (* (- 1) var2) (- 1))))) (inv_main17 var5 var1 var3 (+ var2 var1) (+ var1 1) var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main4 var5 var4 var3 var2 var1) (and (<= 0 (+ (+ 1000000 (* (- 1) var0)) (- 1))) (<= 0 (+ (+ var0 1000) (- 1)))))) (inv_main17 var5 var0 var3 (+ (- 50) var0) (+ var0 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main17 var12 var11 var10 var9 var8 var7) (and (and (= var6 0) (and (and (and (and (and (and (= var5 var12) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var11)) (or (and (<= 0 (+ var8 (- 1))) (= var6 1)) (and (not (<= 0 (+ var8 (- 1)))) (= var6 0))))) (not (<= 0 (+ (* (- 1) var9) (- 1))))))) (inv_main31 var5 var4 var3 var2 var1 var0 var6 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (inv_main31 var7 var6 var5 var4 var3 var2 var1 var0))))
(check-sat)
