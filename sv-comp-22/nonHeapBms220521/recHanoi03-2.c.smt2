(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun hanoi0 (Int Int) Bool)
(declare-fun hanoi1 (Int Int Int) Bool)
(declare-fun hanoi3 (Int Int) Bool)
(declare-fun hanoi4 (Int Int) Bool)
(declare-fun hanoi5 (Int Int) Bool)
(declare-fun hanoi_post (Int Int) Bool)
(declare-fun hanoi_pre (Int) Bool)
(declare-fun inv_main10 (Int Int) Bool)
(declare-fun inv_main2 () Bool)
(declare-fun inv_main5 (Int) Bool)
(assert inv_main2)
(assert (forall ((var0 Int)) (or (not (and inv_main2 (and (not (<= 0 (+ (+ 1 (* (- 1) var0)) (- 1)))) (not (<= 0 (+ (+ var0 (- 31)) (- 1))))))) (inv_main5 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (and (inv_main5 var1) (hanoi_post var1 var0)) (not (<= 0 (+ var0 (* (- 1) var1)))))) (inv_main10 var1 var0))))
(assert (forall ((var0 Int)) (or (not (inv_main5 var0)) (hanoi_pre var0))))
(assert (forall ((var0 Int) (var1 Int)) (not (inv_main10 var1 var0))))
(assert (forall ((var0 Int)) (or (not (hanoi_pre var0)) (hanoi0 var0 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (hanoi0 var1 var0) (= var1 1))) (hanoi4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (hanoi0 var1 var0) (not (= var1 1)))) (hanoi5 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (hanoi4 var1 var0)) (hanoi1 var1 var0 1))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (hanoi5 var1 var0)) (hanoi3 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (hanoi3 var2 var1) (hanoi_post (+ var2 (- 1)) var0))) (hanoi1 var2 var1 (+ (* 2 var0) 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (hanoi1 var2 var1 var0)) (hanoi_post var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (hanoi3 var1 var0)) (hanoi_pre (+ var1 (- 1))))))
(check-sat)
