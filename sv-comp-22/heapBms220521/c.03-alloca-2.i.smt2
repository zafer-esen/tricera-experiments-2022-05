(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-heap Heap Addr HeapObject
 defObj
 ((HeapObject 0)) (
  (
   (O_Int (getInt Int))
   (O_UInt (getUInt Int))
   (O_Addr (getAddr Addr))
   (defObj)
  )
))
(declare-fun inv_main12 (Heap Int Int Int Addr Addr Addr Addr) Bool)
(declare-fun inv_main13 (Heap Int Int Int Addr Addr Addr Addr) Bool)
(declare-fun inv_main14 (Heap Int Int Int Addr Addr Addr Addr) Bool)
(declare-fun inv_main15 (Heap Int Int Int Addr Addr Addr Addr) Bool)
(declare-fun inv_main16 (Heap Int Int Int Addr Addr Addr Addr) Bool)
(declare-fun inv_main17 (Heap Int Int Int Addr Addr Addr Addr) Bool)
(declare-fun inv_main18 (Heap Int Int Int Addr Addr Addr Addr) Bool)
(declare-fun inv_main19 (Heap Int Int Int Addr Addr Addr Addr Int) Bool)
(declare-fun inv_main2 (Heap) Bool)
(declare-fun inv_main20 (Heap Int Int Int Addr Addr Addr Addr) Bool)
(declare-fun inv_main21 (Heap Int Int Int Addr Addr Addr Addr) Bool)
(declare-fun inv_main22 (Heap Int Int Int Addr Addr Addr Addr) Bool)
(declare-fun inv_main23 (Heap Int Int Int Addr Addr Addr Addr Int) Bool)
(declare-fun inv_main24 (Heap Int Int Int Addr Addr Addr Addr Int) Bool)
(declare-fun inv_main25 (Heap Int Int Int Addr Addr Addr Addr Int) Bool)
(declare-fun inv_main26 (Heap Int Int Int Addr Addr Addr Addr Int) Bool)
(assert (inv_main2 emptyHeap))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main12 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 var3)) (is-O_Int (read var7 var3))))) (inv_main13 (write var7 var3 (O_Int var6)) var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (inv_main23 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 var2)) (<= 0 (+ (+ (getInt (read var8 var2)) (* (- 1) var0)) (- 1)))))) (inv_main21 var8 var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Heap) (var11 Addr) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Addr) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Heap) (var24 Heap) (var25 Heap)) (or (not (and (inv_main2 var25) (and (and (and (and (and (and (and (and (= var24 (newHeap (alloc var23 (O_Int var22)))) (= var21 var20)) (= var19 var18)) (= var17 var16)) (= var15 var14)) (= var13 var12)) (= var11 (newAddr (alloc var23 (O_Int var22))))) (and (and (and (and (and (= var23 (newHeap (alloc var10 (O_Int var9)))) (= var20 var8)) (= var18 var7)) (= var16 var6)) (= var14 var5)) (= var12 (newAddr (alloc var10 (O_Int var9)))))) (and (and (and (and (= var10 (newHeap (alloc var25 (O_Int var4)))) (= var8 var3)) (= var7 var2)) (= var6 var1)) (= var5 (newAddr (alloc var25 (O_Int var4)))))))) (inv_main12 (newHeap (alloc var24 (O_Int var0))) var21 var19 var17 var15 var13 var11 (newAddr (alloc var24 (O_Int var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main18 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var7 var3)))) (inv_main23 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var7 var3))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main14 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 var1)) (is-O_Int (read var7 var1))))) (inv_main15 (write var7 var1 (O_Int var4)) var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main16 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var7 var3)))) (inv_main19 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var7 var3))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (inv_main19 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 var3)) (<= 0 (+ (+ (getInt (read var8 var3)) (* (- 1) var0)) (- 1)))))) (inv_main18 var8 var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (inv_main24 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 var4)) (is-O_Int (read var8 var4))))) (inv_main20 (write var8 var4 (O_Int (+ var0 1))) var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (inv_main25 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 var2)) (is-O_Int (read var8 var2))))) (inv_main20 (write var8 var2 (O_Int (+ var0 1))) var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main22 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var7 var1)))) (inv_main25 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var7 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main13 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 var2)) (is-O_Int (read var7 var2))))) (inv_main14 (write var7 var2 (O_Int var5)) var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main21 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var7 var3)))) (inv_main24 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var7 var3))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main15 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 var0)) (is-O_Int (read var7 var0))))) (inv_main16 (write var7 var0 (O_Int 0)) var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (inv_main26 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 var1)) (is-O_Int (read var8 var1))))) (inv_main16 (write var8 var1 (O_Int (+ var0 1))) var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (inv_main19 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 var3)) (not (<= 0 (+ (+ (getInt (read var8 var3)) (* (- 1) var0)) (- 1))))))) (inv_main17 var8 var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (inv_main23 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 var2)) (not (<= 0 (+ (+ (getInt (read var8 var2)) (* (- 1) var0)) (- 1))))))) (inv_main22 var8 var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main20 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var7 var0)))) (inv_main26 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var7 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main12 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 var3)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main12 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 var3)) (not (is-O_Int (read var7 var3))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main13 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main13 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 var2)) (not (is-O_Int (read var7 var2))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main14 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main14 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 var1)) (not (is-O_Int (read var7 var1))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main15 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main15 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 var0)) (not (is-O_Int (read var7 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main16 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 var3)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main19 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 var3)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main18 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 var3)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main23 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main21 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 var3)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main24 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 var4)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main24 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 var4)) (not (is-O_Int (read var8 var4))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main22 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main25 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 var2)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main25 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 var2)) (not (is-O_Int (read var8 var2))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main20 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 var0)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main26 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main26 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 var1)) (not (is-O_Int (read var8 var1))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main17 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 var0)))))))
(check-sat)
