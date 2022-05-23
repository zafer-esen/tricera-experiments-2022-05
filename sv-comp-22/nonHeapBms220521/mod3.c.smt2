(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main2 () Bool)
(declare-fun inv_main21 (Int Int) Bool)
(declare-fun inv_main5 (Int Int) Bool)
(assert inv_main2)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main5 var2 var1) (and (and (and (and (and (and (<= 0 (+ (+ 3 (* (- 1) var3)) (- 1))) (<= 0 (+ (+ 3 (* 1 var3)) (- 1)))) (or (not (<= 0 (+ var3 (- 1)))) (<= 0 (+ var2 (- 1))))) (or (not (<= 0 (+ (* (- 1) var3) (- 1)))) (<= 0 (+ (* (- 1) var2) (- 1))))) (= var2 (+ (* 3 var4) var3))) (= var3 1)) (not (= var0 0))))) (inv_main5 (+ var2 2) 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main5 var2 var1) (and (and (and (and (and (and (<= 0 (+ (+ 3 (* (- 1) var3)) (- 1))) (<= 0 (+ (+ 3 (* 1 var3)) (- 1)))) (or (not (<= 0 (+ var3 (- 1)))) (<= 0 (+ var2 (- 1))))) (or (not (<= 0 (+ (* (- 1) var3) (- 1)))) (<= 0 (+ (* (- 1) var2) (- 1))))) (= var2 (+ (* 3 var4) var3))) (= var3 2)) (and (not (or (not (and (and (and (and (<= 0 (+ (+ 3 (* (- 1) var5)) (- 1))) (<= 0 (+ (+ 3 (* 1 var5)) (- 1)))) (or (not (<= 0 (+ var5 (- 1)))) (<= 0 (+ var2 (- 1))))) (or (not (<= 0 (+ (* (- 1) var5) (- 1)))) (<= 0 (+ (* (- 1) var2) (- 1))))) (= var2 (+ (* 3 var6) var5)))) (= var5 1))) (not (= var0 0)))))) (inv_main5 (+ var2 1) 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main5 var3 var2) (and (not (= var1 0)) (and (not (or (not (and (and (and (and (<= 0 (+ (+ 3 (* (- 1) var4)) (- 1))) (<= 0 (+ (+ 3 (* 1 var4)) (- 1)))) (or (not (<= 0 (+ var4 (- 1)))) (<= 0 (+ var3 (- 1))))) (or (not (<= 0 (+ (* (- 1) var4) (- 1)))) (<= 0 (+ (* (- 1) var3) (- 1))))) (= var3 (+ (* 3 var5) var4)))) (= var4 2))) (and (not (or (not (and (and (and (and (<= 0 (+ (+ 3 (* (- 1) var6)) (- 1))) (<= 0 (+ (+ 3 (* 1 var6)) (- 1)))) (or (not (<= 0 (+ var6 (- 1)))) (<= 0 (+ var3 (- 1))))) (or (not (<= 0 (+ (* (- 1) var6) (- 1)))) (<= 0 (+ (* (- 1) var3) (- 1))))) (= var3 (+ (* 3 var7) var6)))) (= var6 1))) (not (= var0 0))))))) (inv_main5 (+ var3 4) 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main5 var3 var2) (and (= var1 0) (and (not (or (not (and (and (and (and (<= 0 (+ (+ 3 (* (- 1) var4)) (- 1))) (<= 0 (+ (+ 3 (* 1 var4)) (- 1)))) (or (not (<= 0 (+ var4 (- 1)))) (<= 0 (+ var3 (- 1))))) (or (not (<= 0 (+ (* (- 1) var4) (- 1)))) (<= 0 (+ (* (- 1) var3) (- 1))))) (= var3 (+ (* 3 var5) var4)))) (= var4 2))) (and (not (or (not (and (and (and (and (<= 0 (+ (+ 3 (* (- 1) var6)) (- 1))) (<= 0 (+ (+ 3 (* 1 var6)) (- 1)))) (or (not (<= 0 (+ var6 (- 1)))) (<= 0 (+ var3 (- 1))))) (or (not (<= 0 (+ (* (- 1) var6) (- 1)))) (<= 0 (+ (* (- 1) var3) (- 1))))) (= var3 (+ (* 3 var7) var6)))) (= var6 1))) (not (= var0 0))))))) (inv_main5 (+ var3 5) 1))))
(assert (forall ((var0 Int)) (or (not inv_main2) (inv_main5 var0 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main5 var2 var1) (and (= var1 0) (= var0 0)))) (inv_main21 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main21 var1 var0) (not (or (not (and (and (and (and (<= 0 (+ (+ 3 (* (- 1) var2)) (- 1))) (<= 0 (+ (+ 3 (* 1 var2)) (- 1)))) (or (not (<= 0 (+ var2 (- 1)))) (<= 0 (+ var1 (- 1))))) (or (not (<= 0 (+ (* (- 1) var2) (- 1)))) (<= 0 (+ (* (- 1) var1) (- 1))))) (= var1 (+ (* 3 var3) var2)))) (= var2 0)))))))
(check-sat)
