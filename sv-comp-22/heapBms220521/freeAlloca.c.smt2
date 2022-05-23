(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
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
(declare-fun inv_main2 (Heap) Bool)
(declare-fun inv_main4 (Heap AddrRange) Bool)
(declare-fun inv_main9 (Heap AddrRange Int) Bool)
(assert (inv_main2 emptyHeap))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main9 var6 var5 var4) (and (<= 0 (+ (+ 10 (* (- 1) (+ var3 1))) (- 1))) (and (and (is-O_Int (read var6 (nthAddrRange var5 var4))) (is-O_Int (read var6 (nthAddrRange var5 var4)))) (and (and (= var2 (write var6 (nthAddrRange var5 var4) (O_Int var1))) (= var0 var5)) (= var3 var4)))))) (inv_main9 var2 var0 (+ var3 1)))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Heap)) (or (not (and (inv_main2 var3) (and (= var2 (newBatchHeap (batchAlloc var3 (O_Int var1) 10))) (= var0 (newAddrRange (batchAlloc var3 (O_Int var1) 10)))))) (inv_main9 var2 var0 0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main9 var6 var5 var4) (and (not (<= 0 (+ (+ 10 (* (- 1) (+ var3 1))) (- 1)))) (and (and (is-O_Int (read var6 (nthAddrRange var5 var4))) (is-O_Int (read var6 (nthAddrRange var5 var4)))) (and (and (= var2 (write var6 (nthAddrRange var5 var4) (O_Int var1))) (= var0 var5)) (= var3 var4)))))) (inv_main4 var2 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main9 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main9 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main9 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (is-O_Int (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 AddrRange) (var1 Heap)) (not (and (inv_main4 var1 var0) (not (is-O_Int (read var1 (nthAddrRange var0 2))))))))
(assert (forall ((var0 AddrRange) (var1 Heap)) (not (and (inv_main4 var1 var0) (and (is-O_Int (read var1 (nthAddrRange var0 2))) (not (within var0 (nthAddrRange var0 2))))))))
(check-sat)
