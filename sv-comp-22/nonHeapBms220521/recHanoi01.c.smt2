(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun applyHanoi0 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun applyHanoi1 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun applyHanoi2 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun applyHanoi3 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun applyHanoi4 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun applyHanoi5 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun applyHanoi6 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun applyHanoi7 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun applyHanoi_post (Int Int Int Int Int Int) Bool)
(declare-fun applyHanoi_pre (Int Int Int Int Int) Bool)
(declare-fun hanoi0 (Int Int Int Int) Bool)
(declare-fun hanoi1 (Int Int Int Int Int) Bool)
(declare-fun hanoi3 (Int Int Int Int) Bool)
(declare-fun hanoi4 (Int Int Int Int) Bool)
(declare-fun hanoi5 (Int Int Int Int) Bool)
(declare-fun hanoi_post (Int Int Int Int) Bool)
(declare-fun hanoi_pre (Int Int) Bool)
(declare-fun inv_main12 (Int Int Int) Bool)
(declare-fun inv_main2 (Int) Bool)
(declare-fun inv_main8 (Int Int) Bool)
(declare-fun inv_main9 (Int Int) Bool)
(assert (inv_main2 0))
(assert (forall ((var0 Int) (var1 Int)) (or (not (and (inv_main2 var1) (and (not (<= 0 (+ (+ 1 (* (- 1) var0)) (- 1)))) (not (<= 0 (+ (+ var0 (- 31)) (- 1))))))) (inv_main8 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main8 var2 var1) (applyHanoi_post var2 var1 1 3 2 var0))) (inv_main9 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (inv_main9 var3 var2) (hanoi_post var3 var2 var1 var0)) (not (= var0 var1)))) (inv_main12 var1 var2 var0))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (inv_main8 var1 var0)) (applyHanoi_pre var1 var0 1 3 2))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (inv_main9 var1 var0)) (hanoi_pre var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (inv_main12 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (applyHanoi_pre var4 var3 var2 var1 var0)) (applyHanoi0 var4 var3 var2 var1 var0 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (applyHanoi0 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var8 0))) (applyHanoi4 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (applyHanoi0 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var8 0)))) (applyHanoi5 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (applyHanoi4 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (applyHanoi1 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (applyHanoi5 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (applyHanoi3 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (applyHanoi3 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (applyHanoi6 (+ var9 1) var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (applyHanoi6 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (applyHanoi_post var10 (+ var9 (- 1)) var8 var6 var7 var0))) (applyHanoi7 var0 var9 var8 var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int)) (or (not (and (applyHanoi7 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (applyHanoi_post var10 (+ var9 (- 1)) var6 var7 var8 var0))) (applyHanoi2 var0 var9 var8 var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (applyHanoi2 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (applyHanoi1 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (applyHanoi1 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (applyHanoi_post var4 var3 var2 var1 var0 var9))))
(assert (forall ((var0 Int) (var1 Int)) (or (not (hanoi_pre var1 var0)) (hanoi0 var1 var0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (hanoi0 var3 var2 var1 var0) (= var2 1))) (hanoi4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (hanoi0 var3 var2 var1 var0) (not (= var2 1)))) (hanoi5 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (hanoi4 var3 var2 var1 var0)) (hanoi1 var3 var2 var1 var0 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (hanoi5 var3 var2 var1 var0)) (hanoi3 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (hanoi3 var5 var4 var3 var2) (hanoi_post var5 (+ var4 (- 1)) var1 var0))) (hanoi1 var1 var4 var3 var2 (+ (* 2 var0) 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (hanoi1 var4 var3 var2 var1 var0)) (hanoi_post var2 var1 var4 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (applyHanoi6 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (applyHanoi_pre var9 (+ var8 (- 1)) var7 var5 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (applyHanoi7 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (applyHanoi_pre var9 (+ var8 (- 1)) var5 var6 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (hanoi3 var3 var2 var1 var0)) (hanoi_pre var3 (+ var2 (- 1))))))
(check-sat)