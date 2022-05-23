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
(declare-fun inv_main7 (Heap AddrRange Int) Bool)
(assert (inv_main2 emptyHeap))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Heap)) (or (not (and (inv_main7 var8 var7 var6) (and (and (<= 0 (+ (+ 10 (* (- 1) (+ var5 1))) (- 1))) (and (and (= var4 5) (and (is-O_Int (read var8 (nthAddrRange var7 var6))) (is-O_Int (read var8 (nthAddrRange var7 var6))))) (and (and (= var3 (write var8 (nthAddrRange var7 var6) (O_Int 1))) (= var2 var7)) (= var4 var6)))) (and (and (= var1 (batchWrite var3 var2 defObj)) (= var0 var2)) (= var5 var4))))) (inv_main7 var1 var0 (+ var5 1)))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main7 var5 var4 var3) (and (<= 0 (+ (+ 10 (* (- 1) (+ var2 1))) (- 1))) (and (and (not (= var2 5)) (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3))))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 1))) (= var0 var4)) (= var2 var3)))))) (inv_main7 var1 var0 (+ var2 1)))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Heap)) (or (not (and (inv_main2 var3) (and (= var2 (newBatchHeap (batchAlloc var3 (O_Int var1) 10))) (= var0 (newAddrRange (batchAlloc var3 (O_Int var1) 10)))))) (inv_main7 var2 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main7 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main7 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main7 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (is-O_Int (read var2 (nthAddrRange var1 var0)))))))))
(check-sat)
