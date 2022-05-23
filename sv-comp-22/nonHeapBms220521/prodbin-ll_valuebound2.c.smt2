(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main30 (Int Int Int Int Int) Bool)
(declare-fun inv_main31 (Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (inv_main4 var4 var3 var2 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main31 var4 var3 var2 var1 var0) (= var1 0))) (inv_main30 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int)) (or (not (and (inv_main4 var24 var23 var22 var21 var20) (and (and (not (= var19 0)) (and (and (and (and (and (= var18 var17) (= var16 var15)) (= var14 var13)) (= var12 var11)) (= var10 var9)) (or (and (<= 0 (+ var15 (- 1))) (= var19 1)) (and (not (<= 0 (+ var15 (- 1)))) (= var19 0))))) (and (and (not (= var8 0)) (and (and (and (and (and (= var17 var7) (= var15 var6)) (= var13 var5)) (= var11 var4)) (= var9 var3)) (or (and (and (<= 0 var6) (<= 0 (+ 2 (* (- 1) var6)))) (= var8 1)) (and (not (and (<= 0 var6) (<= 0 (+ 2 (* (- 1) var6))))) (= var8 0))))) (and (not (= var2 0)) (and (and (and (and (and (= var7 var1) (= var0 var23)) (= var5 var22)) (= var4 var21)) (= var3 var20)) (or (and (and (<= 0 var1) (<= 0 (+ 2 (* (- 1) var1)))) (= var2 1)) (and (not (and (<= 0 var1) (<= 0 (+ 2 (* (- 1) var1))))) (= var2 0))))))))) (inv_main31 var18 var16 var18 var16 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main31 var9 var8 var7 var6 var5) (and (and (and (and (and (= var4 var9) (= var3 var8)) (= var2 (* 2 var7))) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ var6 (* (- 2) var10)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ var6 (* (- 2) var10)))) (- 1)))) (or (not (<= 0 (+ (+ var6 (* (- 2) var10)) (- 1)))) (<= 0 (+ var6 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var6 (* (- 2) var10))) (- 1)))) (<= 0 (+ (* (- 1) var6) (- 1))))) (= var1 var10))) (= var0 var5)) (and (not (or (not (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var11)) (- 1))) (<= 0 (+ (+ 2 (* 1 var11)) (- 1)))) (or (not (<= 0 (+ var11 (- 1)))) (<= 0 (+ var6 (- 1))))) (or (not (<= 0 (+ (* (- 1) var11) (- 1)))) (<= 0 (+ (* (- 1) var6) (- 1))))) (= var6 (+ (* 2 var12) var11)))) (= var11 1))) (not (= var6 0)))))) (inv_main31 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main31 var9 var8 var7 var6 var5) (and (and (and (and (and (= var4 var9) (= var3 var8)) (= var2 (* 2 var7))) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ (+ var6 (- 1)) (* (- 2) var10)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ (+ var6 (- 1)) (* (- 2) var10)))) (- 1)))) (or (not (<= 0 (+ (+ (+ var6 (- 1)) (* (- 2) var10)) (- 1)))) (<= 0 (+ (+ var6 (- 1)) (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ (+ var6 (- 1)) (* (- 2) var10))) (- 1)))) (<= 0 (+ (* (- 1) (+ var6 (- 1))) (- 1))))) (= var1 var10))) (= var0 (+ var5 var7))) (and (and (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var11)) (- 1))) (<= 0 (+ (+ 2 (* 1 var11)) (- 1)))) (or (not (<= 0 (+ var11 (- 1)))) (<= 0 (+ var6 (- 1))))) (or (not (<= 0 (+ (* (- 1) var11) (- 1)))) (<= 0 (+ (* (- 1) var6) (- 1))))) (= var6 (+ (* 2 var12) var11))) (= var11 1)) (not (= var6 0)))))) (inv_main31 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main31 var4 var3 var2 var1 var0) (not (= (+ var0 (* var2 var1)) (* var4 var3)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main30 var4 var3 var2 var1 var0) (not (= var0 (* var4 var3)))))))
(check-sat)
