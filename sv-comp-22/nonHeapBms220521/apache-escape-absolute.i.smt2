(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main33 (Int Int Int Int Int) Bool)
(declare-fun inv_main34 (Int Int Int Int Int) Bool)
(declare-fun inv_main37 (Int Int Int Int Int) Bool)
(declare-fun inv_main40 (Int Int Int Int Int) Bool)
(declare-fun inv_main41 (Int Int Int Int Int) Bool)
(declare-fun inv_main42 (Int Int Int Int Int) Bool)
(declare-fun inv_main44 (Int Int Int Int Int) Bool)
(declare-fun inv_main48 (Int Int Int Int Int) Bool)
(declare-fun inv_main5 (Int Int Int Int Int) Bool)
(declare-fun inv_main50 (Int Int Int Int Int) Bool)
(declare-fun inv_main52 (Int Int Int Int Int) Bool)
(declare-fun inv_main55 (Int Int Int Int Int) Bool)
(declare-fun inv_main65 (Int Int Int Int Int) Bool)
(declare-fun inv_main66 (Int Int Int Int Int) Bool)
(declare-fun inv_main69 (Int Int Int Int Int) Bool)
(declare-fun inv_main70 (Int Int Int Int Int) Bool)
(declare-fun inv_main76 (Int Int Int Int Int) Bool)
(declare-fun inv_main77 (Int Int Int Int Int) Bool)
(declare-fun inv_main78 (Int Int Int Int Int) Bool)
(declare-fun inv_main79 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (inv_main5 var4 var3 var2 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main42 var4 var3 var2 var1 var0)) (inv_main50 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main44 var4 var3 var2 var1 var0)) (inv_main48 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main77 var4 var3 var2 var1 var0)) (inv_main78 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main5 var7 var6 var5 var4 var3) (and (and (not (= var2 0)) (not (<= 0 (+ (+ var2 (* (- 1) (+ var1 (- 1)))) (- 1))))) (and (<= 0 var2) (and (<= 0 (+ var0 (- 1))) (and (<= 0 (+ var1 (- 1))) (and (and (<= 0 (+ 1000000 (* (- 1) var2))) (<= 0 (+ var2 1000000))) (and (and (<= 0 (+ 1000000 (* (- 1) var0))) (<= 0 (+ var0 1000000))) (and (<= 0 (+ 1000000 (* (- 1) var1))) (<= 0 (+ var1 1000000))))))))))) (inv_main33 var2 var1 var0 var2 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main65 var4 var3 var2 var1 var0)) (inv_main66 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main41 var5 var4 var3 var2 var1) (and (= var0 0) (not (= var2 (+ var4 (- 1))))))) (inv_main44 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main37 var4 var3 var2 var1 var0)) (inv_main40 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main34 var5 var4 var3 var2 var1) (not (= var0 0)))) (inv_main37 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main33 var4 var3 var2 var1 var0)) (inv_main34 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main69 var4 var3 var2 var1 var0)) (inv_main70 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main50 var4 var3 var2 var1 var0) (not (= var1 (+ var3 (- 1)))))) (inv_main52 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main55 var5 var4 var3 var2 var1) (and (not (= var0 0)) (not (= (+ var2 1) (+ var4 (- 1))))))) (inv_main65 (+ var2 1) var4 var3 (+ var2 1) 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main40 var4 var3 var2 var1 var0)) (inv_main41 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main48 var4 var3 var2 var1 var0)) (inv_main41 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main66 var4 var3 var2 var1 var0) (and (not (= var1 (+ var3 (- 1)))) (<= 0 (+ (+ (+ var2 (- 1)) (* (- 1) var0)) (- 1)))))) (inv_main69 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main79 var4 var3 var2 var1 var0) (and (not (= (+ var1 1) (+ var3 (- 1)))) (<= 0 (+ (+ (+ var2 (- 1)) (* (- 1) var0)) (- 1)))))) (inv_main69 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main70 var5 var4 var3 var2 var1) (and (and (not (= (+ var2 1) (+ var4 (- 1)))) (<= 0 (+ (+ (+ var3 (- 1)) (* (- 1) var1)) (- 1)))) (= var0 0)))) (inv_main69 var5 var4 var3 (+ var2 1) var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main52 var4 var3 var2 var1 var0)) (inv_main55 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main76 var4 var3 var2 var1 var0)) (inv_main77 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main78 var4 var3 var2 var1 var0)) (inv_main79 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main70 var5 var4 var3 var2 var1) (not (= var0 0)))) (inv_main76 var5 var4 var3 var2 (+ var1 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main41 var4 var3 var2 var1 var0) (= var1 (+ var3 (- 1))))) (inv_main42 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main41 var5 var4 var3 var2 var1) (and (not (= var0 0)) (not (= var2 (+ var4 (- 1))))))) (inv_main42 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main33 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (* (- 1) (+ var1 (- 1)))) (- 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main34 var4 var3 var2 var1 var0) (not (<= 0 (+ var1 (- 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main37 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (* (- 1) var1)) (- 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main40 var4 var3 var2 var1 var0) (not (<= 0 var1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main44 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (* (- 1) var1)) (- 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main48 var4 var3 var2 var1 var0) (not (<= 0 var1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main42 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (* (- 1) var1)) (- 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main50 var4 var3 var2 var1 var0) (not (<= 0 var1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main52 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (* (- 1) (+ var1 1))) (- 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main55 var4 var3 var2 var1 var0) (not (<= 0 (+ var1 1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main65 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (* (- 1) var1)) (- 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main66 var4 var3 var2 var1 var0) (not (<= 0 var1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main69 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (* (- 1) var1)) (- 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main70 var4 var3 var2 var1 var0) (not (<= 0 var1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main76 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var2 (* (- 1) var0)) (- 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main77 var4 var3 var2 var1 var0) (not (<= 0 var0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main78 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (* (- 1) var1)) (- 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main79 var4 var3 var2 var1 var0) (not (<= 0 var1))))))
(check-sat)
