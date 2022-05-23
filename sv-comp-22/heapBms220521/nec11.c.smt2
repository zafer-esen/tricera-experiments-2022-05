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
(declare-fun inv_main10 (Heap AddrRange Int Int Int) Bool)
(declare-fun inv_main4 (Heap AddrRange Int) Bool)
(declare-fun inv_main7 (Heap AddrRange Int Int Int) Bool)
(declare-fun inv_main8 (Heap AddrRange Int Int Int) Bool)
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Heap)) (or (not (and (= var3 emptyHeap) (and (= var2 (newBatchHeap (batchAlloc emptyHeap (O_Int var1) 5))) (= var0 (newAddrRange (batchAlloc emptyHeap (O_Int var1) 5)))))) (inv_main4 var2 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 Heap)) (or (not (and (inv_main10 var9 var8 var7 var6 var5) (and (and (is-O_Int (read var9 (nthAddrRange var8 var7))) (is-O_Int (read var9 (nthAddrRange var8 var7)))) (and (and (and (and (= var4 (write var9 (nthAddrRange var8 var7) (O_Int 0))) (= var3 var8)) (= var2 var7)) (= var1 var6)) (= var0 var5))))) (inv_main7 var4 var3 (+ var2 1) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (or (not (inv_main4 var4 var3 var2)) (inv_main7 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (or (not (and (inv_main7 var4 var3 var2 var1 var0) (and (= var2 4) (not (= var1 0))))) (inv_main10 var4 var3 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (or (not (and (inv_main7 var4 var3 var2 var1 var0) (and (not (= var2 4)) (not (= var1 0))))) (inv_main10 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (or (not (and (inv_main7 var4 var3 var2 var1 var0) (= var1 0))) (inv_main8 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main10 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var3 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main10 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var3 var2))) (not (within var3 (nthAddrRange var3 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main10 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var3 var2))) (not (is-O_Int (read var4 (nthAddrRange var3 var2)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main8 var4 var3 var2 var1 var0) (not (= var2 5))))))
(check-sat)
