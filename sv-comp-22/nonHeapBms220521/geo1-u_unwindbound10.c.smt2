(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun inv_main13 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main22 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (<= 0 var4) (<= 0 var3))) (inv_main4 0 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main13 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (* (- 1) var0)) (- 1)))))) (inv_main22 var5 var4 var3 (* var2 (+ var4 (- 1))) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main4 var7 var6 var5 var4 var3 var2) (and (not (<= 0 (+ (+ 10 (* (- 1) var7)) (- 1)))) (and (<= 0 var1) (<= 0 var0))))) (inv_main22 (+ var7 1) var0 var1 (* 1 (+ var0 (- 1))) var0 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int)) (or (not (and (inv_main13 var17 var16 var15 var14 var13 var12) (and (and (not (<= 0 (+ (+ 10 (* (- 1) var11)) (- 1)))) (and (<= 0 (+ (+ var15 (* (- 1) var12)) (- 1))) (and (and (and (and (and (= var10 var17) (= var9 var16)) (= var8 var15)) (= var7 (+ (* var14 var16) 1))) (= var6 var13)) (= var5 (+ var12 1))))) (and (and (and (and (and (= var11 var10) (= var4 var9)) (= var3 var8)) (= var2 var7)) (= var1 (* var6 var9))) (= var0 var5))))) (inv_main22 (+ var11 1) var4 var3 (* var2 (+ var4 (- 1))) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main4 var7 var6 var5 var4 var3 var2) (and (<= 0 (+ (+ 10 (* (- 1) var7)) (- 1))) (and (<= 0 var1) (<= 0 var0))))) (inv_main13 (+ var7 1) var0 var1 1 var0 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int)) (or (not (and (inv_main13 var17 var16 var15 var14 var13 var12) (and (and (<= 0 (+ (+ 10 (* (- 1) var11)) (- 1))) (and (<= 0 (+ (+ var15 (* (- 1) var12)) (- 1))) (and (and (and (and (and (= var10 var17) (= var9 var16)) (= var8 var15)) (= var7 (+ (* var14 var16) 1))) (= var6 var13)) (= var5 (+ var12 1))))) (and (and (and (and (and (= var11 var10) (= var4 var9)) (= var3 var8)) (= var2 var7)) (= var1 (* var6 var9))) (= var0 var5))))) (inv_main13 (+ var11 1) var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main13 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (* var2 var4) (* (- 1) var2)) (* (- 1) var1)) 1) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main22 var5 var4 var3 var2 var1 var0) (not (= (+ (+ 1 var2) (* (- 1) var1)) 0))))))
(check-sat)
