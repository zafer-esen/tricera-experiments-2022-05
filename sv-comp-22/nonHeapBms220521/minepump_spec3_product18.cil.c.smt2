(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun inv_main178 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main189 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main194 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main205 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main285 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main303 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main314 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main39 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main394 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main49 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main62 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main73 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main87 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main98 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (inv_main4 4 1 0 0 1 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var9 0)))) (inv_main39 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var10 2)) (= var9 0)))) (inv_main39 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var8 0)) (and (= var10 2) (= var9 0))))) (inv_main39 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (inv_main4 var10 var9 var8 var7 var6 var5 var4)) (inv_main39 var10 var9 var8 var7 var6 var5 1 0 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main62 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (not (= var1 0)) (= var0 0)))) (inv_main73 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main62 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (= var1 0) (= var0 0)))) (inv_main73 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main62 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (not (= var0 0)))) (inv_main73 var12 var11 var10 var9 1 var7 var6 var5 var4 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main205 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var11 0)))) (inv_main189 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main205 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var12 2)) (= var11 0)))) (inv_main189 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main205 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var10 0)) (and (= var12 2) (= var11 0))))) (inv_main189 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main314 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var11 0)))) (inv_main189 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main314 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var12 2)) (= var11 0)))) (inv_main189 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main314 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var10 0)) (and (= var12 2) (= var11 0))))) (inv_main189 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main314 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var10 0) (and (= var12 2) (= var11 0))))) (inv_main394 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var11 var12 var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main205 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var10 0) (and (= var12 2) (= var11 0))))) (inv_main285 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var11 var12 var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main39 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (= var10 0) (not (<= 0 (+ (+ 4 (* (- 1) var6)) (- 1))))))) (inv_main194 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main39 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (and (<= 0 (+ var12 (- 1))) (not (= var10 0))) (not (<= 0 (+ (+ 4 (* (- 1) var6)) (- 1))))))) (inv_main194 var13 (+ var12 (- 1)) var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main39 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (and (not (<= 0 (+ var12 (- 1)))) (not (= var10 0))) (not (<= 0 (+ (+ 4 (* (- 1) var6)) (- 1))))))) (inv_main194 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var8 0) (and (= var10 2) (= var9 0))))) (inv_main178 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var9 var10 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main39 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (= var0 0) (<= 0 (+ (+ 4 (* (- 1) var5)) (- 1)))))) (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main39 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (<= 0 (+ (+ 2 (* (- 1) var11)) (- 1))) (and (not (= var0 0)) (<= 0 (+ (+ 4 (* (- 1) var5)) (- 1))))))) (inv_main49 var12 (+ var11 1) var10 var9 var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main39 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (not (<= 0 (+ (+ 2 (* (- 1) var11)) (- 1)))) (and (not (= var0 0)) (<= 0 (+ (+ 4 (* (- 1) var5)) (- 1))))))) (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main194 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var9 0))) (inv_main205 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int)) (or (not (and (inv_main194 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23) (and (and (and (= var22 0) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var21 var36) (= var20 var35)) (= var19 var34)) (= var18 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var24)) (= var8 var23)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var35 0) (= var22 1)) (and (not (= var35 0)) (= var22 0))))) (not (= var33 0))) (not (= var32 0))))) (inv_main205 var21 var20 var19 0 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int)) (or (not (and (inv_main194 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23) (and (and (and (not (= var22 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var21 var36) (= var20 var35)) (= var19 var34)) (= var18 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var24)) (= var8 var23)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var35 0) (= var22 1)) (and (not (= var35 0)) (= var22 0))))) (not (= var33 0))) (not (= var32 0))))) (inv_main205 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main194 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var10 0) (not (= var9 0))))) (inv_main205 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main73 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var8 0))) (inv_main87 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main73 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var10 (- 1))) (not (= var8 0))))) (inv_main87 var11 (+ var10 (- 1)) var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main73 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ var10 (- 1)))) (not (= var8 0))))) (inv_main87 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main87 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var7 0))) (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int)) (or (not (and (inv_main87 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21) (and (and (and (= var20 0) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var19 var32) (= var18 var31)) (= var17 var30)) (= var16 var29)) (= var15 var28)) (= var14 var27)) (= var13 var26)) (= var12 var25)) (= var11 var24)) (= var10 var23)) (= var9 var22)) (= var8 var21)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var31 0) (= var20 1)) (and (not (= var31 0)) (= var20 0))))) (not (= var29 0))) (not (= var28 0))))) (inv_main98 var19 var18 var17 0 var15 var14 var13 var12 var11 var10 var9 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int)) (or (not (and (inv_main87 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21) (and (and (and (not (= var20 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var19 var32) (= var18 var31)) (= var17 var30)) (= var16 var29)) (= var15 var28)) (= var14 var27)) (= var13 var26)) (= var12 var25)) (= var11 var24)) (= var10 var23)) (= var9 var22)) (= var8 var21)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var31 0) (= var20 1)) (and (not (= var31 0)) (= var20 0))))) (not (= var29 0))) (not (= var28 0))))) (inv_main98 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main87 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var8 0) (not (= var7 0))))) (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main303 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var9 0))) (inv_main314 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int)) (or (not (and (inv_main303 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23) (and (and (and (= var22 0) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var21 var36) (= var20 var35)) (= var19 var34)) (= var18 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var24)) (= var8 var23)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var35 0) (= var22 1)) (and (not (= var35 0)) (= var22 0))))) (not (= var33 0))) (not (= var32 0))))) (inv_main314 var21 var20 var19 0 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int)) (or (not (and (inv_main303 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23) (and (and (and (not (= var22 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var21 var36) (= var20 var35)) (= var19 var34)) (= var18 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var24)) (= var8 var23)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var35 0) (= var22 1)) (and (not (= var35 0)) (= var22 0))))) (not (= var33 0))) (not (= var32 0))))) (inv_main314 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main303 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var10 0) (not (= var9 0))))) (inv_main314 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (= var0 0))) (inv_main62 var12 var11 var10 var9 var8 var7 var6 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (not (= var10 0)) (not (= var0 0))))) (inv_main62 var12 var11 0 var9 var8 var7 var6 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (= var10 0) (not (= var0 0))))) (inv_main62 var12 var11 1 var9 var8 var7 var6 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main189 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var10 0) (<= 0 (+ (+ (+ var13 (- 1)) (* (- 1) var1)) (- 1)))))) (inv_main303 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var13 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main189 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var12 (- 1))) (and (not (= var10 0)) (<= 0 (+ (+ (+ var13 (- 1)) (* (- 1) var1)) (- 1))))))) (inv_main303 var13 (+ var12 (- 1)) var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var13 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main189 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ var12 (- 1)))) (and (not (= var10 0)) (<= 0 (+ (+ (+ var13 (- 1)) (* (- 1) var1)) (- 1))))))) (inv_main303 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var13 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (not (inv_main178 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int)) (not (inv_main285 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int)) (not (inv_main394 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(check-sat)
