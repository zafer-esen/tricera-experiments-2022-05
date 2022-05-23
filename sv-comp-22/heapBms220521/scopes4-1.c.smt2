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
(declare-fun inv_main11 (Heap Addr) Bool)
(declare-fun inv_main2 (Heap) Bool)
(declare-fun inv_main9 (Heap AddrRange) Bool)
(assert (inv_main2 emptyHeap))
(assert (forall ((var0 Int) (var1 Heap)) (or (not (inv_main2 var1)) (inv_main9 (newBatchHeap (batchAlloc emptyHeap (O_Int var0) 1024)) (newAddrRange (batchAlloc emptyHeap (O_Int var0) 1024))))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 AddrRange) (var3 Heap) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main9 var5 var4) (and (and (and (is-O_Int (read var5 (nthAddrRange var4 194))) (is-O_Int (read var5 (nthAddrRange var4 194)))) (and (= var3 (write var5 (nthAddrRange var4 194) (O_Int 13))) (= var2 var4))) (and (= var1 var3) (= var0 (AddrRange (nthAddrRange var2 1) (+ (AddrRangeSize var2) (- 1)))))))) (inv_main11 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Heap)) (not (and (inv_main9 var1 var0) (not (is-O_Int (read var1 (nthAddrRange var0 194))))))))
(assert (forall ((var0 AddrRange) (var1 Heap)) (not (and (inv_main9 var1 var0) (and (is-O_Int (read var1 (nthAddrRange var0 194))) (not (within var0 (nthAddrRange var0 194))))))))
(assert (forall ((var0 AddrRange) (var1 Heap)) (not (and (inv_main9 var1 var0) (and (is-O_Int (read var1 (nthAddrRange var0 194))) (not (is-O_Int (read var1 (nthAddrRange var0 194)))))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main11 var1 var0) (not (is-O_Int (read var1 var0)))))))
(check-sat)
