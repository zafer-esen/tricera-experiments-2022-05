(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main31 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main32 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main33 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main41 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main42 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main43 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main45 (Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (inv_main4 var5 var4 var3 var2 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main41 var5 var4 var3 var2 var1 var0)) (inv_main42 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main42 var5 var4 var3 var2 var1 var0)) (inv_main43 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main32 var5 var4 var3 var2 var1 var0)) (inv_main33 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int)) (or (not (and (inv_main4 var28 var27 var26 var25 var24 var23) (and (and (not (= var22 0)) (and (and (and (and (and (and (= var21 var20) (= var19 var18)) (= var17 var16)) (= var15 var14)) (= var13 var12)) (= var11 var10)) (or (and (<= 0 (+ var18 (- 1))) (= var22 1)) (and (not (<= 0 (+ var18 (- 1)))) (= var22 0))))) (and (and (not (= var9 0)) (and (and (and (and (and (and (= var20 var8) (= var18 var7)) (= var16 var6)) (= var14 var5)) (= var12 var4)) (= var10 var3)) (or (and (and (<= 0 var7) (<= 0 (+ 20 (* (- 1) var7)))) (= var9 1)) (and (not (and (<= 0 var7) (<= 0 (+ 20 (* (- 1) var7))))) (= var9 0))))) (and (not (= var2 0)) (and (and (and (and (and (and (= var8 var1) (= var0 var27)) (= var6 var26)) (= var5 var25)) (= var4 var24)) (= var3 var23)) (or (and (and (<= 0 var1) (<= 0 (+ 20 (* (- 1) var1)))) (= var2 1)) (and (not (and (<= 0 var1) (<= 0 (+ 20 (* (- 1) var1))))) (= var2 0))))))))) (inv_main32 var21 var19 0 var21 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main43 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ var2 (* (- 2) var0)))))) (inv_main32 var5 var4 (+ var3 var1) (+ var2 (* (- 1) var0)) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main33 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ var2 (* (- 1) var4)))))) (inv_main31 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main43 var5 var4 var3 var2 var1 var0) (<= 0 (+ var2 (* (- 2) var0))))) (inv_main45 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main33 var5 var4 var3 var2 var1 var0) (<= 0 (+ var2 (* (- 1) var4))))) (inv_main41 var5 var4 var3 var2 1 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main45 var5 var4 var3 var2 var1 var0)) (inv_main41 var5 var4 var3 var2 (* 2 var1) (* 2 var0)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main32 var5 var4 var3 var2 var1 var0) (not (= var0 (* var4 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main33 var5 var4 var3 var2 var1 var0) (not (= var5 (+ (* var3 var4) var2)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main41 var5 var4 var3 var2 var1 var0) (not (= var0 (* var4 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main42 var5 var4 var3 var2 var1 var0) (not (= var5 (+ (* var3 var4) var2)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main43 var5 var4 var3 var2 var1 var0) (not (<= 0 var2))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main45 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ var2 (* (- 1) (* (* 2 var4) var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main31 var5 var4 var3 var2 var1 var0) (not (= var5 (+ (* var3 var4) var2)))))))
(check-sat)
