(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun inv_main244 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main255 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main260 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main271 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main39 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main417 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main435 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main446 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main49 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main592 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main62 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main73 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main87 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main98 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (inv_main4 1 0 4 0 1 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main73 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var8 0))) (inv_main87 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main73 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var11 (- 1))) (not (= var8 0))))) (inv_main87 (+ var11 (- 1)) var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main73 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ var11 (- 1)))) (not (= var8 0))))) (inv_main87 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main39 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (= var10 0) (not (<= 0 (+ (+ 4 (* (- 1) var6)) (- 1))))))) (inv_main260 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main39 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (and (<= 0 (+ var13 (- 1))) (not (= var10 0))) (not (<= 0 (+ (+ 4 (* (- 1) var6)) (- 1))))))) (inv_main260 (+ var13 (- 1)) var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main39 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (and (not (<= 0 (+ var13 (- 1)))) (not (= var10 0))) (not (<= 0 (+ (+ 4 (* (- 1) var6)) (- 1))))))) (inv_main260 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main446 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var10 0) (and (= var13 2) (= var12 0))))) (inv_main592 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var12 var13 var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main87 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var7 0))) (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main87 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var10 0)) (not (= var8 0))) (not (= var7 0))))) (inv_main98 var11 var10 var9 0 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int)) (or (not (and (inv_main87 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22) (and (and (and (and (= var21 0) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var20 var33) (= var19 var32)) (= var18 var31)) (= var17 var30)) (= var16 var29)) (= var15 var28)) (= var14 var27)) (= var13 var26)) (= var12 var25)) (= var11 var24)) (= var10 var23)) (= var9 var22)) (= var8 var32)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var33 0) (= var21 1)) (and (not (= var33 0)) (= var21 0))))) (not (= var30 0))) (and (= var32 0) (not (= var30 0)))) (not (= var29 0))))) (inv_main98 var20 var19 var18 0 var16 var15 var14 var13 var12 var11 var10 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int)) (or (not (and (inv_main87 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22) (and (and (and (and (not (= var21 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var20 var33) (= var19 var32)) (= var18 var31)) (= var17 var30)) (= var16 var29)) (= var15 var28)) (= var14 var27)) (= var13 var26)) (= var12 var25)) (= var11 var24)) (= var10 var23)) (= var9 var22)) (= var8 var32)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var33 0) (= var21 1)) (and (not (= var33 0)) (= var21 0))))) (not (= var30 0))) (and (= var32 0) (not (= var30 0)))) (not (= var29 0))))) (inv_main98 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main87 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var8 0) (and (= var10 0) (not (= var8 0)))) (not (= var7 0))))) (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int)) (or (not (and (inv_main87 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23) (and (and (and (and (= var22 0) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var21 var34) (= var20 var33)) (= var19 var32)) (= var18 var31)) (= var17 var30)) (= var16 var29)) (= var15 var28)) (= var14 var27)) (= var13 var26)) (= var12 var25)) (= var11 var24)) (= var10 var23)) (= var9 var8)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var34 0) (= var22 1)) (and (not (= var34 0)) (= var22 0))))) (not (= var31 0))) (= var31 0)) (not (= var30 0))))) (inv_main98 var21 var20 var19 0 var17 var16 var15 var14 var13 var12 var11 var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int)) (or (not (and (inv_main87 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23) (and (and (and (and (not (= var22 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var21 var34) (= var20 var33)) (= var19 var32)) (= var18 var31)) (= var17 var30)) (= var16 var29)) (= var15 var28)) (= var14 var27)) (= var13 var26)) (= var12 var25)) (= var11 var24)) (= var10 var23)) (= var9 var8)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var34 0) (= var22 1)) (and (not (= var34 0)) (= var22 0))))) (not (= var31 0))) (= var31 0)) (not (= var30 0))))) (inv_main98 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main87 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var8 0) (= var8 0)) (not (= var7 0))))) (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main271 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var10 0) (and (= var13 2) (= var12 0))))) (inv_main417 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var12 var13 var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main260 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var9 0))) (inv_main271 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main260 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var12 0)) (not (= var10 0))) (not (= var9 0))))) (inv_main271 var13 var12 var11 0 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int)) (or (not (and (inv_main260 var37 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24) (and (and (and (and (= var23 0) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var22 var37) (= var21 var36)) (= var20 var35)) (= var19 var34)) (= var18 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var24)) (= var8 var36)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var37 0) (= var23 1)) (and (not (= var37 0)) (= var23 0))))) (not (= var34 0))) (and (= var36 0) (not (= var34 0)))) (not (= var33 0))))) (inv_main271 var22 var21 var20 0 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int)) (or (not (and (inv_main260 var37 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24) (and (and (and (and (not (= var23 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var22 var37) (= var21 var36)) (= var20 var35)) (= var19 var34)) (= var18 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var24)) (= var8 var36)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var37 0) (= var23 1)) (and (not (= var37 0)) (= var23 0))))) (not (= var34 0))) (and (= var36 0) (not (= var34 0)))) (not (= var33 0))))) (inv_main271 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main260 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var10 0) (and (= var12 0) (not (= var10 0)))) (not (= var9 0))))) (inv_main271 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int)) (or (not (and (inv_main260 var38 var37 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25) (and (and (and (and (= var24 0) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var23 var38) (= var22 var37)) (= var21 var36)) (= var20 var35)) (= var19 var34)) (= var18 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var8)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var38 0) (= var24 1)) (and (not (= var38 0)) (= var24 0))))) (not (= var35 0))) (= var35 0)) (not (= var34 0))))) (inv_main271 var23 var22 var21 0 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int)) (or (not (and (inv_main260 var38 var37 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25) (and (and (and (and (not (= var24 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var23 var38) (= var22 var37)) (= var21 var36)) (= var20 var35)) (= var19 var34)) (= var18 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var8)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var38 0) (= var24 1)) (and (not (= var38 0)) (= var24 0))))) (not (= var35 0))) (= var35 0)) (not (= var34 0))))) (inv_main271 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main260 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var10 0) (= var10 0)) (not (= var9 0))))) (inv_main271 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main255 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var10 0) (<= 0 (+ (+ (+ var11 (- 1)) (* (- 1) var1)) (- 1)))))) (inv_main435 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var11 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main255 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var13 (- 1))) (and (not (= var10 0)) (<= 0 (+ (+ (+ var11 (- 1)) (* (- 1) var1)) (- 1))))))) (inv_main435 (+ var13 (- 1)) var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var11 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main255 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ var13 (- 1)))) (and (not (= var10 0)) (<= 0 (+ (+ (+ var11 (- 1)) (* (- 1) var1)) (- 1))))))) (inv_main435 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var11 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var8 0) (and (= var11 2) (= var10 0))))) (inv_main244 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var10 var11 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var10 0)))) (inv_main39 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var11 2)) (= var10 0)))) (inv_main39 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var8 0)) (and (= var11 2) (= var10 0))))) (inv_main39 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (inv_main4 var10 var9 var8 var7 var6 var5 var4)) (inv_main39 var10 var9 var8 var7 var6 var5 1 0 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main39 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (= var0 0) (<= 0 (+ (+ 4 (* (- 1) var5)) (- 1)))))) (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main39 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (<= 0 (+ (+ 2 (* (- 1) var12)) (- 1))) (and (not (= var0 0)) (<= 0 (+ (+ 4 (* (- 1) var5)) (- 1))))))) (inv_main49 (+ var12 1) var11 var10 var9 var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main39 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (not (<= 0 (+ (+ 2 (* (- 1) var12)) (- 1)))) (and (not (= var0 0)) (<= 0 (+ (+ 4 (* (- 1) var5)) (- 1))))))) (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main271 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var12 0)))) (inv_main255 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main271 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var13 2)) (= var12 0)))) (inv_main255 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main271 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var10 0)) (and (= var13 2) (= var12 0))))) (inv_main255 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main446 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var12 0)))) (inv_main255 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main446 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var13 2)) (= var12 0)))) (inv_main255 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main446 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var10 0)) (and (= var13 2) (= var12 0))))) (inv_main255 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main435 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var9 0))) (inv_main446 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main435 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var12 0)) (not (= var10 0))) (not (= var9 0))))) (inv_main446 var13 var12 var11 0 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int)) (or (not (and (inv_main435 var37 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24) (and (and (and (and (= var23 0) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var22 var37) (= var21 var36)) (= var20 var35)) (= var19 var34)) (= var18 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var24)) (= var8 var36)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var37 0) (= var23 1)) (and (not (= var37 0)) (= var23 0))))) (not (= var34 0))) (and (= var36 0) (not (= var34 0)))) (not (= var33 0))))) (inv_main446 var22 var21 var20 0 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int)) (or (not (and (inv_main435 var37 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24) (and (and (and (and (not (= var23 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var22 var37) (= var21 var36)) (= var20 var35)) (= var19 var34)) (= var18 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var24)) (= var8 var36)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var37 0) (= var23 1)) (and (not (= var37 0)) (= var23 0))))) (not (= var34 0))) (and (= var36 0) (not (= var34 0)))) (not (= var33 0))))) (inv_main446 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main435 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var10 0) (and (= var12 0) (not (= var10 0)))) (not (= var9 0))))) (inv_main446 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int)) (or (not (and (inv_main435 var38 var37 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25) (and (and (and (and (= var24 0) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var23 var38) (= var22 var37)) (= var21 var36)) (= var20 var35)) (= var19 var34)) (= var18 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var8)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var38 0) (= var24 1)) (and (not (= var38 0)) (= var24 0))))) (not (= var35 0))) (= var35 0)) (not (= var34 0))))) (inv_main446 var23 var22 var21 0 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int)) (or (not (and (inv_main435 var38 var37 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25) (and (and (and (and (not (= var24 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var23 var38) (= var22 var37)) (= var21 var36)) (= var20 var35)) (= var19 var34)) (= var18 var33)) (= var17 var32)) (= var16 var31)) (= var15 var30)) (= var14 var29)) (= var13 var28)) (= var12 var27)) (= var11 var26)) (= var10 var25)) (= var9 var8)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (or (and (= var38 0) (= var24 1)) (and (not (= var38 0)) (= var24 0))))) (not (= var35 0))) (= var35 0)) (not (= var34 0))))) (inv_main446 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main435 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var10 0) (= var10 0)) (not (= var9 0))))) (inv_main446 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main62 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (not (= var1 0)) (= var0 0)))) (inv_main73 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main62 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (= var1 0) (= var0 0)))) (inv_main73 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main62 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (not (= var0 0)))) (inv_main73 var12 var11 var10 var9 1 var7 var6 var5 var4 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (= var0 0))) (inv_main62 var12 var11 var10 var9 var8 var7 var6 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (not (= var11 0)) (not (= var0 0))))) (inv_main62 var12 0 var10 var9 var8 var7 var6 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (= var11 0) (not (= var0 0))))) (inv_main62 var12 1 var10 var9 var8 var7 var6 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (not (inv_main244 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int)) (not (inv_main417 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int)) (not (inv_main592 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(check-sat)
