(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main35 (Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int) Bool)
(declare-fun inv_main41 (Int Int Int Int Int) Bool)
(declare-fun inv_main42 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (and (<= 0 var4) (<= 0 var3)) (<= 0 var2)) (and (<= 0 var1) (<= 0 var0)))) (inv_main4 var1 var0 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main35 var4 var3 var2 var1 var0) (not (<= 0 (+ var1 (* (- 1) var0)))))) (inv_main42 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_main42 var9 var8 var7 var6 var5) (and (and (not (<= 0 (+ var4 (* (- 1) var3)))) (not (= var5 var8))) (and (and (and (and (= var2 var9) (= var1 var8)) (= var0 (* 2 var7))) (= var4 var6)) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ var5 (* (- 2) var10)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ var5 (* (- 2) var10)))) (- 1)))) (or (not (<= 0 (+ (+ var5 (* (- 2) var10)) (- 1)))) (<= 0 (+ var5 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var5 (* (- 2) var10))) (- 1)))) (<= 0 (+ (* (- 1) var5) (- 1))))) (= var3 var10)))))) (inv_main42 var2 var1 var0 var4 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_main42 var9 var8 var7 var6 var5) (and (and (<= 0 (+ var4 (* (- 1) var3))) (not (= var5 var8))) (and (and (and (and (= var2 var9) (= var1 var8)) (= var0 (* 2 var7))) (= var4 var6)) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ var5 (* (- 2) var10)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ var5 (* (- 2) var10)))) (- 1)))) (or (not (<= 0 (+ (+ var5 (* (- 2) var10)) (- 1)))) (<= 0 (+ var5 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var5 (* (- 2) var10))) (- 1)))) (<= 0 (+ (* (- 1) var5) (- 1))))) (= var3 var10)))))) (inv_main42 var2 var1 (+ var0 1) (+ var4 (* (- 1) var3)) var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main42 var4 var3 var2 var1 var0) (= var0 var3))) (inv_main41 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int)) (or (not (and (inv_main4 var30 var29 var28 var27 var26) (and (and (not (= var25 0)) (and (and (and (and (and (= var24 var23) (= var22 var21)) (= var20 var19)) (= var18 var17)) (= var16 var15)) (or (and (<= 0 (+ var21 (- 1))) (= var25 1)) (and (not (<= 0 (+ var21 (- 1)))) (= var25 0))))) (and (and (not (= var14 0)) (and (and (and (and (and (= var23 var13) (= var21 var12)) (= var19 var11)) (= var17 var10)) (= var15 var9)) (or (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ 4294967295 (* (- 2) var31)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ 4294967295 (* (- 2) var31)))) (- 1)))) (not (<= 0 (+ (* (- 1) (+ 4294967295 (* (- 2) var31))) (- 1))))) (<= 0 (+ (+ var31 (* (- 1) var12)) (- 1)))) (= var14 1)) (and (not (or (not (and (and (<= 0 (+ (+ 2 (* (- 1) (+ 4294967295 (* (- 2) var32)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ 4294967295 (* (- 2) var32)))) (- 1)))) (not (<= 0 (+ (* (- 1) (+ 4294967295 (* (- 2) var32))) (- 1)))))) (<= 0 (+ (+ var32 (* (- 1) var12)) (- 1))))) (= var14 0))))) (and (and (not (= var8 0)) (and (and (and (and (and (= var13 var7) (= var12 var6)) (= var11 var5)) (= var10 var4)) (= var9 var3)) (or (and (and (<= 0 var6) (<= 0 (+ 2 (* (- 1) var6)))) (= var8 1)) (and (not (and (<= 0 var6) (<= 0 (+ 2 (* (- 1) var6))))) (= var8 0))))) (and (<= 0 var6) (and (and (not (= var2 0)) (and (and (and (and (and (= var7 var1) (= var0 var29)) (= var5 var28)) (= var4 var27)) (= var3 var26)) (or (and (and (<= 0 var1) (<= 0 (+ 2 (* (- 1) var1)))) (= var2 1)) (and (not (and (<= 0 var1) (<= 0 (+ 2 (* (- 1) var1))))) (= var2 0))))) (<= 0 var1)))))))) (inv_main35 var24 var22 0 var24 var22))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main35 var4 var3 var2 var1 var0) (<= 0 (+ var1 (* (- 1) var0))))) (inv_main35 var4 var3 var2 var1 (* 2 var0)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main42 var4 var3 var2 var1 var0) (not (= var4 (+ (* var2 var0) var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main41 var4 var3 var2 var1 var0) (not (= var4 (+ (* var2 var0) var1)))))))
(check-sat)
