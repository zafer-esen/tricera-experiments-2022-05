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
(declare-fun inv_main11 (Heap AddrRange Int Int) Bool)
(declare-fun inv_main14 (Heap AddrRange Int Int Int) Bool)
(declare-fun inv_main5 (Heap AddrRange Int Int) Bool)
(declare-fun inv_main7 (Heap AddrRange Int Int) Bool)
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Heap)) (or (not (and (= var3 emptyHeap) (and (= var2 (newBatchHeap (batchAlloc emptyHeap (O_UInt var1) 10000))) (= var0 (newAddrRange (batchAlloc emptyHeap (O_UInt var1) 10000)))))) (inv_main5 var2 var0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (or (not (and (inv_main5 var3 var2 var1 var0) (<= 0 (+ (+ 10000 (* (- 1) var1)) (- 1))))) (inv_main7 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Heap)) (or (not (and (inv_main11 var8 var7 var6 var5) (and (and (and (is-O_UInt (read var8 (nthAddrRange var7 var6))) (not (= (getUInt (read var8 (nthAddrRange var7 var6))) (* 2 var6)))) (is-O_UInt (read var8 (nthAddrRange var7 var6)))) (and (and (and (and (= var4 var8) (= var3 var7)) (= var2 var6)) (= var1 var5)) (or (and (= (getUInt (read var8 (nthAddrRange var7 var6))) 0) (= var0 1)) (and (not (= (getUInt (read var8 (nthAddrRange var7 var6))) 0)) (= var0 0))))))) (inv_main14 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (or (not (and (inv_main11 var3 var2 var1 var0) (and (is-O_UInt (read var3 (nthAddrRange var2 var1))) (= (getUInt (read var3 (nthAddrRange var2 var1))) (* 2 var1))))) (inv_main14 var3 var2 var1 var0 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (or (not (and (inv_main5 var3 var2 var1 var0) (not (<= 0 (+ (+ 10000 (* (- 1) var1)) (- 1)))))) (inv_main11 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (or (not (and (inv_main14 var4 var3 var2 var1 var0) (<= 0 (+ (+ 10000 (* (- 1) (+ var2 1))) (- 1))))) (inv_main11 var4 var3 (+ var2 1) var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Heap)) (or (not (and (inv_main7 var7 var6 var5 var4) (and (and (is-O_UInt (read var7 (nthAddrRange var6 var5))) (is-O_UInt (read var7 (nthAddrRange var6 var5)))) (and (and (and (= var3 (write var7 (nthAddrRange var6 var5) (O_UInt var4))) (= var2 var6)) (= var1 var5)) (= var0 var4))))) (inv_main5 var3 var2 (+ var1 1) (+ var0 2)))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main7 var3 var2 var1 var0) (not (is-O_UInt (read var3 (nthAddrRange var2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main7 var3 var2 var1 var0) (and (is-O_UInt (read var3 (nthAddrRange var2 var1))) (not (within var2 (nthAddrRange var2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main7 var3 var2 var1 var0) (and (is-O_UInt (read var3 (nthAddrRange var2 var1))) (not (is-O_UInt (read var3 (nthAddrRange var2 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main11 var3 var2 var1 var0) (not (is-O_UInt (read var3 (nthAddrRange var2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main11 var3 var2 var1 var0) (not (within var2 (nthAddrRange var2 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main11 var3 var2 var1 var0) (not (is-O_UInt (read var3 (nthAddrRange var2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main11 var3 var2 var1 var0) (not (within var2 (nthAddrRange var2 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main11 var3 var2 var1 var0) (not (is-O_UInt (read var3 (nthAddrRange var2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main11 var3 var2 var1 var0) (and (is-O_UInt (read var3 (nthAddrRange var2 var1))) (not (within var2 (nthAddrRange var2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main11 var3 var2 var1 var0) (and (and (is-O_UInt (read var3 (nthAddrRange var2 var1))) (not (= (getUInt (read var3 (nthAddrRange var2 var1))) (* 2 var1)))) (not (is-O_UInt (read var3 (nthAddrRange var2 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main11 var3 var2 var1 var0) (and (and (and (is-O_UInt (read var3 (nthAddrRange var2 var1))) (not (= (getUInt (read var3 (nthAddrRange var2 var1))) (* 2 var1)))) (is-O_UInt (read var3 (nthAddrRange var2 var1)))) (not (within var2 (nthAddrRange var2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main14 var4 var3 var2 var1 var0) (= var0 0)))))
(check-sat)
