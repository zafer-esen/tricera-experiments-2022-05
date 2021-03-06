(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main12 (Int Int Int Int) Bool)
(declare-fun inv_main15 (Int Int Int Int) Bool)
(declare-fun inv_main3 (Int) Bool)
(declare-fun inv_main33 (Int Int Int Int) Bool)
(declare-fun inv_main48 (Int Int Int Int) Bool)
(declare-fun inv_main51 (Int Int Int Int) Bool)
(assert (inv_main3 1))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main48 var3 var2 var1 var0) (not (<= 0 (+ var2 (- 1)))))) (inv_main51 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main3 var3) (and (not (= var2 0)) (and (<= 0 (+ 1000000 (* (- 1) var1))) (<= 0 (+ var1 1000000)))))) (inv_main12 (+ var3 (- 1)) var1 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main3 var3) (and (= var2 0) (and (<= 0 (+ 1000000 (* (- 1) var1))) (<= 0 (+ var1 1000000)))))) (inv_main12 var3 var1 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main12 var3 var2 var1 var0) (= var0 0))) (inv_main15 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main12 var5 var4 var3 var2) (and (and (not (= var1 0)) (not (= var0 0))) (not (= var2 0))))) (inv_main15 var5 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main12 var5 var4 var3 var2) (and (and (= var1 0) (not (= var0 0))) (not (= var2 0))))) (inv_main15 var5 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main12 var5 var4 var3 var2) (and (and (not (= var1 0)) (= var0 0)) (not (= var2 0))))) (inv_main15 var5 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main12 var5 var4 var3 var2) (and (and (= var1 0) (= var0 0)) (not (= var2 0))))) (inv_main15 var5 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main33 var3 var2 var1 var0) (not (= var0 0)))) (inv_main48 (+ var3 (- 1)) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main33 var3 var2 var1 var0) (= var0 0))) (inv_main48 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main48 var3 var2 var1 var0) (<= 0 (+ var2 (- 1))))) (inv_main48 var3 (+ var2 (* (- 1) var3)) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main15 var5 var4 var3 var2) (= var1 0))) (inv_main33 var5 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main15 var7 var6 var5 var4) (and (and (not (= var3 0)) (not (= var2 0))) (not (= var1 0))))) (inv_main33 var7 var6 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main15 var7 var6 var5 var4) (and (and (= var3 0) (not (= var2 0))) (not (= var1 0))))) (inv_main33 var7 var6 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main15 var7 var6 var5 var4) (and (and (not (= var3 0)) (= var2 0)) (not (= var1 0))))) (inv_main33 var7 var6 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main15 var7 var6 var5 var4) (and (and (= var3 0) (= var2 0)) (not (= var1 0))))) (inv_main33 var7 var6 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main51 var3 var2 var1 var0) (not (<= 0 (* (- 1) var2)))))))
(check-sat)
