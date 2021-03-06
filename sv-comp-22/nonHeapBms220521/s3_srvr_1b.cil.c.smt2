(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main3 (Int) Bool)
(declare-fun inv_main45 (Int Int Int Int) Bool)
(declare-fun inv_main56 (Int Int Int Int) Bool)
(declare-fun inv_main9 (Int Int Int Int) Bool)
(assert (forall ((var0 Int)) (inv_main3 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main9 var3 var2 var1 var0) (and (<= 0 (+ 8512 (* (- 1) var3))) (<= 0 (+ (+ var1 (- 2)) (- 1)))))) (inv_main56 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main45 var3 var2 var1 var0) (and (= var1 5) (not (= var1 4))))) (inv_main56 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main9 var3 var2 var1 var0) (and (= var1 2) (and (= var3 8656) (and (not (= var3 8640)) (and (not (= var3 8512)) (and (not (= var3 8466)) (or (not (<= 0 (+ 8512 (* (- 1) var3)))) (not (<= 0 (+ (+ var1 (- 2)) (- 1)))))))))))) (inv_main45 var3 var2 3 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main9 var3 var2 var1 var0) (and (not (= var1 2)) (and (= var3 8656) (and (not (= var3 8640)) (and (not (= var3 8512)) (and (not (= var3 8466)) (or (not (<= 0 (+ 8512 (* (- 1) var3)))) (not (<= 0 (+ (+ var1 (- 2)) (- 1)))))))))))) (inv_main45 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main9 var3 var2 var1 var0) (and (not (= var2 0)) (and (= var1 0) (and (= var3 8466) (or (not (<= 0 (+ 8512 (* (- 1) var3)))) (not (<= 0 (+ (+ var1 (- 2)) (- 1)))))))))) (inv_main9 8656 var2 2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main9 var3 var2 var1 var0) (and (= var2 0) (and (= var1 0) (and (= var3 8466) (or (not (<= 0 (+ 8512 (* (- 1) var3)))) (not (<= 0 (+ (+ var1 (- 2)) (- 1)))))))))) (inv_main9 8512 var2 2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main9 var3 var2 var1 var0) (and (not (= var2 0)) (and (not (= var1 0)) (and (= var3 8466) (or (not (<= 0 (+ 8512 (* (- 1) var3)))) (not (<= 0 (+ (+ var1 (- 2)) (- 1)))))))))) (inv_main9 8656 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main9 var3 var2 var1 var0) (and (= var2 0) (and (not (= var1 0)) (and (= var3 8466) (or (not (<= 0 (+ 8512 (* (- 1) var3)))) (not (<= 0 (+ (+ var1 (- 2)) (- 1)))))))))) (inv_main9 8512 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main9 var4 var3 var2 var1) (and (not (= var0 0)) (and (= var4 8512) (and (not (= var4 8466)) (or (not (<= 0 (+ 8512 (* (- 1) var4)))) (not (<= 0 (+ (+ var2 (- 2)) (- 1)))))))))) (inv_main9 8466 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main9 var4 var3 var2 var1) (and (= var0 0) (and (= var4 8512) (and (not (= var4 8466)) (or (not (<= 0 (+ 8512 (* (- 1) var4)))) (not (<= 0 (+ (+ var2 (- 2)) (- 1)))))))))) (inv_main9 8640 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main9 var3 var2 var1 var0) (and (= var2 0) (and (= var1 3) (and (= var3 8640) (and (not (= var3 8512)) (and (not (= var3 8466)) (or (not (<= 0 (+ 8512 (* (- 1) var3)))) (not (<= 0 (+ (+ var1 (- 2)) (- 1)))))))))))) (inv_main9 8656 var2 4 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main9 var3 var2 var1 var0) (and (= var2 0) (and (not (= var1 3)) (and (= var3 8640) (and (not (= var3 8512)) (and (not (= var3 8466)) (or (not (<= 0 (+ 8512 (* (- 1) var3)))) (not (<= 0 (+ (+ var1 (- 2)) (- 1)))))))))))) (inv_main9 8656 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main45 var3 var2 var1 var0) (and (not (= var2 0)) (= var1 4)))) (inv_main9 8640 var2 5 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main45 var3 var2 var1 var0) (and (not (= var2 0)) (and (not (= var1 5)) (not (= var1 4)))))) (inv_main9 8640 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (inv_main3 var2)) (inv_main9 8466 var1 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (inv_main56 var3 var2 var1 var0))))
(check-sat)
