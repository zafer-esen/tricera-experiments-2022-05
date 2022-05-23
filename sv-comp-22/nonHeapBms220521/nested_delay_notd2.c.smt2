(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun inv_main17 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main2 (Int Int) Bool)
(declare-fun inv_main22 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main29 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main38 (Int Int Int Int Int Int Int) Bool)
(assert (inv_main2 0 20))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main22 var14 var13 var12 var11 var10 var9 var8) (and (and (not (= var7 0)) (= var6 0)) (and (and (and (and (and (and (and (= var5 var14) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var6 var9)) (= var0 var8)) (or (and (= var10 var14) (= var7 1)) (and (not (= var10 var14)) (= var7 0))))))) (inv_main29 var5 var4 (+ var3 1) var2 var1 var6 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int)) (or (not (and (inv_main22 var22 var21 var20 var19 var18 var17 var16) (and (and (not (= var15 0)) (and (= var14 1) (and (and (and (and (and (and (and (= var13 var12) (= var11 var10)) (= var9 var8)) (= var7 var6)) (= var5 var4)) (= var3 var14)) (= var2 var1)) (or (and (<= 0 (+ var12 (* (- 1) var10))) (= var15 1)) (and (not (<= 0 (+ var12 (* (- 1) var10)))) (= var15 0)))))) (and (or (= var0 0) (not (= var14 0))) (and (and (and (and (and (and (and (= var12 var22) (= var10 var21)) (= var8 var20)) (= var6 var19)) (= var4 var18)) (= var14 var17)) (= var1 var16)) (or (and (= var18 var22) (= var0 1)) (and (not (= var18 var22)) (= var0 0)))))))) (inv_main29 var13 var11 var9 var7 var5 var3 (+ var2 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main22 var14 var13 var12 var11 var10 var9 var8) (and (not (= var7 1)) (and (or (= var6 0) (not (= var7 0))) (and (and (and (and (and (and (and (= var5 var14) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var7 var9)) (= var0 var8)) (or (and (= var10 var14) (= var6 1)) (and (not (= var10 var14)) (= var6 0)))))))) (inv_main29 var5 var4 var3 var2 var1 var7 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int)) (or (not (and (inv_main22 var22 var21 var20 var19 var18 var17 var16) (and (and (= var15 0) (and (= var14 1) (and (and (and (and (and (and (and (= var13 var12) (= var11 var10)) (= var9 var8)) (= var7 var6)) (= var5 var4)) (= var3 var14)) (= var2 var1)) (or (and (<= 0 (+ var12 (* (- 1) var10))) (= var15 1)) (and (not (<= 0 (+ var12 (* (- 1) var10)))) (= var15 0)))))) (and (or (= var0 0) (not (= var14 0))) (and (and (and (and (and (and (and (= var12 var22) (= var10 var21)) (= var8 var20)) (= var6 var19)) (= var4 var18)) (= var14 var17)) (= var1 var16)) (or (and (= var18 var22) (= var0 1)) (and (not (= var18 var22)) (= var0 0)))))))) (inv_main29 var13 var11 var9 var7 var5 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main17 var14 var13 var12 var11 var10 var9 var8) (and (and (and (not (= var7 0)) (= var9 0)) (and (and (and (and (and (and (and (= var6 var14) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (or (and (= var10 (+ var14 1)) (= var7 1)) (and (not (= var10 (+ var14 1))) (= var7 0))))) (not (<= 0 (+ (+ var13 (* (- 1) var10)) (- 1))))))) (inv_main22 var6 var5 (+ var4 3) (+ var3 3) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main17 var6 var5 var4 var3 var2 var1 var0) (and (not (= var1 0)) (not (<= 0 (+ (+ var5 (* (- 1) var2)) (- 1))))))) (inv_main22 var6 var5 (+ var4 2) (+ var3 2) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main17 var14 var13 var12 var11 var10 var9 var8) (and (and (and (= var7 0) (= var9 0)) (and (and (and (and (and (and (and (= var6 var14) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (or (and (= var10 (+ var14 1)) (= var7 1)) (and (not (= var10 (+ var14 1))) (= var7 0))))) (not (<= 0 (+ (+ var13 (* (- 1) var10)) (- 1))))))) (inv_main22 var6 var5 (+ var4 2) (+ var3 2) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (inv_main38 var6 var5 var4 var3 var2 var1 var0)) (inv_main17 var6 var5 var4 var3 0 1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main17 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var2 (* (- 1) var6))) (<= 0 (+ (+ var5 (* (- 1) var2)) (- 1)))))) (inv_main17 var6 var5 var4 var3 (+ var2 1) 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main17 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ var2 (* (- 1) var6)))) (<= 0 (+ (+ var5 (* (- 1) var2)) (- 1)))))) (inv_main17 var6 var5 var4 var3 (+ var2 1) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main2 var5 var4) (and (not (= var3 0)) (and (and (= var2 var1) (= var0 var4)) (or (and (<= 0 (+ var1 (- 1))) (= var3 1)) (and (not (<= 0 (+ var1 (- 1)))) (= var3 0))))))) (inv_main17 var2 var0 0 0 0 1 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main29 var6 var5 var4 var3 var2 var1 var0) (not (= var0 var5)))) (inv_main38 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main29 var6 var5 var4 var3 var2 var1 var0) (= var0 var5))) (inv_main38 var6 var5 0 1 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (not (and (inv_main38 var6 var5 var4 var3 var2 var1 var0) (or (not (= var4 var3)) (not (= var2 var5)))))))
(check-sat)
