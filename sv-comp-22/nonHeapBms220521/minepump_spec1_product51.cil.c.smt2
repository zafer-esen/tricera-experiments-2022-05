(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun inv_main105 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main252 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main263 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main268 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main279 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main39 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main426 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main444 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main455 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main49 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main602 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main62 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main73 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main94 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (inv_main4 0 1 4 1 0 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main105 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var7 0))) (inv_main39 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main105 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var11 0) (not (= var7 0))))) (inv_main39 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (inv_main4 var10 var9 var8 var7 var6 var5 var4)) (inv_main39 var10 var9 var8 var7 var6 var5 1 0 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main62 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (not (= var0 0)))) (inv_main73 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main62 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (= var1 0) (= var0 0)))) (inv_main73 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main62 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (= var13 0) (and (not (= var1 0)) (= var0 0))))) (inv_main73 var13 0 var11 var10 var9 var8 var7 var6 var5 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main62 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (not (= var13 0)) (and (not (= var1 0)) (= var0 0))))) (inv_main73 0 0 var11 var10 var9 var8 var7 var6 var5 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main279 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var9 0))) (inv_main263 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main279 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var13 0) (not (= var9 0))))) (inv_main263 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main455 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var9 0))) (inv_main263 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main455 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var13 0) (not (= var9 0))))) (inv_main263 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main73 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var11 0))) (inv_main94 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main73 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var8 (- 1))) (not (= var11 0))))) (inv_main94 var11 var10 var9 (+ var8 (- 1)) var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main73 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ var8 (- 1)))) (not (= var11 0))))) (inv_main94 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main268 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var12 0))) (inv_main279 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int)) (or (not (and (inv_main268 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23) (and (and (and (= var22 0) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var21 var36) (= var20 var35)) (= var19 var34)) (= var18 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var24)) (= var8 var23)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var33 0) (= var22 1)) (and (not (= var33 0)) (= var22 0))))) (not (= var36 0))) (not (= var35 0))))) (inv_main279 0 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int)) (or (not (and (inv_main268 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23) (and (and (and (not (<= 0 (+ (+ 2 (* (- 1) var22)) (- 1)))) (= var21 0)) (and (and (not (= var20 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var21 var36) (= var19 var35)) (= var18 var34)) (= var22 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var24)) (= var8 var23)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var33 0) (= var20 1)) (and (not (= var33 0)) (= var20 0))))) (not (= var36 0)))) (not (= var35 0))))) (inv_main279 1 var19 var18 var22 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int)) (or (not (and (inv_main268 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23) (and (and (and (<= 0 (+ (+ 2 (* (- 1) var22)) (- 1))) (= var21 0)) (and (and (not (= var20 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var21 var36) (= var19 var35)) (= var18 var34)) (= var22 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var24)) (= var8 var23)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var33 0) (= var20 1)) (and (not (= var33 0)) (= var20 0))))) (not (= var36 0)))) (not (= var35 0))))) (inv_main279 var21 var19 var18 var22 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int)) (or (not (and (inv_main268 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23) (and (and (not (= var22 0)) (and (and (not (= var21 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var22 var36) (= var20 var35)) (= var19 var34)) (= var18 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var24)) (= var8 var23)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var33 0) (= var21 1)) (and (not (= var33 0)) (= var21 0))))) (not (= var36 0)))) (not (= var35 0))))) (inv_main279 var22 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main268 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (not (<= 0 (+ (+ 2 (* (- 1) var10)) (- 1)))) (= var13 0)) (= var13 0)) (not (= var12 0))))) (inv_main279 1 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main268 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (<= 0 (+ (+ 2 (* (- 1) var10)) (- 1))) (= var13 0)) (= var13 0)) (not (= var12 0))))) (inv_main279 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main268 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var13 0)) (= var13 0)) (not (= var12 0))))) (inv_main279 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main455 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var13 0)) (not (= var9 0))))) (inv_main602 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var9 var13))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main444 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var12 0))) (inv_main455 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int)) (or (not (and (inv_main444 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23) (and (and (and (= var22 0) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var21 var36) (= var20 var35)) (= var19 var34)) (= var18 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var24)) (= var8 var23)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var33 0) (= var22 1)) (and (not (= var33 0)) (= var22 0))))) (not (= var36 0))) (not (= var35 0))))) (inv_main455 0 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int)) (or (not (and (inv_main444 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23) (and (and (and (not (<= 0 (+ (+ 2 (* (- 1) var22)) (- 1)))) (= var21 0)) (and (and (not (= var20 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var21 var36) (= var19 var35)) (= var18 var34)) (= var22 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var24)) (= var8 var23)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var33 0) (= var20 1)) (and (not (= var33 0)) (= var20 0))))) (not (= var36 0)))) (not (= var35 0))))) (inv_main455 1 var19 var18 var22 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int)) (or (not (and (inv_main444 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23) (and (and (and (<= 0 (+ (+ 2 (* (- 1) var22)) (- 1))) (= var21 0)) (and (and (not (= var20 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var21 var36) (= var19 var35)) (= var18 var34)) (= var22 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var24)) (= var8 var23)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var33 0) (= var20 1)) (and (not (= var33 0)) (= var20 0))))) (not (= var36 0)))) (not (= var35 0))))) (inv_main455 var21 var19 var18 var22 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int)) (or (not (and (inv_main444 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23) (and (and (not (= var22 0)) (and (and (not (= var21 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var22 var36) (= var20 var35)) (= var19 var34)) (= var18 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var24)) (= var8 var23)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var33 0) (= var21 1)) (and (not (= var33 0)) (= var21 0))))) (not (= var36 0)))) (not (= var35 0))))) (inv_main455 var22 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main444 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (not (<= 0 (+ (+ 2 (* (- 1) var10)) (- 1)))) (= var13 0)) (= var13 0)) (not (= var12 0))))) (inv_main455 1 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main444 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (<= 0 (+ (+ 2 (* (- 1) var10)) (- 1))) (= var13 0)) (= var13 0)) (not (= var12 0))))) (inv_main455 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main444 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var13 0)) (= var13 0)) (not (= var12 0))))) (inv_main455 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main263 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var13 0) (<= 0 (+ (+ (+ var11 (- 1)) (* (- 1) var1)) (- 1)))))) (inv_main444 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var11 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main263 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var10 (- 1))) (and (not (= var13 0)) (<= 0 (+ (+ (+ var11 (- 1)) (* (- 1) var1)) (- 1))))))) (inv_main444 var13 var12 var11 (+ var10 (- 1)) var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var11 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main263 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ var10 (- 1)))) (and (not (= var13 0)) (<= 0 (+ (+ (+ var11 (- 1)) (* (- 1) var1)) (- 1))))))) (inv_main444 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var11 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main94 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var10 0))) (inv_main105 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int)) (or (not (and (inv_main94 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21) (and (and (and (= var20 0) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var19 var32) (= var18 var31)) (= var17 var30)) (= var16 var29)) (= var15 var28)) (= var14 var27)) (= var13 var26)) (= var12 var25)) (= var11 var24)) (= var10 var23)) (= var9 var22)) (= var8 var21)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var29 0) (= var20 1)) (and (not (= var29 0)) (= var20 0))))) (not (= var32 0))) (not (= var31 0))))) (inv_main105 0 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int)) (or (not (and (inv_main94 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21) (and (and (and (not (<= 0 (+ (+ 2 (* (- 1) var20)) (- 1)))) (= var19 0)) (and (and (not (= var18 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var19 var32) (= var17 var31)) (= var16 var30)) (= var20 var29)) (= var15 var28)) (= var14 var27)) (= var13 var26)) (= var12 var25)) (= var11 var24)) (= var10 var23)) (= var9 var22)) (= var8 var21)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var29 0) (= var18 1)) (and (not (= var29 0)) (= var18 0))))) (not (= var32 0)))) (not (= var31 0))))) (inv_main105 1 var17 var16 var20 var15 var14 var13 var12 var11 var10 var9 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int)) (or (not (and (inv_main94 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21) (and (and (and (<= 0 (+ (+ 2 (* (- 1) var20)) (- 1))) (= var19 0)) (and (and (not (= var18 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var19 var32) (= var17 var31)) (= var16 var30)) (= var20 var29)) (= var15 var28)) (= var14 var27)) (= var13 var26)) (= var12 var25)) (= var11 var24)) (= var10 var23)) (= var9 var22)) (= var8 var21)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var29 0) (= var18 1)) (and (not (= var29 0)) (= var18 0))))) (not (= var32 0)))) (not (= var31 0))))) (inv_main105 var19 var17 var16 var20 var15 var14 var13 var12 var11 var10 var9 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int)) (or (not (and (inv_main94 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21) (and (and (not (= var20 0)) (and (and (not (= var19 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var20 var32) (= var18 var31)) (= var17 var30)) (= var16 var29)) (= var15 var28)) (= var14 var27)) (= var13 var26)) (= var12 var25)) (= var11 var24)) (= var10 var23)) (= var9 var22)) (= var8 var21)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var29 0) (= var19 1)) (and (not (= var29 0)) (= var19 0))))) (not (= var32 0)))) (not (= var31 0))))) (inv_main105 var20 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main94 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (not (<= 0 (+ (+ 2 (* (- 1) var8)) (- 1)))) (= var11 0)) (= var11 0)) (not (= var10 0))))) (inv_main105 1 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main94 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (<= 0 (+ (+ 2 (* (- 1) var8)) (- 1))) (= var11 0)) (= var11 0)) (not (= var10 0))))) (inv_main105 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main94 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var11 0)) (= var11 0)) (not (= var10 0))))) (inv_main105 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (= var0 0))) (inv_main62 var12 var11 var10 var9 var8 var7 var6 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (not (= var8 0)) (not (= var0 0))))) (inv_main62 var12 var11 var10 var9 0 var7 var6 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (= var8 0) (not (= var0 0))))) (inv_main62 var12 var11 var10 var9 1 var7 var6 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main39 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (= var13 0) (not (<= 0 (+ (+ 4 (* (- 1) var6)) (- 1))))))) (inv_main268 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main39 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (and (<= 0 (+ var10 (- 1))) (not (= var13 0))) (not (<= 0 (+ (+ 4 (* (- 1) var6)) (- 1))))))) (inv_main268 var13 var12 var11 (+ var10 (- 1)) var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main39 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (and (not (<= 0 (+ var10 (- 1)))) (not (= var13 0))) (not (<= 0 (+ (+ 4 (* (- 1) var6)) (- 1))))))) (inv_main268 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main279 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var13 0)) (not (= var9 0))))) (inv_main426 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var9 var13))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main39 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (= var0 0) (<= 0 (+ (+ 4 (* (- 1) var5)) (- 1)))))) (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main39 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (<= 0 (+ (+ 2 (* (- 1) var9)) (- 1))) (and (not (= var0 0)) (<= 0 (+ (+ 4 (* (- 1) var5)) (- 1))))))) (inv_main49 var12 var11 var10 (+ var9 1) var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main39 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (not (<= 0 (+ (+ 2 (* (- 1) var9)) (- 1)))) (and (not (= var0 0)) (<= 0 (+ (+ 4 (* (- 1) var5)) (- 1))))))) (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main105 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var11 0)) (not (= var7 0))))) (inv_main252 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var7 var11))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (not (inv_main252 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int)) (not (inv_main426 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int)) (not (inv_main602 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(check-sat)