(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun inv_main15 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main18 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main2 () Bool)
(declare-fun inv_main20 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main36 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main39 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main41 (Int Int Int Int Int Int) Bool)
(assert inv_main2)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main15 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ var1 (* (- 1) var0)) (- 1))))) (inv_main15 var5 var4 var3 var2 var1 (* 2 var0)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and inv_main2 (and (<= 0 (+ 1073741823 (* (- 1) var3))) (not (= var2 0))))) (inv_main15 var2 1 var1 var0 var3 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main36 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var1 (* (- 1) var0)) (- 1)))))) (inv_main39 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main15 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var1 (* (- 1) var0)) (- 1)))))) (inv_main18 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main36 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ var1 (* (- 1) var0)) (- 1))))) (inv_main36 var5 var4 var3 var2 var1 (* 2 var0)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and inv_main2 (and (<= 0 (+ 1073741823 (* (- 1) var3))) (= var2 0)))) (inv_main36 var2 2 var1 var0 var3 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main39 var5 var4 var3 var2 var1 var0)) (inv_main41 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main41 var6 var5 var4 var3 var2 var1) (and (= var0 0) (and (<= 0 (+ var4 (- 1))) (<= 0 (+ var3 (- 1))))))) (inv_main41 var6 var5 var4 (+ var3 (* (- 1) var5)) var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main41 var7 var6 var5 var4 var3 var2) (and (not (= var1 0)) (and (<= 0 (+ var5 (- 1))) (<= 0 (+ var4 (- 1))))))) (inv_main41 var7 var6 (+ var5 (* (- 1) var6)) var0 var3 (+ var2 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main18 var5 var4 var3 var2 var1 var0)) (inv_main20 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main20 var6 var5 var4 var3 var2 var1) (and (= var0 0) (and (<= 0 (+ var4 (- 1))) (<= 0 (+ var3 (- 1))))))) (inv_main20 var6 var5 var4 (+ var3 (* (- 1) var5)) var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main20 var7 var6 var5 var4 var3 var2) (and (not (= var1 0)) (and (<= 0 (+ var5 (- 1))) (<= 0 (+ var4 (- 1))))))) (inv_main20 var7 var6 (+ var5 (* (- 1) var6)) var0 var3 (+ var2 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main18 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ var0 (- 2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main39 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ var0 (- 2))))))))
(check-sat)
