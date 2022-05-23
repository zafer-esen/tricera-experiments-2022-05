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
(declare-fun inv_main15 (Heap Int Int Int AddrRange) Bool)
(declare-fun inv_main19 (Heap Int Int Int AddrRange) Bool)
(declare-fun inv_main2 (Heap Int Int) Bool)
(declare-fun inv_main20 (Heap Int Int Int AddrRange) Bool)
(declare-fun inv_main23 (Heap Int Int Int AddrRange) Bool)
(assert (inv_main2 emptyHeap 0 100000))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (inv_main15 var4 var3 var2 var1 var0) (and (<= 0 (+ var3 (- 1))) (not (<= 0 var1))))) (inv_main23 var4 var3 var2 0 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (inv_main23 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ var3 (* (- 1) (+ var1 1))) (- 1))) (is-O_Int (read var4 (nthAddrRange var0 var1)))))) (inv_main23 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (inv_main20 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var0 (+ var1 (- 1))))) (is-O_Int (read var4 (nthAddrRange var0 (+ var1 (- 1)))))))) (inv_main19 (write var4 (nthAddrRange var0 (+ var1 (- 1))) (O_Int (+ var1 (- 2)))) var3 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (inv_main15 var4 var3 var2 var1 var0) (and (not (<= 0 (+ var1 (- 1)))) (<= 0 var1)))) (inv_main19 var4 var3 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (inv_main15 var4 var3 var2 var1 var0) (and (<= 0 (+ var1 (- 1))) (<= 0 var1)))) (inv_main20 var4 var3 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap) (var5 AddrRange) (var6 Int) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (inv_main19 var9 var8 var7 var6 var5) (and (and (is-O_Int (read var9 (nthAddrRange var5 var6))) (is-O_Int (read var9 (nthAddrRange var5 var6)))) (and (and (and (and (= var4 (write var9 (nthAddrRange var5 var6) (O_Int var6))) (= var3 var8)) (= var2 var7)) (= var1 var6)) (= var0 var5))))) (inv_main15 var4 var3 var2 (+ var1 (- 1)) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Heap) (var11 Heap) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (inv_main2 var14 var13 var12) (and (and (and (and (and (= var11 (newBatchHeap (batchAlloc var10 (O_Int var9) var8))) (= var7 var8)) (= var6 var5)) (= var4 var3)) (= var2 (newAddrRange (batchAlloc var10 (O_Int var9) var8)))) (and (not (= var1 0)) (and (<= 0 (+ (+ var0 (- 1)) (- 1))) (and (and (and (= var10 var14) (= var8 var0)) (= var5 var12)) (or (and (<= 0 (+ (+ var12 (* (- 1) var0)) (- 1))) (= var1 1)) (and (not (<= 0 (+ (+ var12 (* (- 1) var0)) (- 1)))) (= var1 0))))))))) (inv_main15 var11 var7 var6 (+ var7 (- 1)) var2))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main20 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var0 (+ var1 (- 1))))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main20 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var0 (+ var1 (- 1))))) (not (within var0 (nthAddrRange var0 (+ var1 (- 1))))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main20 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var0 (+ var1 (- 1))))) (not (is-O_Int (read var4 (nthAddrRange var0 (+ var1 (- 1)))))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main19 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main19 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var0 var1))) (not (within var0 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main19 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var0 var1))) (not (is-O_Int (read var4 (nthAddrRange var0 var1)))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main23 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main23 var4 var3 var2 var1 var0) (not (within var0 (nthAddrRange var0 var1)))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main23 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main23 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var0 var1))) (not (within var0 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main23 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var0 var1))) (not (<= 0 (+ (getInt (read var4 (nthAddrRange var0 var1))) (* (- 1) var1)))))))))
(check-sat)
