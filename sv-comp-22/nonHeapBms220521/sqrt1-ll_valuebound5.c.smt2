(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main16 (Int Int Int Int) Bool)
(declare-fun inv_main17 (Int Int Int Int) Bool)
(declare-fun inv_main18 (Int Int Int Int) Bool)
(declare-fun inv_main19 (Int Int Int Int) Bool)
(declare-fun inv_main26 (Int Int Int Int) Bool)
(declare-fun inv_main27 (Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (inv_main4 var3 var2 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main19 var3 var2 var1 var0) (not (<= 0 (+ var3 (* (- 1) var1)))))) (inv_main16 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (inv_main18 var3 var2 var1 var0)) (inv_main19 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (inv_main17 var3 var2 var1 var0)) (inv_main18 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (inv_main16 var3 var2 var1 var0)) (inv_main26 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main4 var9 var8 var7 var6) (and (not (= var5 0)) (and (and (and (and (= var4 var3) (= var2 var8)) (= var1 var7)) (= var0 var6)) (or (and (and (<= 0 var3) (<= 0 (+ 5 (* (- 1) var3)))) (= var5 1)) (and (not (and (<= 0 var3) (<= 0 (+ 5 (* (- 1) var3))))) (= var5 0))))))) (inv_main17 var4 0 1 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main19 var3 var2 var1 var0) (<= 0 (+ var3 (* (- 1) var1))))) (inv_main17 var3 (+ var2 1) (+ var1 (+ var0 2)) (+ var0 2)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (inv_main26 var3 var2 var1 var0)) (inv_main27 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main17 var3 var2 var1 var0) (not (= var0 (+ (* 2 var2) 1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main18 var3 var2 var1 var0) (not (= var1 (* (+ var2 1) (+ var2 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main19 var3 var2 var1 var0) (not (= (+ (+ (+ (* var0 var0) (* (- 4) var1)) (* 2 var0)) 1) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main16 var3 var2 var1 var0) (not (= var0 (+ (* 2 var2) 1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main26 var3 var2 var1 var0) (not (= var1 (* (+ var2 1) (+ var2 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main27 var3 var2 var1 var0) (not (= (+ (+ (+ (* var0 var0) (* (- 4) var1)) (* 2 var0)) 1) 0))))))
(check-sat)
