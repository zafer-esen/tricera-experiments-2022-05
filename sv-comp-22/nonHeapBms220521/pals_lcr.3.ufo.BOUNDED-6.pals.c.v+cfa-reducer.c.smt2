(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main121 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main139 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main157 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main177 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main186 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main195 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main99 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (inv_main4 0 (- 1) 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int)) (or (not (and (inv_main186 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var0 0)))) (inv_main99 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var0 var7 var0 (+ var5 1) var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Int) (var40 Int) (var41 Int)) (or (not (and (inv_main4 var41 var40 var39 var38 var37 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13) (and (not (= var12 var11)) (and (not (= var10 var11)) (and (not (= var10 var12)) (and (= var9 0) (and (= var8 var11) (and (= var7 0) (and (<= 0 var11) (and (= var6 0) (and (= var5 var12) (and (= var4 0) (and (<= 0 var12) (and (= var3 0) (and (= var2 var10) (and (= var1 0) (and (<= 0 var10) (= var0 0)))))))))))))))))) (inv_main99 var41 var40 var0 var38 var40 var40 var10 var1 var2 var3 var31 var40 var40 var12 var4 var5 var6 var24 var40 var40 var11 var7 var8 var9 1 var16 var15 0 0 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int)) (or (not (and (inv_main99 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (= var24 var28) (not (= var21 var28))) (= var20 0)) (<= 0 (+ (+ 6 (* (- 1) var1)) (- 1)))))) (inv_main121 var29 var28 var27 var26 var25 var21 var23 var22 var21 1 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var28))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int)) (or (not (and (inv_main99 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (not (= var24 var28)) (not (= var21 var28))) (= var20 0)) (<= 0 (+ (+ 6 (* (- 1) var1)) (- 1)))))) (inv_main121 var29 var28 var27 var26 var25 var24 var23 var22 var21 1 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var28))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int)) (or (not (and (inv_main99 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var21 var28) (= var20 0)) (<= 0 (+ (+ 6 (* (- 1) var1)) (- 1)))))) (inv_main121 var29 var28 var27 var26 var25 var24 var23 var22 var21 1 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var28))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int)) (or (not (and (inv_main99 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var11 var28) (not (= var20 0))) (<= 0 (+ (+ 6 (* (- 1) var1)) (- 1)))))) (inv_main121 var29 var28 (+ var27 1) var26 var25 var24 var23 var22 var21 0 var19 var18 var17 var16 var15 var14 var13 var12 var28 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var11))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int)) (or (not (and (inv_main99 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ (+ var11 (* (- 1) var23)) (- 1))) (and (not (= var11 var28)) (not (= var20 0)))) (<= 0 (+ (+ 6 (* (- 1) var1)) (- 1)))))) (inv_main121 var29 var28 (+ var27 1) var26 var25 var24 var23 var22 var11 0 var19 var18 var17 var16 var15 var14 var13 var12 var28 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var11))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int)) (or (not (and (inv_main99 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var11 var23)) (and (not (<= 0 (+ (+ var11 (* (- 1) var23)) (- 1)))) (and (not (= var11 var28)) (not (= var20 0))))) (<= 0 (+ (+ 6 (* (- 1) var1)) (- 1)))))) (inv_main121 var29 var28 (+ var27 1) var26 var25 var24 var23 var22 var21 0 var19 var18 var17 var16 var15 var14 var13 var12 var28 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var11))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int)) (or (not (and (inv_main99 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var11 var23) (and (not (<= 0 (+ (+ var11 (* (- 1) var23)) (- 1)))) (and (not (= var11 var28)) (not (= var20 0))))) (<= 0 (+ (+ 6 (* (- 1) var1)) (- 1)))))) (inv_main121 var29 var28 (+ var27 1) var26 var25 var24 var23 1 var21 0 var19 var18 var17 var16 var15 var14 var13 var12 var28 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var11))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int)) (or (not (and (inv_main139 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var12 var30) (not (= var9 var30))) (= var8 0)))) (inv_main157 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var9 var11 var10 var9 1 var7 var6 var5 var4 var3 var2 var1 var0 var30))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int)) (or (not (and (inv_main139 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var12 var30)) (not (= var9 var30))) (= var8 0)))) (inv_main157 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 1 var7 var6 var5 var4 var3 var2 var1 var0 var30))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int)) (or (not (and (inv_main139 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var9 var30) (= var8 0)))) (inv_main157 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 1 var7 var6 var5 var4 var3 var2 var1 var0 var30))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int)) (or (not (and (inv_main139 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var20 var30) (not (= var8 0))))) (inv_main157 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var30 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 0 var7 var6 var5 var4 var3 var2 var1 var0 var20))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int)) (or (not (and (inv_main139 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ var20 (* (- 1) var11)) (- 1))) (and (not (= var20 var30)) (not (= var8 0)))))) (inv_main157 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var30 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var20 0 var7 var6 var5 var4 var3 var2 var1 var0 var20))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int)) (or (not (and (inv_main139 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var20 var11)) (and (not (<= 0 (+ (+ var20 (* (- 1) var11)) (- 1)))) (and (not (= var20 var30)) (not (= var8 0))))))) (inv_main157 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var30 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 0 var7 var6 var5 var4 var3 var2 var1 var0 var20))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int)) (or (not (and (inv_main139 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var20 var11) (and (not (<= 0 (+ (+ var20 (* (- 1) var11)) (- 1)))) (and (not (= var20 var30)) (not (= var8 0))))))) (inv_main157 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var30 var19 var18 var17 var16 var15 var14 var13 var12 var11 1 var9 0 var7 var6 var5 var4 var3 var2 var1 var0 var20))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int)) (or (not (and (inv_main177 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ 3 (* (- 1) var31)) (- 1))))) (inv_main186 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int)) (or (not (and (inv_main177 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= (+ (+ var26 var19) var12) 1) (not (<= 0 (+ (+ 3 (* (- 1) var31)) (- 1))))))) (inv_main186 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int)) (or (not (and (inv_main177 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= (+ (+ var26 var19) var12) 1)) (not (<= 0 (+ (+ 3 (* (- 1) var31)) (- 1))))))) (inv_main186 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int)) (or (not (and (inv_main157 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ 1 (* (- 1) (+ (+ var25 var18) var11))))))) (inv_main186 var32 var31 var30 var29 var27 var31 var26 var25 var24 var23 var22 var20 var31 var19 var18 var17 var16 var15 var13 var31 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int)) (or (not (and (inv_main157 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= (+ (+ var25 var18) var11) 0)) (and (not (<= 0 (+ var30 (- 3)))) (<= 0 (+ 1 (* (- 1) (+ (+ var25 var18) var11)))))))) (inv_main186 var32 var31 var30 var29 var27 var31 var26 var25 var24 var23 var22 var20 var31 var19 var18 var17 var16 var15 var13 var31 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int)) (or (not (and (inv_main157 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (<= 0 (+ var31 (- 3))) (<= 0 (+ 1 (* (- 1) (+ (+ var26 var19) var12))))))) (inv_main177 var33 var32 var31 var30 var28 var32 var27 var26 var25 var24 var23 var21 var32 var20 var19 var18 var17 var16 var14 var32 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int)) (or (not (and (inv_main157 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (= (+ (+ var26 var19) var12) 0) (and (not (<= 0 (+ var31 (- 3)))) (<= 0 (+ 1 (* (- 1) (+ (+ var26 var19) var12)))))))) (inv_main177 var33 var32 var31 var30 var28 var32 var27 var26 var25 var24 var23 var21 var32 var20 var19 var18 var17 var16 var14 var32 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int)) (or (not (and (inv_main186 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var0 0))) (inv_main195 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var0 var7 var0 var5 var4 var3 var2 var1 var0 var0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int)) (or (not (and (inv_main121 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var18 var29) (not (= var15 var29))) (= var14 0)))) (inv_main139 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var15 var17 var16 var15 1 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var29))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int)) (or (not (and (inv_main121 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var18 var29)) (not (= var15 var29))) (= var14 0)))) (inv_main139 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 1 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var29))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int)) (or (not (and (inv_main121 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var15 var29) (= var14 0)))) (inv_main139 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 1 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var29))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int)) (or (not (and (inv_main121 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var26 var29) (not (= var14 0))))) (inv_main139 var30 var29 var28 var27 var29 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 0 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var26))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int)) (or (not (and (inv_main121 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ var26 (* (- 1) var17)) (- 1))) (and (not (= var26 var29)) (not (= var14 0)))))) (inv_main139 var30 var29 var28 var27 var29 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var26 0 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var26))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int)) (or (not (and (inv_main121 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var26 var17)) (and (not (<= 0 (+ (+ var26 (* (- 1) var17)) (- 1)))) (and (not (= var26 var29)) (not (= var14 0))))))) (inv_main139 var30 var29 var28 var27 var29 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 0 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var26))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int)) (or (not (and (inv_main121 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var26 var17) (and (not (<= 0 (+ (+ var26 (* (- 1) var17)) (- 1)))) (and (not (= var26 var29)) (not (= var14 0))))))) (inv_main139 var30 var29 var28 var27 var29 var25 var24 var23 var22 var21 var20 var19 var18 var17 1 var15 0 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var26))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int)) (not (inv_main195 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(check-sat)
