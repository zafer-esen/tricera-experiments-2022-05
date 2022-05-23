(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun inv_main165 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main173 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main181 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main188 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main6 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (inv_main6 var2 0 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int)) (or (not (and (inv_main165 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var6 (+ var15 (* (- 1) var14))) (and (<= 0 (+ var15 (* (- 1) var14))) (and (= var7 var0) (<= 0 var0)))))) (inv_main173 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var14 (* (- 1) var13))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int)) (or (not (and (inv_main165 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var6 (* (- 1) (+ var15 (* (- 1) var14)))) (and (not (<= 0 (+ var15 (* (- 1) var14)))) (and (= var7 var0) (<= 0 var0)))))) (inv_main173 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var14 (* (- 1) var13))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int)) (or (not (and (inv_main165 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var6 (+ var15 (* (- 1) var14))) (and (<= 0 (+ var15 (* (- 1) var14))) (and (= var7 (* (- 1) var0)) (not (<= 0 var0))))))) (inv_main173 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var14 (* (- 1) var13))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int)) (or (not (and (inv_main165 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var6 (* (- 1) (+ var15 (* (- 1) var14)))) (and (not (<= 0 (+ var15 (* (- 1) var14)))) (and (= var7 (* (- 1) var0)) (not (<= 0 var0))))))) (inv_main173 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var14 (* (- 1) var13))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int)) (or (not (and (inv_main6 var20 var19 var18 var17) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var16 (+ var15 (* (- 1) var14))) (and (<= 0 (+ var15 (* (- 1) var14))) (and (= var13 (+ var12 (* (- 1) var15))) (<= 0 (+ var12 (* (- 1) var15)))))) (and (not (= var11 var10)) (and (not (= var9 var10)) (and (not (= var9 var11)) (and (not (= var8 var10)) (and (not (= var8 var11)) (and (not (= var8 var9)) (and (not (= var7 var10)) (and (not (= var7 var11)) (and (not (= var7 var9)) (and (not (= var7 var8)) (and (not (= var6 var10)) (and (not (= var6 var11)) (and (not (= var6 var9)) (and (not (= var6 var8)) (and (not (= var6 var7)) (and (not (= var16 var10)) (and (not (= var16 var11)) (and (not (= var16 var9)) (and (not (= var16 var8)) (and (not (= var16 var7)) (and (not (= var16 var6)) (and (not (= var13 var10)) (and (not (= var13 var11)) (and (not (= var13 var9)) (and (not (= var13 var8)) (and (not (= var13 var7)) (and (not (= var13 var6)) (and (not (= var13 var16)) (and (not (= var5 var4)) (and (not (= var3 var4)) (and (not (= var3 var5)) (and (not (= var2 var4)) (and (not (= var2 var5)) (and (not (= var2 var3)) (and (not (= var1 var4)) (and (not (= var1 var5)) (and (not (= var1 var3)) (and (not (= var1 var2)) (and (not (= var0 var4)) (and (not (= var0 var5)) (and (not (= var0 var3)) (and (not (= var0 var2)) (and (not (= var0 var1)) (and (not (= var14 var4)) (and (not (= var14 var5)) (and (not (= var14 var3)) (and (not (= var14 var2)) (and (not (= var14 var1)) (and (not (= var14 var0)) (and (not (= var15 var4)) (and (not (= var15 var5)) (and (not (= var15 var3)) (and (not (= var15 var2)) (and (not (= var15 var1)) (and (not (= var15 var0)) (and (not (= var15 var14)) (and (not (= var12 var4)) (and (not (= var12 var5)) (and (not (= var12 var3)) (and (not (= var12 var2)) (and (not (= var12 var1)) (and (not (= var12 var0)) (and (not (= var12 var14)) (not (= var12 var15)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (and (<= 0 (+ 8 (* (- 1) var10))) (<= 0 (+ var10 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var11))) (<= 0 (+ var11 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var9))) (<= 0 (+ var9 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var8))) (<= 0 (+ var8 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var7))) (<= 0 (+ var7 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var6))) (<= 0 (+ var6 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var16))) (<= 0 (+ var16 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var13))) (<= 0 (+ var13 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var4))) (<= 0 var4))) (and (<= 0 (+ 8 (* (- 1) var5))) (<= 0 var5))) (and (<= 0 (+ 8 (* (- 1) var3))) (<= 0 var3))) (and (<= 0 (+ 8 (* (- 1) var2))) (<= 0 var2))) (and (<= 0 (+ 8 (* (- 1) var1))) (<= 0 var1))) (and (<= 0 (+ 8 (* (- 1) var0))) (<= 0 var0))) (and (<= 0 (+ 8 (* (- 1) var14))) (<= 0 var14))) (and (<= 0 (+ 8 (* (- 1) var15))) (<= 0 var15))) (and (<= 0 (+ 8 (* (- 1) var12))) (<= 0 var12))))) (inv_main165 var20 var19 var18 var12 var15 var14 var0 var1 var2 var3 var5 var4 var13 var16 var6 var7 var8 var9 var11 var10 1 (+ var14 (* (- 1) var0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int)) (or (not (and (inv_main6 var20 var19 var18 var17) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var16 (* (- 1) (+ var15 (* (- 1) var14)))) (and (not (<= 0 (+ var15 (* (- 1) var14)))) (and (= var13 (+ var12 (* (- 1) var15))) (<= 0 (+ var12 (* (- 1) var15)))))) (and (not (= var11 var10)) (and (not (= var9 var10)) (and (not (= var9 var11)) (and (not (= var8 var10)) (and (not (= var8 var11)) (and (not (= var8 var9)) (and (not (= var7 var10)) (and (not (= var7 var11)) (and (not (= var7 var9)) (and (not (= var7 var8)) (and (not (= var6 var10)) (and (not (= var6 var11)) (and (not (= var6 var9)) (and (not (= var6 var8)) (and (not (= var6 var7)) (and (not (= var16 var10)) (and (not (= var16 var11)) (and (not (= var16 var9)) (and (not (= var16 var8)) (and (not (= var16 var7)) (and (not (= var16 var6)) (and (not (= var13 var10)) (and (not (= var13 var11)) (and (not (= var13 var9)) (and (not (= var13 var8)) (and (not (= var13 var7)) (and (not (= var13 var6)) (and (not (= var13 var16)) (and (not (= var5 var4)) (and (not (= var3 var4)) (and (not (= var3 var5)) (and (not (= var2 var4)) (and (not (= var2 var5)) (and (not (= var2 var3)) (and (not (= var1 var4)) (and (not (= var1 var5)) (and (not (= var1 var3)) (and (not (= var1 var2)) (and (not (= var0 var4)) (and (not (= var0 var5)) (and (not (= var0 var3)) (and (not (= var0 var2)) (and (not (= var0 var1)) (and (not (= var14 var4)) (and (not (= var14 var5)) (and (not (= var14 var3)) (and (not (= var14 var2)) (and (not (= var14 var1)) (and (not (= var14 var0)) (and (not (= var15 var4)) (and (not (= var15 var5)) (and (not (= var15 var3)) (and (not (= var15 var2)) (and (not (= var15 var1)) (and (not (= var15 var0)) (and (not (= var15 var14)) (and (not (= var12 var4)) (and (not (= var12 var5)) (and (not (= var12 var3)) (and (not (= var12 var2)) (and (not (= var12 var1)) (and (not (= var12 var0)) (and (not (= var12 var14)) (not (= var12 var15)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (and (<= 0 (+ 8 (* (- 1) var10))) (<= 0 (+ var10 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var11))) (<= 0 (+ var11 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var9))) (<= 0 (+ var9 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var8))) (<= 0 (+ var8 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var7))) (<= 0 (+ var7 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var6))) (<= 0 (+ var6 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var16))) (<= 0 (+ var16 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var13))) (<= 0 (+ var13 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var4))) (<= 0 var4))) (and (<= 0 (+ 8 (* (- 1) var5))) (<= 0 var5))) (and (<= 0 (+ 8 (* (- 1) var3))) (<= 0 var3))) (and (<= 0 (+ 8 (* (- 1) var2))) (<= 0 var2))) (and (<= 0 (+ 8 (* (- 1) var1))) (<= 0 var1))) (and (<= 0 (+ 8 (* (- 1) var0))) (<= 0 var0))) (and (<= 0 (+ 8 (* (- 1) var14))) (<= 0 var14))) (and (<= 0 (+ 8 (* (- 1) var15))) (<= 0 var15))) (and (<= 0 (+ 8 (* (- 1) var12))) (<= 0 var12))))) (inv_main165 var20 var19 var18 var12 var15 var14 var0 var1 var2 var3 var5 var4 var13 var16 var6 var7 var8 var9 var11 var10 1 (+ var14 (* (- 1) var0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int)) (or (not (and (inv_main6 var20 var19 var18 var17) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var16 (+ var15 (* (- 1) var14))) (and (<= 0 (+ var15 (* (- 1) var14))) (and (= var13 (* (- 1) (+ var12 (* (- 1) var15)))) (not (<= 0 (+ var12 (* (- 1) var15))))))) (and (not (= var11 var10)) (and (not (= var9 var10)) (and (not (= var9 var11)) (and (not (= var8 var10)) (and (not (= var8 var11)) (and (not (= var8 var9)) (and (not (= var7 var10)) (and (not (= var7 var11)) (and (not (= var7 var9)) (and (not (= var7 var8)) (and (not (= var6 var10)) (and (not (= var6 var11)) (and (not (= var6 var9)) (and (not (= var6 var8)) (and (not (= var6 var7)) (and (not (= var16 var10)) (and (not (= var16 var11)) (and (not (= var16 var9)) (and (not (= var16 var8)) (and (not (= var16 var7)) (and (not (= var16 var6)) (and (not (= var13 var10)) (and (not (= var13 var11)) (and (not (= var13 var9)) (and (not (= var13 var8)) (and (not (= var13 var7)) (and (not (= var13 var6)) (and (not (= var13 var16)) (and (not (= var5 var4)) (and (not (= var3 var4)) (and (not (= var3 var5)) (and (not (= var2 var4)) (and (not (= var2 var5)) (and (not (= var2 var3)) (and (not (= var1 var4)) (and (not (= var1 var5)) (and (not (= var1 var3)) (and (not (= var1 var2)) (and (not (= var0 var4)) (and (not (= var0 var5)) (and (not (= var0 var3)) (and (not (= var0 var2)) (and (not (= var0 var1)) (and (not (= var14 var4)) (and (not (= var14 var5)) (and (not (= var14 var3)) (and (not (= var14 var2)) (and (not (= var14 var1)) (and (not (= var14 var0)) (and (not (= var15 var4)) (and (not (= var15 var5)) (and (not (= var15 var3)) (and (not (= var15 var2)) (and (not (= var15 var1)) (and (not (= var15 var0)) (and (not (= var15 var14)) (and (not (= var12 var4)) (and (not (= var12 var5)) (and (not (= var12 var3)) (and (not (= var12 var2)) (and (not (= var12 var1)) (and (not (= var12 var0)) (and (not (= var12 var14)) (not (= var12 var15)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (and (<= 0 (+ 8 (* (- 1) var10))) (<= 0 (+ var10 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var11))) (<= 0 (+ var11 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var9))) (<= 0 (+ var9 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var8))) (<= 0 (+ var8 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var7))) (<= 0 (+ var7 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var6))) (<= 0 (+ var6 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var16))) (<= 0 (+ var16 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var13))) (<= 0 (+ var13 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var4))) (<= 0 var4))) (and (<= 0 (+ 8 (* (- 1) var5))) (<= 0 var5))) (and (<= 0 (+ 8 (* (- 1) var3))) (<= 0 var3))) (and (<= 0 (+ 8 (* (- 1) var2))) (<= 0 var2))) (and (<= 0 (+ 8 (* (- 1) var1))) (<= 0 var1))) (and (<= 0 (+ 8 (* (- 1) var0))) (<= 0 var0))) (and (<= 0 (+ 8 (* (- 1) var14))) (<= 0 var14))) (and (<= 0 (+ 8 (* (- 1) var15))) (<= 0 var15))) (and (<= 0 (+ 8 (* (- 1) var12))) (<= 0 var12))))) (inv_main165 var20 var19 var18 var12 var15 var14 var0 var1 var2 var3 var5 var4 var13 var16 var6 var7 var8 var9 var11 var10 1 (+ var14 (* (- 1) var0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int)) (or (not (and (inv_main6 var20 var19 var18 var17) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var16 (* (- 1) (+ var15 (* (- 1) var14)))) (and (not (<= 0 (+ var15 (* (- 1) var14)))) (and (= var13 (* (- 1) (+ var12 (* (- 1) var15)))) (not (<= 0 (+ var12 (* (- 1) var15))))))) (and (not (= var11 var10)) (and (not (= var9 var10)) (and (not (= var9 var11)) (and (not (= var8 var10)) (and (not (= var8 var11)) (and (not (= var8 var9)) (and (not (= var7 var10)) (and (not (= var7 var11)) (and (not (= var7 var9)) (and (not (= var7 var8)) (and (not (= var6 var10)) (and (not (= var6 var11)) (and (not (= var6 var9)) (and (not (= var6 var8)) (and (not (= var6 var7)) (and (not (= var16 var10)) (and (not (= var16 var11)) (and (not (= var16 var9)) (and (not (= var16 var8)) (and (not (= var16 var7)) (and (not (= var16 var6)) (and (not (= var13 var10)) (and (not (= var13 var11)) (and (not (= var13 var9)) (and (not (= var13 var8)) (and (not (= var13 var7)) (and (not (= var13 var6)) (and (not (= var13 var16)) (and (not (= var5 var4)) (and (not (= var3 var4)) (and (not (= var3 var5)) (and (not (= var2 var4)) (and (not (= var2 var5)) (and (not (= var2 var3)) (and (not (= var1 var4)) (and (not (= var1 var5)) (and (not (= var1 var3)) (and (not (= var1 var2)) (and (not (= var0 var4)) (and (not (= var0 var5)) (and (not (= var0 var3)) (and (not (= var0 var2)) (and (not (= var0 var1)) (and (not (= var14 var4)) (and (not (= var14 var5)) (and (not (= var14 var3)) (and (not (= var14 var2)) (and (not (= var14 var1)) (and (not (= var14 var0)) (and (not (= var15 var4)) (and (not (= var15 var5)) (and (not (= var15 var3)) (and (not (= var15 var2)) (and (not (= var15 var1)) (and (not (= var15 var0)) (and (not (= var15 var14)) (and (not (= var12 var4)) (and (not (= var12 var5)) (and (not (= var12 var3)) (and (not (= var12 var2)) (and (not (= var12 var1)) (and (not (= var12 var0)) (and (not (= var12 var14)) (not (= var12 var15)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (and (<= 0 (+ 8 (* (- 1) var10))) (<= 0 (+ var10 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var11))) (<= 0 (+ var11 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var9))) (<= 0 (+ var9 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var8))) (<= 0 (+ var8 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var7))) (<= 0 (+ var7 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var6))) (<= 0 (+ var6 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var16))) (<= 0 (+ var16 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var13))) (<= 0 (+ var13 (- 1))))) (and (<= 0 (+ 8 (* (- 1) var4))) (<= 0 var4))) (and (<= 0 (+ 8 (* (- 1) var5))) (<= 0 var5))) (and (<= 0 (+ 8 (* (- 1) var3))) (<= 0 var3))) (and (<= 0 (+ 8 (* (- 1) var2))) (<= 0 var2))) (and (<= 0 (+ 8 (* (- 1) var1))) (<= 0 var1))) (and (<= 0 (+ 8 (* (- 1) var0))) (<= 0 var0))) (and (<= 0 (+ 8 (* (- 1) var14))) (<= 0 var14))) (and (<= 0 (+ 8 (* (- 1) var15))) (<= 0 var15))) (and (<= 0 (+ 8 (* (- 1) var12))) (<= 0 var12))))) (inv_main165 var20 var19 var18 var12 var15 var14 var0 var1 var2 var3 var5 var4 var13 var16 var6 var7 var8 var9 var11 var10 1 (+ var14 (* (- 1) var0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int)) (or (not (and (inv_main173 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var4 (+ var13 (* (- 1) var12))) (and (<= 0 (+ var13 (* (- 1) var12))) (and (= var5 var0) (<= 0 var0)))))) (inv_main181 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var12 (* (- 1) var11))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int)) (or (not (and (inv_main173 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var4 (* (- 1) (+ var13 (* (- 1) var12)))) (and (not (<= 0 (+ var13 (* (- 1) var12)))) (and (= var5 var0) (<= 0 var0)))))) (inv_main181 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var12 (* (- 1) var11))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int)) (or (not (and (inv_main173 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var4 (+ var13 (* (- 1) var12))) (and (<= 0 (+ var13 (* (- 1) var12))) (and (= var5 (* (- 1) var0)) (not (<= 0 var0))))))) (inv_main181 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var12 (* (- 1) var11))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int)) (or (not (and (inv_main173 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var4 (* (- 1) (+ var13 (* (- 1) var12)))) (and (not (<= 0 (+ var13 (* (- 1) var12)))) (and (= var5 (* (- 1) var0)) (not (<= 0 var0))))))) (inv_main181 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var12 (* (- 1) var11))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int)) (or (not (and (inv_main181 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var2 (+ var11 (* (- 1) var10))) (and (<= 0 (+ var11 (* (- 1) var10))) (and (= var3 var0) (<= 0 var0)))))) (inv_main188 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var11 (* (- 1) var10))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int)) (or (not (and (inv_main181 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var2 (* (- 1) (+ var11 (* (- 1) var10)))) (and (not (<= 0 (+ var11 (* (- 1) var10)))) (and (= var3 var0) (<= 0 var0)))))) (inv_main188 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (* (- 1) (+ var11 (* (- 1) var10)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int)) (or (not (and (inv_main181 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var2 (+ var11 (* (- 1) var10))) (and (<= 0 (+ var11 (* (- 1) var10))) (and (= var3 (* (- 1) var0)) (not (<= 0 var0))))))) (inv_main188 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var11 (* (- 1) var10))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int)) (or (not (and (inv_main181 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var2 (* (- 1) (+ var11 (* (- 1) var10)))) (and (not (<= 0 (+ var11 (* (- 1) var10)))) (and (= var3 (* (- 1) var0)) (not (<= 0 var0))))))) (inv_main188 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (* (- 1) (+ var11 (* (- 1) var10)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int)) (not (inv_main188 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(check-sat)