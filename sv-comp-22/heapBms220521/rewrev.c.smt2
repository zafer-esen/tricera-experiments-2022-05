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
(declare-fun inv_main18 (Heap Int Int Int AddrRange Int Int Int) Bool)
(declare-fun inv_main2 (Heap Int Int) Bool)
(declare-fun inv_main22 (Heap Int Int Int AddrRange Int Int Int) Bool)
(declare-fun inv_main23 (Heap Int Int Int AddrRange Int Int Int) Bool)
(declare-fun inv_main26 (Heap Int Int Int AddrRange Int Int Int) Bool)
(assert (inv_main2 emptyHeap 100000 0))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main18 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 var4) (<= 0 (+ var4 1))))) (inv_main23 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (inv_main22 var15 var14 var13 var12 var11 var10 var9 var8) (and (and (is-O_Int (read var15 (nthAddrRange var11 (+ var12 1)))) (is-O_Int (read var15 (nthAddrRange var11 (+ var12 1))))) (and (and (and (and (and (and (and (= var7 (write var15 (nthAddrRange var11 (+ var12 1)) (O_Int var10))) (= var6 var14)) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8))))) (inv_main18 var7 var6 var5 (+ var4 (- 1)) var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Heap) (var11 Heap) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (inv_main2 var14 var13 var12) (and (and (and (and (and (= var11 (newBatchHeap (batchAlloc var10 (O_Int var9) var8))) (= var7 var6)) (= var5 var8)) (= var4 var3)) (= var2 (newAddrRange (batchAlloc var10 (O_Int var9) var8)))) (and (not (= var1 0)) (and (<= 0 (+ (+ var0 (- 1)) (- 1))) (and (and (and (= var10 var14) (= var6 var13)) (= var8 var0)) (or (and (<= 0 (+ (+ var13 (* (- 1) var0)) (- 1))) (= var1 1)) (and (not (<= 0 (+ (+ var13 (* (- 1) var0)) (- 1)))) (= var1 0))))))))) (inv_main18 var11 var7 var5 (+ var5 (- 2)) var2 3 7 2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main18 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var5 (- 1))) (not (<= 0 (+ var4 1)))))) (inv_main26 var7 var6 var5 0 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main26 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ var5 (* (- 1) (+ var4 1))) (- 1))) (is-O_Int (read var7 (nthAddrRange var3 var4)))))) (inv_main26 var7 var6 var5 (+ var4 1) var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main23 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var3 var4))) (is-O_Int (read var7 (nthAddrRange var3 var4)))))) (inv_main22 (write var7 (nthAddrRange var3 var4) (O_Int var1)) var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main18 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 var4)) (<= 0 (+ var4 1))))) (inv_main22 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main23 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var3 var4))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main23 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var3 var4))) (not (within var3 (nthAddrRange var3 var4))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main23 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var3 var4))) (not (is-O_Int (read var7 (nthAddrRange var3 var4)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main22 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var3 (+ var4 1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main22 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var3 (+ var4 1)))) (not (within var3 (nthAddrRange var3 (+ var4 1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main22 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var3 (+ var4 1)))) (not (is-O_Int (read var7 (nthAddrRange var3 (+ var4 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main26 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var3 var4))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main26 var7 var6 var5 var4 var3 var2 var1 var0) (not (within var3 (nthAddrRange var3 var4)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main26 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var3 var4))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main26 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var3 var4))) (not (within var3 (nthAddrRange var3 var4))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main26 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var3 var4))) (not (<= 0 (+ (getInt (read var7 (nthAddrRange var3 var4))) (* (- 1) var0)))))))))
(check-sat)
