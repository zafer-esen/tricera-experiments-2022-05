(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main10 (Int Int Int Int Int) Bool)
(declare-fun inv_main17 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main18 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main2 () Bool)
(declare-fun inv_main24 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main31 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main32 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main38 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(assert inv_main2)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main38 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var5 (* (- 1) var1)) (- 1)))))) (inv_main10 var13 var12 var11 var10 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and inv_main2 (or (or (or (or (or (not (<= 0 (+ var3 (- 1)))) (not (<= 0 (+ var2 (- 1))))) (not (<= 0 (+ var1 (- 1))))) (not (<= 0 (+ 109 (* (- 1) var3))))) (not (<= 0 (+ 109 (* (- 1) var2))))) (not (<= 0 (+ 109 (* (- 1) var1))))))) (inv_main10 var1 var3 var2 var0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main31 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ var6 (* (- 1) var1)) (- 1))))) (inv_main31 var11 var10 var9 var8 var7 var6 var5 var4 (+ var3 1) var2 (+ var1 var4) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main24 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var5 (* (- 1) var1)) (- 1)))))) (inv_main31 var13 var12 var11 var0 var9 var12 var11 var13 0 0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main31 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var6 (* (- 1) var1)) (- 1)))))) (inv_main32 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main32 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ var5 (* (- 1) var0)) (- 1))))) (inv_main32 var11 var10 var9 var8 var7 var6 var5 var4 var3 (+ var2 1) var1 (+ var0 var4)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main38 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ var5 (* (- 1) var1)) (- 1))))) (inv_main38 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1) (+ var0 var4)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main32 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var5 (* (- 1) var0)) (- 1)))))) (inv_main38 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main17 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var6 (* (- 1) var1)) (- 1)))))) (inv_main18 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main18 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ var5 (* (- 1) var0)) (- 1))))) (inv_main18 var11 var10 var9 var8 var7 var6 var5 var4 var3 (+ var2 1) var1 (+ var0 var4)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main17 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ var6 (* (- 1) var1)) (- 1))))) (inv_main17 var11 var10 var9 var8 var7 var6 var5 var4 (+ var3 1) var2 (+ var1 var4) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and inv_main2 (and (and (and (and (and (<= 0 (+ var3 (- 1))) (<= 0 (+ var2 (- 1)))) (<= 0 (+ var1 (- 1)))) (<= 0 (+ 109 (* (- 1) var3)))) (<= 0 (+ 109 (* (- 1) var2)))) (<= 0 (+ 109 (* (- 1) var1)))))) (inv_main17 var1 var3 var2 var0 var0 var3 var2 var1 0 0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main24 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ var5 (* (- 1) var1)) (- 1))))) (inv_main24 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1) (+ var0 var4)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main18 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var5 (* (- 1) var0)) (- 1)))))) (inv_main24 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main10 var4 var3 var2 var1 var0) (not (= var1 var0))))))
(check-sat)
