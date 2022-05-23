(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun inv_main17 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main27 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (inv_main4 0 var6 var5 var4 var3 var2 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int)) (or (not (and (inv_main17 var15 var14 var13 var12 var11 var10 var9 var8) (and (and (and (and (and (and (and (and (= var7 var15) (= var6 var14)) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 (* var12 var11))) (= var0 var8)) (not (<= 0 (+ var14 (* (- 1) var12))))))) (inv_main27 var7 var6 var5 var4 var3 var2 var1 (* var5 var4)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int)) (or (not (and (inv_main4 var17 var16 var15 var14 var13 var12 var11 var10) (and (and (and (and (and (and (and (and (= var9 (+ var17 1)) (= var8 var7)) (= var6 var5)) (= var4 0)) (= var3 0)) (= var2 (+ (* 2 var5) (* (- 1) var7)))) (= var1 (* 0 0))) (= var0 var10)) (not (<= 0 (+ (+ 10 (* (- 1) var17)) (- 1))))))) (inv_main27 var9 var8 var6 var4 var3 var2 var1 (* var6 var4)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int)) (or (not (and (inv_main17 var15 var14 var13 var12 var11 var10 var9 var8) (and (and (and (and (and (and (and (and (and (= var7 (+ var15 1)) (= var6 var14)) (= var5 var13)) (= var4 (+ var12 1))) (= var3 var11)) (= var2 (+ var10 (* 2 var13)))) (= var1 (* (+ var12 1) var11))) (= var0 var8)) (not (<= 0 (+ (+ 10 (* (- 1) var15)) (- 1))))) (and (<= 0 (+ (* (- 1) var10) (- 1))) (<= 0 (+ var14 (* (- 1) var12))))))) (inv_main27 var7 var6 var5 var4 var3 var2 var1 (* var5 var4)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int)) (or (not (and (inv_main17 var15 var14 var13 var12 var11 var10 var9 var8) (and (and (and (and (and (and (and (and (and (= var7 (+ var15 1)) (= var6 var14)) (= var5 var13)) (= var4 (+ var12 1))) (= var3 (+ var11 1))) (= var2 (+ var10 (* 2 (+ var13 (* (- 1) var14)))))) (= var1 (* (+ var12 1) (+ var11 1)))) (= var0 var8)) (not (<= 0 (+ (+ 10 (* (- 1) var15)) (- 1))))) (and (not (<= 0 (+ (* (- 1) var10) (- 1)))) (<= 0 (+ var14 (* (- 1) var12))))))) (inv_main27 var7 var6 var5 var4 var3 var2 var1 (* var5 var4)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int)) (or (not (and (inv_main4 var17 var16 var15 var14 var13 var12 var11 var10) (and (<= 0 (+ (+ 10 (* (- 1) var17)) (- 1))) (and (and (and (and (and (and (and (= var9 (+ var17 1)) (= var8 var7)) (= var6 var5)) (= var4 0)) (= var3 0)) (= var2 (+ (* 2 var5) (* (- 1) var7)))) (= var1 var11)) (= var0 (* var5 0)))))) (inv_main17 var9 var8 var6 var4 var3 var2 (* var8 var3) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int)) (or (not (and (inv_main17 var15 var14 var13 var12 var11 var10 var9 var8) (and (and (<= 0 (+ (+ 10 (* (- 1) var15)) (- 1))) (and (and (and (and (and (and (and (= var7 (+ var15 1)) (= var6 var14)) (= var5 var13)) (= var4 (+ var12 1))) (= var3 var11)) (= var2 (+ var10 (* 2 var13)))) (= var1 var9)) (= var0 (* var13 (+ var12 1))))) (and (<= 0 (+ (* (- 1) var10) (- 1))) (<= 0 (+ var14 (* (- 1) var12))))))) (inv_main17 var7 var6 var5 var4 var3 var2 (* var6 var3) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int)) (or (not (and (inv_main17 var15 var14 var13 var12 var11 var10 var9 var8) (and (and (<= 0 (+ (+ 10 (* (- 1) var15)) (- 1))) (and (and (and (and (and (and (and (= var7 (+ var15 1)) (= var6 var14)) (= var5 var13)) (= var4 (+ var12 1))) (= var3 (+ var11 1))) (= var2 (+ var10 (* 2 (+ var13 (* (- 1) var14)))))) (= var1 var9)) (= var0 (* var13 (+ var12 1))))) (and (not (<= 0 (+ (* (- 1) var10) (- 1)))) (<= 0 (+ var14 (* (- 1) var12))))))) (inv_main17 var7 var6 var5 var4 var3 var2 (* var6 var3) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main17 var7 var6 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (* 2 var0) (* (- 2) var1)) (* (- 1) var6)) (* 2 var5)) (* (- 1) var2)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main27 var7 var6 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (+ (* 2 var0) (* (- 2) var1)) (* (- 1) var6)) (* 2 var5)) (* (- 1) var2)) (* 2 var3)) 0))))))
(check-sat)
