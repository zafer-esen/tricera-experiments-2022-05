(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun id0 (Int Int) Bool)
(declare-fun id1 (Int Int Int) Bool)
(declare-fun id3 (Int Int) Bool)
(declare-fun id4 (Int Int) Bool)
(declare-fun id5 (Int Int) Bool)
(declare-fun id_post (Int Int) Bool)
(declare-fun id_pre (Int) Bool)
(declare-fun inv_main3 (Int) Bool)
(declare-fun inv_main5 (Int Int) Bool)
(assert (inv_main3 20))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (and (inv_main3 var1) (id_post var1 var0)) (not (= var0 20)))) (inv_main5 var1 var0))))
(assert (forall ((var0 Int)) (or (not (inv_main3 var0)) (id_pre var0))))
(assert (forall ((var0 Int) (var1 Int)) (not (inv_main5 var1 var0))))
(assert (forall ((var0 Int)) (or (not (id_pre var0)) (id0 var0 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (id0 var1 var0) (= var1 0))) (id4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (id0 var1 var0) (not (= var1 0)))) (id5 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (id4 var1 var0)) (id1 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (id5 var1 var0)) (id3 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (id3 var2 var1) (id_post (+ var2 (- 1)) var0))) (id1 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (id1 var2 var1 var0)) (id_post var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (id3 var1 var0)) (id_pre (+ var1 (- 1))))))
(check-sat)
