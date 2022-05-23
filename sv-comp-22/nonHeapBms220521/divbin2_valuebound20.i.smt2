(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main16 (Int Int Int Int Int) Bool)
(declare-fun inv_main22 (Int Int Int Int Int) Bool)
(declare-fun inv_main23 (Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (and (<= 0 var4) (<= 0 var3)) (<= 0 var2)) (and (<= 0 var1) (<= 0 var0)))) (inv_main4 var1 var0 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main23 var4 var3 var2 var1 var0) (= var0 var3))) (inv_main22 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main4 var11 var10 var9 var8 var7) (and (and (not (= var6 0)) (and (and (and (and (and (= var5 var4) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7)) (or (and (and (<= 0 var4) (<= 0 (+ 20 (* (- 1) var4)))) (= var6 1)) (and (not (and (<= 0 var4) (<= 0 (+ 20 (* (- 1) var4))))) (= var6 0))))) (<= 0 var4)))) (inv_main16 var5 1 0 var5 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main16 var4 var3 var2 var1 var0) (<= 0 (+ var1 (* (- 1) var0))))) (inv_main16 var4 var3 var2 var1 (* 2 var0)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main16 var4 var3 var2 var1 var0) (not (<= 0 (+ var1 (* (- 1) var0)))))) (inv_main23 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_main23 var9 var8 var7 var6 var5) (and (and (not (<= 0 (+ var4 (* (- 1) var3)))) (not (= var5 var8))) (and (and (and (and (= var2 var9) (= var1 var8)) (= var0 (* 2 var7))) (= var4 var6)) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ var5 (* (- 2) var10)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ var5 (* (- 2) var10)))) (- 1)))) (or (not (<= 0 (+ (+ var5 (* (- 2) var10)) (- 1)))) (<= 0 (+ var5 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var5 (* (- 2) var10))) (- 1)))) (<= 0 (+ (* (- 1) var5) (- 1))))) (= var3 var10)))))) (inv_main23 var2 var1 var0 var4 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (inv_main23 var9 var8 var7 var6 var5) (and (and (<= 0 (+ var4 (* (- 1) var3))) (not (= var5 var8))) (and (and (and (and (= var2 var9) (= var1 var8)) (= var0 (* 2 var7))) (= var4 var6)) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ var5 (* (- 2) var10)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ var5 (* (- 2) var10)))) (- 1)))) (or (not (<= 0 (+ (+ var5 (* (- 2) var10)) (- 1)))) (<= 0 (+ var5 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var5 (* (- 2) var10))) (- 1)))) (<= 0 (+ (* (- 1) var5) (- 1))))) (= var3 var10)))))) (inv_main23 var2 var1 (+ var0 1) (+ var4 (* (- 1) var3)) var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main23 var4 var3 var2 var1 var0) (not (= var4 (+ (* var2 var0) var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main22 var4 var3 var2 var1 var0) (not (= var4 (+ (* var2 var0) var1)))))))
(check-sat)
