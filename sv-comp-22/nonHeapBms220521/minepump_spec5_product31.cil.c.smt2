(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main111 (Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main122 (Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main259 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main270 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main287 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main298 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main435 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main44 (Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main465 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main476 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main54 (Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main613 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main67 (Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main78 (Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (inv_main4 0 1 1 0 4 0 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main54 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (= var0 0))) (inv_main67 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main54 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (not (= var10 0)) (not (= var0 0))))) (inv_main67 var13 var12 var11 0 var9 var8 var7 var6 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main54 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (= var10 0) (not (= var0 0))))) (inv_main67 var13 var12 var11 1 var9 var8 var7 var6 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main111 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var11 0))) (inv_main122 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main111 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var9 0)) (not (= var12 0))) (not (= var11 0))))) (inv_main122 0 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int)) (or (not (and (inv_main111 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23) (and (and (and (and (= var22 0) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var21 var35) (= var20 var34)) (= var19 var33)) (= var18 var32)) (= var17 var31)) (= var16 var30)) (= var15 var29)) (= var14 var28)) (= var13 var27)) (= var12 var26)) (= var11 var25)) (= var10 var24)) (= var9 var23)) (= var8 var32)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var33 0) (= var22 1)) (and (not (= var33 0)) (= var22 0))))) (not (= var35 0))) (and (= var32 0) (not (= var35 0)))) (not (= var34 0))))) (inv_main122 0 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int)) (or (not (and (inv_main111 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23) (and (and (and (and (not (= var22 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var21 var35) (= var20 var34)) (= var19 var33)) (= var18 var32)) (= var17 var31)) (= var16 var30)) (= var15 var29)) (= var14 var28)) (= var13 var27)) (= var12 var26)) (= var11 var25)) (= var10 var24)) (= var9 var23)) (= var8 var32)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var33 0) (= var22 1)) (and (not (= var33 0)) (= var22 0))))) (not (= var35 0))) (and (= var32 0) (not (= var35 0)))) (not (= var34 0))))) (inv_main122 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main111 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var12 0) (and (= var9 0) (not (= var12 0)))) (not (= var11 0))))) (inv_main122 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int)) (or (not (and (inv_main111 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24) (and (and (and (and (= var23 0) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var22 var36) (= var21 var35)) (= var20 var34)) (= var19 var33)) (= var18 var32)) (= var17 var31)) (= var16 var30)) (= var15 var29)) (= var14 var28)) (= var13 var27)) (= var12 var26)) (= var11 var25)) (= var10 var24)) (= var9 var8)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var34 0) (= var23 1)) (and (not (= var34 0)) (= var23 0))))) (not (= var36 0))) (= var36 0)) (not (= var35 0))))) (inv_main122 0 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int)) (or (not (and (inv_main111 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24) (and (and (and (and (not (= var23 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var22 var36) (= var21 var35)) (= var20 var34)) (= var19 var33)) (= var18 var32)) (= var17 var31)) (= var16 var30)) (= var15 var29)) (= var14 var28)) (= var13 var27)) (= var12 var26)) (= var11 var25)) (= var10 var24)) (= var9 var8)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var34 0) (= var23 1)) (and (not (= var34 0)) (= var23 0))))) (not (= var36 0))) (= var36 0)) (not (= var35 0))))) (inv_main122 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main111 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var12 0) (= var12 0)) (not (= var11 0))))) (inv_main122 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main298 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var12 2))) (inv_main270 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main298 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var14 0) (not (= var12 2))))) (inv_main270 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main298 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var9 0)) (and (not (= var14 0)) (not (= var12 2)))))) (inv_main270 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main476 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var12 2))) (inv_main270 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main476 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var14 0) (not (= var12 2))))) (inv_main270 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main476 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var9 0)) (and (not (= var14 0)) (not (= var12 2)))))) (inv_main270 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main465 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var13 0))) (inv_main476 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main465 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var11 0)) (not (= var14 0))) (not (= var13 0))))) (inv_main476 0 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Int)) (or (not (and (inv_main465 var39 var38 var37 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25) (and (and (and (and (= var24 0) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var23 var39) (= var22 var38)) (= var21 var37)) (= var20 var36)) (= var19 var35)) (= var18 var34)) (= var17 var33)) (= var16 var32)) (= var15 var31)) (= var14 var30)) (= var13 var29)) (= var12 var28)) (= var11 var27)) (= var10 var26)) (= var9 var25)) (= var8 var36)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var37 0) (= var24 1)) (and (not (= var37 0)) (= var24 0))))) (not (= var39 0))) (and (= var36 0) (not (= var39 0)))) (not (= var38 0))))) (inv_main476 0 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Int)) (or (not (and (inv_main465 var39 var38 var37 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25) (and (and (and (and (not (= var24 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var23 var39) (= var22 var38)) (= var21 var37)) (= var20 var36)) (= var19 var35)) (= var18 var34)) (= var17 var33)) (= var16 var32)) (= var15 var31)) (= var14 var30)) (= var13 var29)) (= var12 var28)) (= var11 var27)) (= var10 var26)) (= var9 var25)) (= var8 var36)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var37 0) (= var24 1)) (and (not (= var37 0)) (= var24 0))))) (not (= var39 0))) (and (= var36 0) (not (= var39 0)))) (not (= var38 0))))) (inv_main476 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main465 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var14 0) (and (= var11 0) (not (= var14 0)))) (not (= var13 0))))) (inv_main476 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Int) (var40 Int)) (or (not (and (inv_main465 var40 var39 var38 var37 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26) (and (and (and (and (= var25 0) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var24 var40) (= var23 var39)) (= var22 var38)) (= var21 var37)) (= var20 var36)) (= var19 var35)) (= var18 var34)) (= var17 var33)) (= var16 var32)) (= var15 var31)) (= var14 var30)) (= var13 var29)) (= var12 var28)) (= var11 var27)) (= var10 var26)) (= var9 var8)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var38 0) (= var25 1)) (and (not (= var38 0)) (= var25 0))))) (not (= var40 0))) (= var40 0)) (not (= var39 0))))) (inv_main476 0 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Int) (var40 Int)) (or (not (and (inv_main465 var40 var39 var38 var37 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26) (and (and (and (and (not (= var25 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var24 var40) (= var23 var39)) (= var22 var38)) (= var21 var37)) (= var20 var36)) (= var19 var35)) (= var18 var34)) (= var17 var33)) (= var16 var32)) (= var15 var31)) (= var14 var30)) (= var13 var29)) (= var12 var28)) (= var11 var27)) (= var10 var26)) (= var9 var8)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var38 0) (= var25 1)) (and (not (= var38 0)) (= var25 0))))) (not (= var40 0))) (= var40 0)) (not (= var39 0))))) (inv_main476 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main465 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var14 0) (= var14 0)) (not (= var13 0))))) (inv_main476 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main44 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (= var0 0) (<= 0 (+ (+ 4 (* (- 1) var5)) (- 1)))))) (inv_main54 var13 var12 var11 var10 var9 var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main44 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (<= 0 (+ (+ 2 (* (- 1) var11)) (- 1))) (and (not (= var0 0)) (<= 0 (+ (+ 4 (* (- 1) var5)) (- 1))))))) (inv_main54 var13 var12 (+ var11 1) var10 var9 var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main44 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (not (<= 0 (+ (+ 2 (* (- 1) var11)) (- 1)))) (and (not (= var0 0)) (<= 0 (+ (+ 4 (* (- 1) var5)) (- 1))))))) (inv_main54 var13 var12 var11 var10 var9 var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main270 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var14 0) (<= 0 (+ (+ (+ var10 (- 1)) (* (- 1) var1)) (- 1)))))) (inv_main465 var14 var13 var12 var11 var10 var14 var8 var7 var6 var5 var4 var3 var2 var1 (+ var10 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main270 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ var12 (- 1))) (not (= var14 0))) (<= 0 (+ (+ (+ var10 (- 1)) (* (- 1) var1)) (- 1)))))) (inv_main465 var14 var13 (+ var12 (- 1)) var11 var10 var14 var8 var7 var6 var5 var4 var3 var2 var1 (+ var10 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main270 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (<= 0 (+ var12 (- 1)))) (not (= var14 0))) (<= 0 (+ (+ (+ var10 (- 1)) (* (- 1) var1)) (- 1)))))) (inv_main465 var14 var13 var12 var11 var10 var14 var8 var7 var6 var5 var4 var3 var2 var1 (+ var10 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main44 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (= var14 0) (not (<= 0 (+ (+ 4 (* (- 1) var6)) (- 1))))))) (inv_main287 var14 var13 var12 var11 var10 var14 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main44 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (and (<= 0 (+ var12 (- 1))) (not (= var14 0))) (not (<= 0 (+ (+ 4 (* (- 1) var6)) (- 1))))))) (inv_main287 var14 var13 (+ var12 (- 1)) var11 var10 var14 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main44 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (and (not (<= 0 (+ var12 (- 1)))) (not (= var14 0))) (not (<= 0 (+ (+ 4 (* (- 1) var6)) (- 1))))))) (inv_main287 var14 var13 var12 var11 var10 var14 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main78 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var12 0))) (inv_main111 var12 var11 var10 var9 var8 var12 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main78 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var10 (- 1))) (not (= var12 0))))) (inv_main111 var12 var11 (+ var10 (- 1)) var9 var8 var12 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main78 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ var10 (- 1)))) (not (= var12 0))))) (inv_main111 var12 var11 var10 var9 var8 var12 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main122 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var10 2))) (inv_main44 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main122 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var12 0) (not (= var10 2))))) (inv_main44 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main122 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var7 0)) (and (not (= var12 0)) (not (= var10 2)))))) (inv_main44 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (inv_main4 var11 var10 var9 var8 var7 var6 var5 var4)) (inv_main44 var11 var10 var9 var8 var7 0 var5 1 0 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main476 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var9 0) (and (not (= var14 0)) (not (= var12 2)))))) (inv_main613 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var12 var14))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main287 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var13 0))) (inv_main298 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main287 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var11 0)) (not (= var14 0))) (not (= var13 0))))) (inv_main298 0 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Int)) (or (not (and (inv_main287 var39 var38 var37 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25) (and (and (and (and (= var24 0) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var23 var39) (= var22 var38)) (= var21 var37)) (= var20 var36)) (= var19 var35)) (= var18 var34)) (= var17 var33)) (= var16 var32)) (= var15 var31)) (= var14 var30)) (= var13 var29)) (= var12 var28)) (= var11 var27)) (= var10 var26)) (= var9 var25)) (= var8 var36)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var37 0) (= var24 1)) (and (not (= var37 0)) (= var24 0))))) (not (= var39 0))) (and (= var36 0) (not (= var39 0)))) (not (= var38 0))))) (inv_main298 0 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Int)) (or (not (and (inv_main287 var39 var38 var37 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25) (and (and (and (and (not (= var24 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var23 var39) (= var22 var38)) (= var21 var37)) (= var20 var36)) (= var19 var35)) (= var18 var34)) (= var17 var33)) (= var16 var32)) (= var15 var31)) (= var14 var30)) (= var13 var29)) (= var12 var28)) (= var11 var27)) (= var10 var26)) (= var9 var25)) (= var8 var36)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var37 0) (= var24 1)) (and (not (= var37 0)) (= var24 0))))) (not (= var39 0))) (and (= var36 0) (not (= var39 0)))) (not (= var38 0))))) (inv_main298 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main287 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var14 0) (and (= var11 0) (not (= var14 0)))) (not (= var13 0))))) (inv_main298 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Int) (var40 Int)) (or (not (and (inv_main287 var40 var39 var38 var37 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26) (and (and (and (and (= var25 0) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var24 var40) (= var23 var39)) (= var22 var38)) (= var21 var37)) (= var20 var36)) (= var19 var35)) (= var18 var34)) (= var17 var33)) (= var16 var32)) (= var15 var31)) (= var14 var30)) (= var13 var29)) (= var12 var28)) (= var11 var27)) (= var10 var26)) (= var9 var8)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var38 0) (= var25 1)) (and (not (= var38 0)) (= var25 0))))) (not (= var40 0))) (= var40 0)) (not (= var39 0))))) (inv_main298 0 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Int) (var40 Int)) (or (not (and (inv_main287 var40 var39 var38 var37 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26) (and (and (and (and (not (= var25 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var24 var40) (= var23 var39)) (= var22 var38)) (= var21 var37)) (= var20 var36)) (= var19 var35)) (= var18 var34)) (= var17 var33)) (= var16 var32)) (= var15 var31)) (= var14 var30)) (= var13 var29)) (= var12 var28)) (= var11 var27)) (= var10 var26)) (= var9 var8)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var38 0) (= var25 1)) (and (not (= var38 0)) (= var25 0))))) (not (= var40 0))) (= var40 0)) (not (= var39 0))))) (inv_main298 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main287 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var14 0) (= var14 0)) (not (= var13 0))))) (inv_main298 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main298 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var9 0) (and (not (= var14 0)) (not (= var12 2)))))) (inv_main435 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var12 var14))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main67 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (not (= var0 0)))) (inv_main78 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main67 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (= var1 0) (= var0 0)))) (inv_main78 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main67 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (= var14 0) (and (not (= var1 0)) (= var0 0))))) (inv_main78 var14 0 var12 var11 var10 var9 var8 var7 var6 var5 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main67 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (not (= var14 0)) (and (not (= var1 0)) (= var0 0))))) (inv_main78 0 0 var12 var11 var10 var9 var8 var7 var6 var5 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main122 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var7 0) (and (not (= var12 0)) (not (= var10 2)))))) (inv_main259 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var10 var12))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (not (inv_main259 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int)) (not (inv_main435 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int)) (not (inv_main613 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(check-sat)
