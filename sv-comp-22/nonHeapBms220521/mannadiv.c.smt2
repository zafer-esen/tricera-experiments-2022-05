(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main24 (Int Int Int Int Int) Bool)
(declare-fun inv_main25 (Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (inv_main4 var4 var3 var2 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int)) (or (not (and (inv_main4 var18 var17 var16 var15 var14) (and (and (not (= var13 0)) (and (and (and (and (and (= var12 var11) (= var10 var9)) (= var8 var7)) (= var6 var5)) (= var4 var3)) (or (and (not (= var9 0)) (= var13 1)) (and (= var9 0) (= var13 0))))) (and (not (= var2 0)) (and (and (and (and (and (= var11 var1) (= var9 var0)) (= var7 var16)) (= var5 var15)) (= var3 var14)) (or (and (<= 0 var1) (= var2 1)) (and (not (<= 0 var1)) (= var2 0)))))))) (inv_main25 var12 var10 0 0 var12))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main25 var4 var3 var2 var1 var0) (and (= (+ var1 1) var3) (not (= var0 0))))) (inv_main25 var4 var3 (+ var2 1) 0 (+ var0 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main25 var4 var3 var2 var1 var0) (and (not (= (+ var1 1) var3)) (not (= var0 0))))) (inv_main25 var4 var3 var2 (+ var1 1) (+ var0 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main25 var4 var3 var2 var1 var0) (= var0 0))) (inv_main24 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main25 var4 var3 var2 var1 var0) (not (= (+ (+ (* var2 var3) var1) var0) var4))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main24 var4 var3 var2 var1 var0) (not (= (+ (* var2 var3) var1) var4))))))
(check-sat)
