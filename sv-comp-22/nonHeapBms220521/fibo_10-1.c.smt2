(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun fibo0 (Int Int) Bool)
(declare-fun fibo1 (Int Int Int) Bool)
(declare-fun fibo3 (Int Int) Bool)
(declare-fun fibo4 (Int Int) Bool)
(declare-fun fibo5 (Int Int) Bool)
(declare-fun fibo6 (Int Int) Bool)
(declare-fun fibo_post (Int Int) Bool)
(declare-fun fibo_pre (Int) Bool)
(declare-fun inv_main3 (Int) Bool)
(declare-fun inv_main6 (Int Int) Bool)
(assert (inv_main3 10))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (and (inv_main3 var1) (fibo_post var1 var0)) (= var0 55))) (inv_main6 var1 var0))))
(assert (forall ((var0 Int)) (or (not (inv_main3 var0)) (fibo_pre var0))))
(assert (forall ((var0 Int) (var1 Int)) (not (inv_main6 var1 var0))))
(assert (forall ((var0 Int)) (or (not (fibo_pre var0)) (fibo0 var0 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (fibo0 var1 var0) (<= 0 (+ (+ 1 (* (- 1) var1)) (- 1))))) (fibo3 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (fibo0 var1 var0) (not (<= 0 (+ (+ 1 (* (- 1) var1)) (- 1)))))) (fibo4 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (fibo3 var1 var0)) (fibo1 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (fibo4 var1 var0) (= var1 1))) (fibo5 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (fibo4 var1 var0) (not (= var1 1)))) (fibo6 var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (fibo5 var1 var0)) (fibo1 var1 var0 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (fibo6 var3 var2) (fibo_post (+ var3 (- 1)) var1)) (fibo_post (+ var3 (- 2)) var0))) (fibo1 var3 var2 (+ var1 var0)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (fibo1 var2 var1 var0)) (fibo_post var1 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (fibo6 var1 var0)) (fibo_pre (+ var1 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (fibo6 var2 var1) (fibo_post (+ var2 (- 1)) var0))) (fibo_pre (+ var2 (- 2))))))
(check-sat)
