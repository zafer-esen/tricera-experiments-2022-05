(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun ackermann0 (Int Int Int Int) Bool)
(declare-fun ackermann1 (Int Int Int Int Int) Bool)
(declare-fun ackermann3 (Int Int Int Int) Bool)
(declare-fun ackermann4 (Int Int Int Int) Bool)
(declare-fun ackermann5 (Int Int Int Int) Bool)
(declare-fun ackermann6 (Int Int Int Int) Bool)
(declare-fun ackermann7 (Int Int Int Int) Bool)
(declare-fun ackermann8 (Int Int Int Int) Bool)
(declare-fun ackermann9 (Int Int Int Int Int Int) Bool)
(declare-fun ackermann_post (Int Int Int) Bool)
(declare-fun ackermann_pre (Int Int) Bool)
(declare-fun inv_main10 (Int Int) Bool)
(declare-fun inv_main15 (Int Int Int) Bool)
(declare-fun inv_main2 () Bool)
(assert inv_main2)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (and (inv_main10 var2 var1) (ackermann_post var2 var1 var0)) (and (not (<= 0 (+ (+ 2 (* (- 1) var2)) (- 1)))) (not (<= 0 (+ var0 (- 4))))))) (inv_main15 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and inv_main2 (and (and (not (<= 0 (+ (* (- 1) var1) (- 1)))) (not (<= 0 (+ (+ var1 (- 23)) (- 1))))) (and (not (<= 0 (+ (* (- 1) var0) (- 1)))) (not (<= 0 (+ (+ var0 (- 3)) (- 1)))))))) (inv_main10 var0 var1))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (inv_main10 var1 var0)) (ackermann_pre var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (inv_main15 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (ackermann_pre var1 var0)) (ackermann0 var1 var0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (ackermann0 var3 var2 var1 var0) (= var3 0))) (ackermann4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (ackermann0 var3 var2 var1 var0) (not (= var3 0)))) (ackermann5 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (ackermann4 var3 var2 var1 var0)) (ackermann1 var3 var2 var1 var0 (+ var2 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (ackermann5 var3 var2 var1 var0)) (ackermann3 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (ackermann3 var3 var2 var1 var0) (= var2 0))) (ackermann7 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (ackermann3 var3 var2 var1 var0) (not (= var2 0)))) (ackermann8 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (ackermann7 var4 var3 var2 var1) (ackermann_post (+ var4 (- 1)) 1 var0))) (ackermann1 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (ackermann8 var3 var2 var1 var0)) (ackermann6 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (ackermann6 var4 var3 var2 var1) (ackermann_post var4 (+ var3 (- 1)) var0))) (ackermann9 var4 var3 var2 var1 (+ var4 (- 1)) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (ackermann9 var6 var5 var4 var3 var2 var1) (ackermann_post var2 var1 var0))) (ackermann1 var6 var5 var4 var3 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (ackermann1 var4 var3 var2 var1 var0)) (ackermann_post var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (ackermann7 var3 var2 var1 var0)) (ackermann_pre (+ var3 (- 1)) 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (ackermann6 var3 var2 var1 var0)) (ackermann_pre var3 (+ var2 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (ackermann9 var5 var4 var3 var2 var1 var0)) (ackermann_pre var1 var0))))
(check-sat)