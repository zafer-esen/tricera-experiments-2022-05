(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun inv_main191 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main202 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main207 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main218 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main311 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main329 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main340 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main39 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main433 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main49 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main62 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main73 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main87 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main98 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int)) (inv_main4 1 0 0 1 4 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main62 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (not (= var1 0)) (= var0 0)))) (inv_main73 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main62 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (= var1 0) (= var0 0)))) (inv_main73 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main62 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (not (= var0 0)))) (inv_main73 var12 var11 var10 1 var8 var7 var6 var5 var4 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main207 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var10 0))) (inv_main218 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main207 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var12 0)) (and (not (<= 0 (+ (+ 2 (* (- 1) var13)) (- 1)))) (= var11 0))) (not (= var10 0))))) (inv_main218 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main207 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var12 0) (and (not (<= 0 (+ (+ 2 (* (- 1) var13)) (- 1)))) (= var11 0))) (not (= var10 0))))) (inv_main218 var13 var12 1 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main207 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ (+ 2 (* (- 1) var13)) (- 1))) (= var11 0)) (not (= var10 0))))) (inv_main218 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main207 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var11 0)) (not (= var10 0))))) (inv_main218 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main39 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (= var11 0) (not (<= 0 (+ (+ 4 (* (- 1) var6)) (- 1))))))) (inv_main207 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main39 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (and (<= 0 (+ var13 (- 1))) (not (= var11 0))) (not (<= 0 (+ (+ 4 (* (- 1) var6)) (- 1))))))) (inv_main207 (+ var13 (- 1)) var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main39 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (and (not (<= 0 (+ var13 (- 1)))) (not (= var11 0))) (not (<= 0 (+ (+ 4 (* (- 1) var6)) (- 1))))))) (inv_main207 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main202 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var11 0) (<= 0 (+ (+ (+ var9 (- 1)) (* (- 1) var1)) (- 1)))))) (inv_main329 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var9 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main202 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var13 (- 1))) (and (not (= var11 0)) (<= 0 (+ (+ (+ var9 (- 1)) (* (- 1) var1)) (- 1))))))) (inv_main329 (+ var13 (- 1)) var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var9 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main202 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ var13 (- 1)))) (and (not (= var11 0)) (<= 0 (+ (+ (+ var9 (- 1)) (* (- 1) var1)) (- 1))))))) (inv_main329 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var9 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main218 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var11 0)) (not (= var12 0))))) (inv_main311 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var12 var11))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var9 0)) (not (= var10 0))))) (inv_main191 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var10 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main218 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var12 0))) (inv_main202 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main218 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var11 0) (not (= var12 0))))) (inv_main202 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main340 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var12 0))) (inv_main202 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main340 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var11 0) (not (= var12 0))))) (inv_main202 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main340 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var11 0)) (not (= var12 0))))) (inv_main433 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var12 var11))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var10 0))) (inv_main39 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var9 0) (not (= var10 0))))) (inv_main39 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (inv_main4 var10 var9 var8 var7 var6 var5 var4)) (inv_main39 var10 var9 var8 var7 var6 var5 1 0 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main329 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var10 0))) (inv_main340 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main329 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var12 0)) (and (not (<= 0 (+ (+ 2 (* (- 1) var13)) (- 1)))) (= var11 0))) (not (= var10 0))))) (inv_main340 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main329 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var12 0) (and (not (<= 0 (+ (+ 2 (* (- 1) var13)) (- 1)))) (= var11 0))) (not (= var10 0))))) (inv_main340 var13 var12 1 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main329 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ (+ 2 (* (- 1) var13)) (- 1))) (= var11 0)) (not (= var10 0))))) (inv_main340 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (or (not (and (inv_main329 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var11 0)) (not (= var10 0))))) (inv_main340 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (= var0 0))) (inv_main62 var12 var11 var10 var9 var8 var7 var6 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (not (= var11 0)) (not (= var0 0))))) (inv_main62 var12 0 var10 var9 var8 var7 var6 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (= var11 0) (not (= var0 0))))) (inv_main62 var12 1 var10 var9 var8 var7 var6 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main87 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var8 0))) (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main87 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var10 0)) (and (not (<= 0 (+ (+ 2 (* (- 1) var11)) (- 1)))) (= var9 0))) (not (= var8 0))))) (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main87 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (= var10 0) (and (not (<= 0 (+ (+ 2 (* (- 1) var11)) (- 1)))) (= var9 0))) (not (= var8 0))))) (inv_main98 var11 var10 1 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main87 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ (+ 2 (* (- 1) var11)) (- 1))) (= var9 0)) (not (= var8 0))))) (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main87 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var9 0)) (not (= var8 0))))) (inv_main98 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main73 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var9 0))) (inv_main87 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main73 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var11 (- 1))) (not (= var9 0))))) (inv_main87 (+ var11 (- 1)) var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main73 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ var11 (- 1)))) (not (= var9 0))))) (inv_main87 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main39 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (= var0 0) (<= 0 (+ (+ 4 (* (- 1) var5)) (- 1)))))) (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main39 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (<= 0 (+ (+ 2 (* (- 1) var12)) (- 1))) (and (not (= var0 0)) (<= 0 (+ (+ 4 (* (- 1) var5)) (- 1))))))) (inv_main49 (+ var12 1) var11 var10 var9 var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int)) (or (not (and (inv_main39 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (not (<= 0 (+ (+ 2 (* (- 1) var12)) (- 1)))) (and (not (= var0 0)) (<= 0 (+ (+ 4 (* (- 1) var5)) (- 1))))))) (inv_main49 var12 var11 var10 var9 var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int)) (not (inv_main191 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int)) (not (inv_main311 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int)) (not (inv_main433 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(check-sat)
