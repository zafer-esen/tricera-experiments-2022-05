(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main111 (Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main122 (Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main307 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main318 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main335 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main346 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main44 (Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main531 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main54 (Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main561 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main572 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main67 (Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main757 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main78 (Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (inv_main4 0 1 4 0 1 0 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main318 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var14 0) (<= 0 (+ (+ (+ var12 (- 1)) (* (- 1) var1)) (- 1)))))) (inv_main561 var14 var13 var12 var14 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var12 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main318 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ var10 (- 1))) (not (= var14 0))) (<= 0 (+ (+ (+ var12 (- 1)) (* (- 1) var1)) (- 1)))))) (inv_main561 var14 var13 var12 var14 (+ var10 (- 1)) var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var12 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main318 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (<= 0 (+ var10 (- 1)))) (not (= var14 0))) (<= 0 (+ (+ (+ var12 (- 1)) (* (- 1) var1)) (- 1)))))) (inv_main561 var14 var13 var12 var14 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var12 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main111 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var11 0))) (inv_main122 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main111 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var7 0)) (not (= var12 0))) (not (= var11 0))))) (inv_main122 0 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main111 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (not (= var7 0)) (and (not (<= 0 (+ (+ 2 (* (- 1) var8)) (- 1)))) (= var12 0))) (and (= var7 0) (not (= var12 0)))) (not (= var11 0))))) (inv_main122 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main111 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (= var7 0) (and (not (<= 0 (+ (+ 2 (* (- 1) var8)) (- 1)))) (= var12 0))) (and (= var7 0) (not (= var12 0)))) (not (= var11 0))))) (inv_main122 1 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main111 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (<= 0 (+ (+ 2 (* (- 1) var8)) (- 1))) (= var12 0)) (and (= var7 0) (not (= var12 0)))) (not (= var11 0))))) (inv_main122 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main111 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var12 0)) (and (= var7 0) (not (= var12 0)))) (not (= var11 0))))) (inv_main122 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main111 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (not (= var7 0)) (and (not (<= 0 (+ (+ 2 (* (- 1) var8)) (- 1)))) (= var12 0))) (= var12 0)) (not (= var11 0))))) (inv_main122 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main111 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (= var7 0) (and (not (<= 0 (+ (+ 2 (* (- 1) var8)) (- 1)))) (= var12 0))) (= var12 0)) (not (= var11 0))))) (inv_main122 1 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main111 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (<= 0 (+ (+ 2 (* (- 1) var8)) (- 1))) (= var12 0)) (= var12 0)) (not (= var11 0))))) (inv_main122 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main111 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var12 0)) (= var12 0)) (not (= var11 0))))) (inv_main122 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main54 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (= var0 0))) (inv_main67 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main54 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (not (= var8 0)) (not (= var0 0))))) (inv_main67 var13 var12 var11 var10 var9 0 var7 var6 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main54 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (= var8 0) (not (= var0 0))))) (inv_main67 var13 var12 var11 var10 var9 1 var7 var6 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main122 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var8 2))) (inv_main44 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main122 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var12 0) (not (= var8 2))))) (inv_main44 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main122 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var9 0)) (and (not (= var12 0)) (not (= var8 2)))))) (inv_main44 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (inv_main4 var11 var10 var9 var8 var7 var6 var5 var4)) (inv_main44 var11 var10 var9 0 var7 var6 var5 1 0 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main44 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (= var14 0) (not (<= 0 (+ (+ 4 (* (- 1) var6)) (- 1))))))) (inv_main335 var14 var13 var12 var14 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main44 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (and (<= 0 (+ var10 (- 1))) (not (= var14 0))) (not (<= 0 (+ (+ 4 (* (- 1) var6)) (- 1))))))) (inv_main335 var14 var13 var12 var14 (+ var10 (- 1)) var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main44 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (and (not (<= 0 (+ var10 (- 1)))) (not (= var14 0))) (not (<= 0 (+ (+ 4 (* (- 1) var6)) (- 1))))))) (inv_main335 var14 var13 var12 var14 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main122 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var9 0) (and (not (= var12 0)) (not (= var8 2)))))) (inv_main307 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var8 var12))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main335 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var13 0))) (inv_main346 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main335 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var9 0)) (not (= var14 0))) (not (= var13 0))))) (inv_main346 0 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main335 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (not (= var9 0)) (and (not (<= 0 (+ (+ 2 (* (- 1) var10)) (- 1)))) (= var14 0))) (and (= var9 0) (not (= var14 0)))) (not (= var13 0))))) (inv_main346 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main335 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (= var9 0) (and (not (<= 0 (+ (+ 2 (* (- 1) var10)) (- 1)))) (= var14 0))) (and (= var9 0) (not (= var14 0)))) (not (= var13 0))))) (inv_main346 1 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main335 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (<= 0 (+ (+ 2 (* (- 1) var10)) (- 1))) (= var14 0)) (and (= var9 0) (not (= var14 0)))) (not (= var13 0))))) (inv_main346 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main335 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var14 0)) (and (= var9 0) (not (= var14 0)))) (not (= var13 0))))) (inv_main346 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main335 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (not (= var9 0)) (and (not (<= 0 (+ (+ 2 (* (- 1) var10)) (- 1)))) (= var14 0))) (= var14 0)) (not (= var13 0))))) (inv_main346 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main335 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (= var9 0) (and (not (<= 0 (+ (+ 2 (* (- 1) var10)) (- 1)))) (= var14 0))) (= var14 0)) (not (= var13 0))))) (inv_main346 1 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main335 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (<= 0 (+ (+ 2 (* (- 1) var10)) (- 1))) (= var14 0)) (= var14 0)) (not (= var13 0))))) (inv_main346 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main335 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var14 0)) (= var14 0)) (not (= var13 0))))) (inv_main346 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main561 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var13 0))) (inv_main572 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main561 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var9 0)) (not (= var14 0))) (not (= var13 0))))) (inv_main572 0 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main561 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (not (= var9 0)) (and (not (<= 0 (+ (+ 2 (* (- 1) var10)) (- 1)))) (= var14 0))) (and (= var9 0) (not (= var14 0)))) (not (= var13 0))))) (inv_main572 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main561 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (= var9 0) (and (not (<= 0 (+ (+ 2 (* (- 1) var10)) (- 1)))) (= var14 0))) (and (= var9 0) (not (= var14 0)))) (not (= var13 0))))) (inv_main572 1 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main561 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (<= 0 (+ (+ 2 (* (- 1) var10)) (- 1))) (= var14 0)) (and (= var9 0) (not (= var14 0)))) (not (= var13 0))))) (inv_main572 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main561 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var14 0)) (and (= var9 0) (not (= var14 0)))) (not (= var13 0))))) (inv_main572 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main561 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (not (= var9 0)) (and (not (<= 0 (+ (+ 2 (* (- 1) var10)) (- 1)))) (= var14 0))) (= var14 0)) (not (= var13 0))))) (inv_main572 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main561 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (= var9 0) (and (not (<= 0 (+ (+ 2 (* (- 1) var10)) (- 1)))) (= var14 0))) (= var14 0)) (not (= var13 0))))) (inv_main572 1 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main561 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (<= 0 (+ (+ 2 (* (- 1) var10)) (- 1))) (= var14 0)) (= var14 0)) (not (= var13 0))))) (inv_main572 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main561 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var14 0)) (= var14 0)) (not (= var13 0))))) (inv_main572 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main572 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var11 0) (and (not (= var14 0)) (not (= var10 2)))))) (inv_main757 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var10 var14))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main346 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var10 2))) (inv_main318 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main346 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var14 0) (not (= var10 2))))) (inv_main318 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main346 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var11 0)) (and (not (= var14 0)) (not (= var10 2)))))) (inv_main318 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main572 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var10 2))) (inv_main318 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main572 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var14 0) (not (= var10 2))))) (inv_main318 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main572 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var11 0)) (and (not (= var14 0)) (not (= var10 2)))))) (inv_main318 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main67 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (not (= var0 0)))) (inv_main78 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main67 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (= var1 0) (= var0 0)))) (inv_main78 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main67 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (= var14 0) (and (not (= var1 0)) (= var0 0))))) (inv_main78 var14 0 var12 var11 var10 var9 var8 var7 var6 var5 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main67 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (not (= var14 0)) (and (not (= var1 0)) (= var0 0))))) (inv_main78 0 0 var12 var11 var10 var9 var8 var7 var6 var5 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main346 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var11 0) (and (not (= var14 0)) (not (= var10 2)))))) (inv_main531 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var10 var14))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main44 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (= var0 0) (<= 0 (+ (+ 4 (* (- 1) var5)) (- 1)))))) (inv_main54 var13 var12 var11 var10 var9 var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main44 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (<= 0 (+ (+ 2 (* (- 1) var9)) (- 1))) (and (not (= var0 0)) (<= 0 (+ (+ 4 (* (- 1) var5)) (- 1))))))) (inv_main54 var13 var12 var11 var10 (+ var9 1) var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main44 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (not (<= 0 (+ (+ 2 (* (- 1) var9)) (- 1)))) (and (not (= var0 0)) (<= 0 (+ (+ 4 (* (- 1) var5)) (- 1))))))) (inv_main54 var13 var12 var11 var10 var9 var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main78 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var12 0))) (inv_main111 var12 var11 var10 var12 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main78 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var8 (- 1))) (not (= var12 0))))) (inv_main111 var12 var11 var10 var12 (+ var8 (- 1)) var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main78 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ var8 (- 1)))) (not (= var12 0))))) (inv_main111 var12 var11 var10 var12 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (not (inv_main307 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int)) (not (inv_main531 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int)) (not (inv_main757 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(check-sat)
