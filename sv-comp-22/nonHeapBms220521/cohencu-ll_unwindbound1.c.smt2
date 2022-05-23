(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun inv_main11 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main12 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main15 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main16 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main17 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main18 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main26 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main27 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main28 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main29 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main30 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (inv_main4 0 var4 var3 var2 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main16 var5 var4 var3 var2 var1 var0)) (inv_main17 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main18 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ var4 (* (- 1) var3)))))) (inv_main11 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main4 var6 var5 var4 var3 var2 var1) (not (<= 0 (+ (+ 1 (* (- 1) var6)) (- 1)))))) (inv_main11 (+ var6 1) var0 0 0 1 6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main18 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ (+ 1 (* (- 1) var5)) (- 1)))) (<= 0 (+ var4 (* (- 1) var3)))))) (inv_main11 (+ var5 1) var4 (+ var3 1) (+ var2 var1) (+ var1 var0) (+ var0 6)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main29 var5 var4 var3 var2 var1 var0)) (inv_main30 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main4 var6 var5 var4 var3 var2 var1) (<= 0 (+ (+ 1 (* (- 1) var6)) (- 1))))) (inv_main12 (+ var6 1) var0 0 0 1 6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main18 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ 1 (* (- 1) var5)) (- 1))) (<= 0 (+ var4 (* (- 1) var3)))))) (inv_main12 (+ var5 1) var4 (+ var3 1) (+ var2 var1) (+ var1 var0) (+ var0 6)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main27 var5 var4 var3 var2 var1 var0)) (inv_main28 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main15 var5 var4 var3 var2 var1 var0)) (inv_main16 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main11 var5 var4 var3 var2 var1 var0)) (inv_main26 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main17 var5 var4 var3 var2 var1 var0)) (inv_main18 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main28 var5 var4 var3 var2 var1 var0)) (inv_main29 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main12 var5 var4 var3 var2 var1 var0)) (inv_main15 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main26 var5 var4 var3 var2 var1 var0)) (inv_main27 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main12 var5 var4 var3 var2 var1 var0) (not (= var0 (+ (* 6 var3) 6)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main15 var5 var4 var3 var2 var1 var0) (not (= var1 (+ (+ (* (* 3 var3) var3) (* 3 var3)) 1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main16 var5 var4 var3 var2 var1 var0) (not (= var2 (* (* var3 var3) var3)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main17 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (* var1 var0) (* (- 18) var2)) (* (- 12) var1)) (* 2 var0)) (- 6)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main18 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (* var0 var0) (* (- 12) var1)) (* (- 6) var0)) 12) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main11 var5 var4 var3 var2 var1 var0) (not (= var0 (+ (* 6 var3) 6)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main26 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (* (* 6 var4) var2) (* (- 1) (* var2 var0))) (* 12 var2)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main27 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (* var4 var0) (* (- 6) var4)) (* (- 2) var1)) (* 2 var0)) (- 10)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main28 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (+ (* (* 2 var1) var1) (* (- 1) (* (* 3 var2) var0))) (* (- 18) var2)) (* (- 10) var1)) (* 3 var0)) (- 10)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main29 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (* var0 var0) (* (- 12) var1)) (* (- 6) var0)) 12) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main30 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (* var1 var0) (* (- 18) var2)) (* (- 12) var1)) (* 2 var0)) (- 6)) 0))))))
(check-sat)
