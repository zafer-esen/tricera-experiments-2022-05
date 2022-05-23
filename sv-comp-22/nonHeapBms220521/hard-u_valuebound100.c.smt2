(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main32 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main33 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main34 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main40 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main41 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main42 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main52 (Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (and (and (and (<= 0 var5) (<= 0 var4)) (<= 0 var3)) (<= 0 var2)) (and (<= 0 var1) (<= 0 var0)))) (inv_main4 var1 var0 var5 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main42 var5 var4 var3 var2 var1 var0) (= var1 1))) (inv_main40 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main32 var5 var4 var3 var2 var1 var0)) (inv_main33 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main33 var5 var4 var3 var2 var1 var0)) (inv_main34 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main40 var5 var4 var3 var2 var1 var0)) (inv_main52 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main34 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ var3 (* (- 1) var2)))))) (inv_main41 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int)) (or (not (and (inv_main42 var17 var16 var15 var14 var13 var12) (and (and (not (<= 0 (+ var11 (* (- 1) var10)))) (and (not (= var13 1)) (and (and (and (and (and (= var9 var17) (= var8 var16)) (= var7 var15)) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ var14 (* (- 2) var18)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ var14 (* (- 2) var18)))) (- 1)))) (or (not (<= 0 (+ (+ var14 (* (- 2) var18)) (- 1)))) (<= 0 (+ var14 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var14 (* (- 2) var18))) (- 1)))) (<= 0 (+ (* (- 1) var14) (- 1))))) (= var6 var18))) (= var5 var13)) (= var4 var12)))) (and (and (and (and (and (= var3 var9) (= var2 var8)) (= var11 var7)) (= var10 var6)) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ var5 (* (- 2) var19)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ var5 (* (- 2) var19)))) (- 1)))) (or (not (<= 0 (+ (+ var5 (* (- 2) var19)) (- 1)))) (<= 0 (+ var5 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var5 (* (- 2) var19))) (- 1)))) (<= 0 (+ (* (- 1) var5) (- 1))))) (= var1 var19))) (= var0 var4))))) (inv_main41 var3 var2 var11 var10 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int)) (or (not (and (inv_main42 var17 var16 var15 var14 var13 var12) (and (and (<= 0 (+ var11 (* (- 1) var10))) (and (not (= var13 1)) (and (and (and (and (and (= var9 var17) (= var8 var16)) (= var7 var15)) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ var14 (* (- 2) var18)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ var14 (* (- 2) var18)))) (- 1)))) (or (not (<= 0 (+ (+ var14 (* (- 2) var18)) (- 1)))) (<= 0 (+ var14 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var14 (* (- 2) var18))) (- 1)))) (<= 0 (+ (* (- 1) var14) (- 1))))) (= var6 var18))) (= var5 var13)) (= var4 var12)))) (and (and (and (and (and (= var3 var9) (= var2 var8)) (= var11 var7)) (= var10 var6)) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ var5 (* (- 2) var19)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ var5 (* (- 2) var19)))) (- 1)))) (or (not (<= 0 (+ (+ var5 (* (- 2) var19)) (- 1)))) (<= 0 (+ var5 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var5 (* (- 2) var19))) (- 1)))) (<= 0 (+ (* (- 1) var5) (- 1))))) (= var1 var19))) (= var0 var4))))) (inv_main41 var3 var2 (+ var11 (* (- 1) var10)) var10 var1 (+ var0 var1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int)) (or (not (and (inv_main4 var28 var27 var26 var25 var24 var23) (and (and (not (= var22 0)) (and (and (and (and (and (and (= var21 var20) (= var19 var18)) (= var17 var16)) (= var15 var14)) (= var13 var12)) (= var11 var10)) (or (and (<= 0 (+ var18 (- 1))) (= var22 1)) (and (not (<= 0 (+ var18 (- 1)))) (= var22 0))))) (and (and (not (= var9 0)) (and (and (and (and (and (and (= var20 var8) (= var18 var7)) (= var16 var6)) (= var14 var5)) (= var12 var4)) (= var10 var3)) (or (and (and (<= 0 var7) (<= 0 (+ 100 (* (- 1) var7)))) (= var9 1)) (and (not (and (<= 0 var7) (<= 0 (+ 100 (* (- 1) var7))))) (= var9 0))))) (and (<= 0 var7) (and (and (not (= var2 0)) (and (and (and (and (and (and (= var8 var1) (= var0 var27)) (= var6 var26)) (= var5 var25)) (= var4 var24)) (= var3 var23)) (or (and (and (<= 0 var1) (<= 0 (+ 100 (* (- 1) var1)))) (= var2 1)) (and (not (and (<= 0 var1) (<= 0 (+ 100 (* (- 1) var1))))) (= var2 0))))) (<= 0 var1))))))) (inv_main32 var21 var19 var21 var19 1 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main34 var5 var4 var3 var2 var1 var0) (<= 0 (+ var3 (* (- 1) var2))))) (inv_main32 var5 var4 var3 (* 2 var2) (* 2 var1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main41 var5 var4 var3 var2 var1 var0)) (inv_main42 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main32 var5 var4 var3 var2 var1 var0) (not (= var0 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main33 var5 var4 var3 var2 var1 var0) (not (= var3 var5))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main34 var5 var4 var3 var2 var1 var0) (not (= var2 (* var4 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main41 var5 var4 var3 var2 var1 var0) (not (= var5 (+ (* var0 var4) var3)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main42 var5 var4 var3 var2 var1 var0) (not (= var2 (* var4 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main40 var5 var4 var3 var2 var1 var0) (not (= var5 (+ (* var2 var0) var3)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main52 var5 var4 var3 var2 var1 var0) (not (= var4 var2))))))
(check-sat)
