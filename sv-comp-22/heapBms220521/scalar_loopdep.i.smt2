(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-heap Heap Addr HeapObject
 defObj
 ((HeapObject 0) (_S 0)) (
  (
   (O_Int (getInt Int))
   (O_UInt (getUInt Int))
   (O_Addr (getAddr Addr))
   (O__S (get_S _S))
   (defObj)
  )
  (
   (_S (n Int))
  )
))
(declare-fun inv_main13 (Heap AddrRange Int Int Int) Bool)
(declare-fun inv_main4 (Heap AddrRange Int Int Int) Bool)
(declare-fun inv_main9 (Heap AddrRange Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (or (not (and (= var3 (newBatchHeap (batchAlloc emptyHeap (O__S (_S 0)) 100000))) (= var2 (newAddrRange (batchAlloc emptyHeap (O__S (_S 0)) 100000))))) (inv_main4 var3 var2 var1 var0 100))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (or (not (inv_main4 var4 var3 var2 var1 var0)) (inv_main9 var4 var3 0 var0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 Heap)) (or (not (and (inv_main9 var9 var8 var7 var6 var5) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var4 1))) (- 1))) (and (and (is-O__S (read var9 (nthAddrRange var8 var7))) (is-O__S (read var9 (nthAddrRange var8 var7)))) (and (and (and (and (= var3 (write var9 (nthAddrRange var8 var7) (O__S (_S var5)))) (= var2 var8)) (= var4 var7)) (= var1 var6)) (= var0 var5)))))) (inv_main9 var3 var2 (+ var4 1) (+ var0 1) (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (or (not (and (inv_main13 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1))) (is-O__S (read var4 (nthAddrRange var3 var2)))))) (inv_main13 var4 var3 (+ var2 1) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 Heap)) (or (not (and (inv_main9 var9 var8 var7 var6 var5) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var4 1))) (- 1)))) (and (and (is-O__S (read var9 (nthAddrRange var8 var7))) (is-O__S (read var9 (nthAddrRange var8 var7)))) (and (and (and (and (= var3 (write var9 (nthAddrRange var8 var7) (O__S (_S var5)))) (= var2 var8)) (= var4 var7)) (= var1 var6)) (= var0 var5)))))) (inv_main13 var3 var2 0 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main9 var4 var3 var2 var1 var0) (not (is-O__S (read var4 (nthAddrRange var3 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main9 var4 var3 var2 var1 var0) (and (is-O__S (read var4 (nthAddrRange var3 var2))) (not (within var3 (nthAddrRange var3 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main9 var4 var3 var2 var1 var0) (and (is-O__S (read var4 (nthAddrRange var3 var2))) (not (is-O__S (read var4 (nthAddrRange var3 var2)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main13 var4 var3 var2 var1 var0) (not (is-O__S (read var4 (nthAddrRange var3 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main13 var4 var3 var2 var1 var0) (not (within var3 (nthAddrRange var3 var2)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main13 var4 var3 var2 var1 var0) (not (is-O__S (read var4 (nthAddrRange var3 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main13 var4 var3 var2 var1 var0) (and (is-O__S (read var4 (nthAddrRange var3 var2))) (not (within var3 (nthAddrRange var3 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main13 var4 var3 var2 var1 var0) (and (is-O__S (read var4 (nthAddrRange var3 var2))) (not (<= 0 (+ (n (get_S (read var4 (nthAddrRange var3 var2)))) (- 100)))))))))
(check-sat)
