(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main10 (Int Int) Bool)
(declare-fun inv_main13 (Int Int Int) Bool)
(declare-fun inv_main15 (Int Int Int Int) Bool)
(declare-fun inv_main2 () Bool)
(declare-fun mult0 (Int Int Int Int) Bool)
(declare-fun mult1 (Int Int Int Int Int) Bool)
(declare-fun mult3 (Int Int Int Int) Bool)
(declare-fun mult4 (Int Int Int Int) Bool)
(declare-fun mult5 (Int Int Int Int) Bool)
(declare-fun mult6 (Int Int Int Int) Bool)
(declare-fun mult7 (Int Int Int Int) Bool)
(declare-fun mult8 (Int Int Int Int) Bool)
(declare-fun mult_post (Int Int Int) Bool)
(declare-fun mult_pre (Int Int) Bool)
(assert inv_main2)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main10 var2 var1) (mult_post var2 var1 var0))) (inv_main13 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (inv_main13 var3 var2 var1) (mult_post var2 var3 var0)) (and (and (not (= var1 var0)) (<= 0 (+ var3 (- 1)))) (<= 0 (+ var2 (- 1)))))) (inv_main15 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and inv_main2 (and (and (not (<= 0 (+ (* (- 1) var1) (- 1)))) (not (<= 0 (+ (+ var1 (- 46340)) (- 1))))) (and (not (<= 0 (+ (* (- 1) var0) (- 1)))) (not (<= 0 (+ (+ var0 (- 46340)) (- 1)))))))) (inv_main10 var0 var1))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (inv_main10 var1 var0)) (mult_pre var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (inv_main13 var2 var1 var0)) (mult_pre var1 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (inv_main15 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (mult_pre var1 var0)) (mult0 var1 var0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (mult0 var3 var2 var1 var0) (<= 0 (+ (* (- 1) var2) (- 1))))) (mult4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (mult0 var3 var2 var1 var0) (not (<= 0 (+ (* (- 1) var2) (- 1)))))) (mult5 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (mult4 var4 var3 var2 var1) (mult_post var4 (* (- 1) var3) var0))) (mult1 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (mult5 var3 var2 var1 var0)) (mult3 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (mult3 var3 var2 var1 var0) (= var2 0))) (mult7 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (mult3 var3 var2 var1 var0) (not (= var2 0)))) (mult8 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (mult7 var3 var2 var1 var0)) (mult1 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (mult8 var3 var2 var1 var0)) (mult6 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (mult6 var4 var3 var2 var1) (mult_post var4 (+ var3 (- 1)) var0))) (mult1 var4 var3 var2 var1 (+ var4 var0)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (mult1 var4 var3 var2 var1 var0)) (mult_post var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (mult4 var3 var2 var1 var0)) (mult_pre var3 (* (- 1) var2)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (mult6 var3 var2 var1 var0)) (mult_pre var3 (+ var2 (- 1))))))
(check-sat)
