(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main19 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main20 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main23 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main30 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main31 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main34 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main35 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main37 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (inv_main4 0 var5 var4 var3 var2 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (inv_main31 var6 var5 var4 var3 var2 var1 var0)) (inv_main34 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (inv_main34 var6 var5 var4 var3 var2 var1 var0)) (inv_main35 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main23 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ var2 (* (- 1) var4)))))) (inv_main19 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int)) (or (not (and (inv_main4 var16 var15 var14 var13 var12 var11 var10) (and (not (<= 0 (+ (+ 1 (* (- 1) var9)) (- 1)))) (and (not (= var8 0)) (and (and (and (and (and (and (and (= var9 var16) (= var7 var6)) (= var5 var4)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (or (and (<= 0 (+ var4 (- 1))) (= var8 1)) (and (not (<= 0 (+ var4 (- 1)))) (= var8 0)))))))) (inv_main19 (+ var9 1) var7 var5 0 var7 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main30 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ 1 (* (- 1) var6)) (- 1)))))) (inv_main19 (+ var6 1) var5 var4 (+ var3 var1) (+ var2 (* (- 1) var0)) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main35 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ var2 (* (- 2) var0))))) (inv_main37 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main35 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ var2 (* (- 2) var0)))))) (inv_main30 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main23 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ (+ 1 (* (- 1) var6)) (- 1)))) (<= 0 (+ var2 (* (- 1) var4)))))) (inv_main30 (+ var6 1) var5 var4 var3 var2 1 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main37 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ 1 (* (- 1) var6)) (- 1)))))) (inv_main30 (+ var6 1) var5 var4 var3 var2 (* 2 var1) (* 2 var0)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main23 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ 1 (* (- 1) var6)) (- 1))) (<= 0 (+ var2 (* (- 1) var4)))))) (inv_main31 (+ var6 1) var5 var4 var3 var2 1 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main37 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ 1 (* (- 1) var6)) (- 1))))) (inv_main31 (+ var6 1) var5 var4 var3 var2 (* 2 var1) (* 2 var0)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (inv_main20 var6 var5 var4 var3 var2 var1 var0)) (inv_main23 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int)) (or (not (and (inv_main4 var16 var15 var14 var13 var12 var11 var10) (and (<= 0 (+ (+ 1 (* (- 1) var9)) (- 1))) (and (not (= var8 0)) (and (and (and (and (and (and (and (= var9 var16) (= var7 var6)) (= var5 var4)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (or (and (<= 0 (+ var4 (- 1))) (= var8 1)) (and (not (<= 0 (+ var4 (- 1)))) (= var8 0)))))))) (inv_main20 (+ var9 1) var7 var5 0 var7 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main30 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ 1 (* (- 1) var6)) (- 1))))) (inv_main20 (+ var6 1) var5 var4 (+ var3 var1) (+ var2 (* (- 1) var0)) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (not (and (inv_main20 var6 var5 var4 var3 var2 var1 var0) (not (= var0 (* var4 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (not (and (inv_main23 var6 var5 var4 var3 var2 var1 var0) (not (= var5 (+ (* var3 var4) var2)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (not (and (inv_main31 var6 var5 var4 var3 var2 var1 var0) (not (= var0 (* var4 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (not (and (inv_main34 var6 var5 var4 var3 var2 var1 var0) (not (= var5 (+ (* var3 var4) var2)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (not (and (inv_main35 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 var2))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (not (and (inv_main37 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ var2 (* (- 1) (* (* 2 var4) var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (not (and (inv_main19 var6 var5 var4 var3 var2 var1 var0) (not (= var5 (+ (* var3 var4) var2)))))))
(check-sat)
