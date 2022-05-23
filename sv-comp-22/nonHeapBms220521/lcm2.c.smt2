(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main37 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main38 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (and (and (and (<= 0 var5) (<= 0 var4)) (<= 0 var3)) (<= 0 var2)) (and (<= 0 var1) (<= 0 var0)))) (inv_main4 var1 var0 var5 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main38 var5 var4 var3 var2 var1 var0) (= var3 var2))) (inv_main37 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int)) (or (not (and (inv_main4 var35 var34 var33 var32 var31 var30) (and (and (not (= var29 0)) (and (and (and (and (and (and (= var28 var27) (= var26 var25)) (= var24 var23)) (= var22 var21)) (= var20 var19)) (= var18 var17)) (or (and (<= 0 (+ 65535 (* (- 1) var25))) (= var29 1)) (and (not (<= 0 (+ 65535 (* (- 1) var25)))) (= var29 0))))) (and (and (not (= var16 0)) (and (and (and (and (and (and (= var27 var15) (= var25 var14)) (= var23 var13)) (= var21 var12)) (= var19 var11)) (= var17 var10)) (or (and (<= 0 (+ 65535 (* (- 1) var15))) (= var16 1)) (and (not (<= 0 (+ 65535 (* (- 1) var15)))) (= var16 0))))) (and (and (not (= var9 0)) (and (and (and (and (and (and (= var15 var8) (= var14 var7)) (= var13 var6)) (= var12 var5)) (= var11 var4)) (= var10 var3)) (or (and (<= 0 (+ var7 (- 1))) (= var9 1)) (and (not (<= 0 (+ var7 (- 1)))) (= var9 0))))) (and (and (not (= var2 0)) (and (and (and (and (and (and (= var8 var1) (= var7 var0)) (= var6 var33)) (= var5 var32)) (= var4 var31)) (= var3 var30)) (or (and (<= 0 (+ var1 (- 1))) (= var2 1)) (and (not (<= 0 (+ var1 (- 1)))) (= var2 0))))) (and (<= 0 var0) (<= 0 var1)))))))) (inv_main38 var28 var26 var28 var26 var26 var28))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main38 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ var3 (* (- 1) var2)) (- 1))) (not (= var3 var2))))) (inv_main38 var5 var4 (+ var3 (* (- 1) var2)) var2 var1 (+ var0 var1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main38 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ (+ var3 (* (- 1) var2)) (- 1)))) (not (= var3 var2))))) (inv_main38 var5 var4 var3 (+ var2 (* (- 1) var3)) (+ var1 var0) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main38 var5 var4 var3 var2 var1 var0) (not (= (+ (* var3 var1) (* var2 var0)) (* (* 2 var5) var4)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main37 var5 var4 var3 var2 var1 var0) (not (= (+ (* var3 var1) (* var2 var0)) (* (* 2 var5) var4)))))))
(check-sat)
