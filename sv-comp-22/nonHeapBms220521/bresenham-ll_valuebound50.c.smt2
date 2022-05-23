(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main27 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main37 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (inv_main4 var6 var5 var4 var3 var2 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int)) (or (not (and (inv_main4 var31 var30 var29 var28 var27 var26 var25) (and (and (and (and (and (and (and (= var24 var23) (= var22 var21)) (= var20 0)) (= var19 0)) (= var18 (+ (* 2 var21) (* (- 1) var23)))) (= var17 var16)) (= var15 (* var21 0))) (and (and (not (= var14 0)) (and (and (and (and (and (and (and (= var23 var13) (= var21 var12)) (= var11 var10)) (= var9 var8)) (= var7 var6)) (= var16 var5)) (= var4 var3)) (or (and (and (<= 0 var12) (<= 0 (+ 50 (* (- 1) var12)))) (= var14 1)) (and (not (and (<= 0 var12) (<= 0 (+ 50 (* (- 1) var12))))) (= var14 0))))) (and (not (= var2 0)) (and (and (and (and (and (and (and (= var13 var1) (= var0 var30)) (= var10 var29)) (= var8 var28)) (= var6 var27)) (= var5 var26)) (= var3 var25)) (or (and (and (<= 0 var1) (<= 0 (+ 50 (* (- 1) var1)))) (= var2 1)) (and (not (and (<= 0 var1) (<= 0 (+ 50 (* (- 1) var1))))) (= var2 0))))))))) (inv_main27 var24 var22 var20 var19 var18 (* var24 var19) var15))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main27 var13 var12 var11 var10 var9 var8 var7) (and (and (and (and (and (and (and (= var6 var13) (= var5 var12)) (= var4 (+ var11 1))) (= var3 var10)) (= var2 (+ var9 (* 2 var12)))) (= var1 var8)) (= var0 (* var12 (+ var11 1)))) (and (<= 0 (+ (* (- 1) var9) (- 1))) (<= 0 (+ var13 (* (- 1) var11))))))) (inv_main27 var6 var5 var4 var3 var2 (* var6 var3) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main27 var13 var12 var11 var10 var9 var8 var7) (and (and (and (and (and (and (and (= var6 var13) (= var5 var12)) (= var4 (+ var11 1))) (= var3 (+ var10 1))) (= var2 (+ var9 (* 2 (+ var12 (* (- 1) var13)))))) (= var1 var8)) (= var0 (* var12 (+ var11 1)))) (and (not (<= 0 (+ (* (- 1) var9) (- 1)))) (<= 0 (+ var13 (* (- 1) var11))))))) (inv_main27 var6 var5 var4 var3 var2 (* var6 var3) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main27 var13 var12 var11 var10 var9 var8 var7) (and (not (<= 0 (+ var13 (* (- 1) var11)))) (and (and (and (and (and (and (= var6 var13) (= var5 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 (* var11 var10))) (= var0 var7))))) (inv_main37 var6 var5 var4 var3 var2 var1 (* var5 var4)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (not (and (inv_main27 var6 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (* 2 var0) (* (- 2) var1)) (* (- 1) var6)) (* 2 var5)) (* (- 1) var2)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (not (and (inv_main37 var6 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (+ (* 2 var0) (* (- 2) var1)) (* (- 1) var6)) (* 2 var5)) (* (- 1) var2)) (* 2 var3)) 0))))))
(check-sat)