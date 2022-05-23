(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun inv_main25 (Int Int Int Int Int) Bool)
(declare-fun inv_main32 (Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (<= 0 var4) (<= 0 var3))) (inv_main4 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int)) (or (not (and (inv_main4 var18 var17 var16 var15 var14) (and (and (not (= var13 0)) (and (and (and (and (and (= var12 var11) (= var10 var9)) (= var8 var7)) (= var6 var5)) (= var4 var3)) (or (and (and (<= 0 var9) (<= 0 (+ 1 (* (- 1) var9)))) (= var13 1)) (and (not (and (<= 0 var9) (<= 0 (+ 1 (* (- 1) var9))))) (= var13 0))))) (and (<= 0 var9) (and (and (not (= var2 0)) (and (and (and (and (and (= var11 var1) (= var0 var17)) (= var7 var16)) (= var5 var15)) (= var3 var14)) (or (and (and (<= 0 var1) (<= 0 (+ 1 (* (- 1) var1)))) (= var2 1)) (and (not (and (<= 0 var1) (<= 0 (+ 1 (* (- 1) var1))))) (= var2 0))))) (<= 0 var1)))))) (inv_main25 var12 var10 1 var12 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main25 var14 var13 var12 var11 var10) (and (and (<= 0 (+ (+ var13 (* (- 1) var10)) (- 1))) (and (and (and (and (= var9 var14) (= var8 var13)) (= var7 (+ (* var12 var14) 1))) (= var6 var11)) (= var5 (+ var10 1)))) (and (and (and (and (= var4 var9) (= var3 var8)) (= var2 var7)) (= var1 (* var6 var9))) (= var0 var5))))) (inv_main25 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main25 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (* (- 1) var0)) (- 1)))))) (inv_main32 var4 var3 (* var2 (+ var4 (- 1))) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main25 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (* var2 var4) (* (- 1) var2)) (* (- 1) var1)) 1) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main32 var4 var3 var2 var1 var0) (not (= (+ (+ 1 var2) (* (- 1) var1)) 0))))))
(check-sat)
