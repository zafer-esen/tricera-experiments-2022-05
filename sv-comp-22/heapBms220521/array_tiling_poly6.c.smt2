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
(declare-fun inv_main15 (Heap Int Int AddrRange) Bool)
(declare-fun inv_main18 (Heap Int Int AddrRange) Bool)
(declare-fun inv_main19 (Heap Int Int AddrRange) Bool)
(declare-fun inv_main2 (Heap) Bool)
(declare-fun inv_main21 (Heap Int Int AddrRange Int) Bool)
(declare-fun inv_main24 (Heap Int Int AddrRange) Bool)
(assert (inv_main2 emptyHeap))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (inv_main21 var8 var7 var6 var5 var4) (and (and (is-O_Int (read var8 (nthAddrRange var5 var6))) (is-O_Int (read var8 (nthAddrRange var5 var6)))) (and (and (and (= var3 (write var8 (nthAddrRange var5 var6) (O_Int (+ var4 (* (- 1) (* var6 var6)))))) (= var2 var7)) (= var1 var6)) (= var0 var5))))) (inv_main18 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main15 var7 var6 var5 var4) (and (not (<= 0 (+ (+ var3 (* (- 1) (+ var2 1))) (- 1)))) (and (and (is-O_Int (read var7 (nthAddrRange var4 var5))) (is-O_Int (read var7 (nthAddrRange var4 var5)))) (and (and (and (= var1 (write var7 (nthAddrRange var4 var5) (O_Int (* (+ var5 (- 1)) (+ var5 1))))) (= var3 var6)) (= var2 var5)) (= var0 var4)))))) (inv_main18 var1 var3 0 var0))))
(assert (forall ((var0 Int) (var1 Heap) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 Heap)) (or (not (and (inv_main2 var10) (and (and (not (<= 0 (+ var9 (- 1)))) (and (and (and (= var8 (newBatchHeap (batchAlloc emptyHeap (O_Int var7) var6))) (= var9 var6)) (= var5 var4)) (= var3 (newAddrRange (batchAlloc emptyHeap (O_Int var7) var6))))) (and (not (= var2 0)) (and (and (= var1 var10) (= var6 var0)) (or (and (<= 0 (+ (+ var0 (- 1)) (- 1))) (= var2 1)) (and (not (<= 0 (+ (+ var0 (- 1)) (- 1)))) (= var2 0)))))))) (inv_main18 var8 var9 0 var3))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (or (not (and (inv_main18 var3 var2 var1 var0) (<= 0 (+ (+ var2 (* (- 1) var1)) (- 1))))) (inv_main19 var3 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (or (not (and (inv_main19 var3 var2 var1 var0) (is-O_Int (read var3 (nthAddrRange var0 var1))))) (inv_main21 var3 var2 var1 var0 (getInt (read var3 (nthAddrRange var0 var1)))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (or (not (and (inv_main18 var3 var2 var1 var0) (and (<= 0 (+ var2 (- 1))) (not (<= 0 (+ (+ var2 (* (- 1) var1)) (- 1))))))) (inv_main24 var3 var2 0 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (or (not (and (inv_main24 var3 var2 var1 var0) (and (<= 0 (+ (+ var2 (* (- 1) (+ var1 1))) (- 1))) (is-O_Int (read var3 (nthAddrRange var0 var1)))))) (inv_main24 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main15 var7 var6 var5 var4) (and (<= 0 (+ (+ var3 (* (- 1) (+ var2 1))) (- 1))) (and (and (is-O_Int (read var7 (nthAddrRange var4 var5))) (is-O_Int (read var7 (nthAddrRange var4 var5)))) (and (and (and (= var1 (write var7 (nthAddrRange var4 var5) (O_Int (* (+ var5 (- 1)) (+ var5 1))))) (= var3 var6)) (= var2 var5)) (= var0 var4)))))) (inv_main15 var1 var3 (+ var2 1) var0))))
(assert (forall ((var0 Int) (var1 Heap) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 Heap)) (or (not (and (inv_main2 var10) (and (and (<= 0 (+ var9 (- 1))) (and (and (and (= var8 (newBatchHeap (batchAlloc emptyHeap (O_Int var7) var6))) (= var9 var6)) (= var5 var4)) (= var3 (newAddrRange (batchAlloc emptyHeap (O_Int var7) var6))))) (and (not (= var2 0)) (and (and (= var1 var10) (= var6 var0)) (or (and (<= 0 (+ (+ var0 (- 1)) (- 1))) (= var2 1)) (and (not (<= 0 (+ (+ var0 (- 1)) (- 1)))) (= var2 0)))))))) (inv_main15 var8 var9 0 var3))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (inv_main15 var3 var2 var1 var0) (not (is-O_Int (read var3 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (inv_main15 var3 var2 var1 var0) (and (is-O_Int (read var3 (nthAddrRange var0 var1))) (not (within var0 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (inv_main15 var3 var2 var1 var0) (and (is-O_Int (read var3 (nthAddrRange var0 var1))) (not (is-O_Int (read var3 (nthAddrRange var0 var1)))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (inv_main19 var3 var2 var1 var0) (not (is-O_Int (read var3 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (inv_main19 var3 var2 var1 var0) (and (is-O_Int (read var3 (nthAddrRange var0 var1))) (not (within var0 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main21 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main21 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var1 var2))) (not (within var1 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main21 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var1 var2))) (not (is-O_Int (read var4 (nthAddrRange var1 var2)))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (inv_main24 var3 var2 var1 var0) (not (is-O_Int (read var3 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (inv_main24 var3 var2 var1 var0) (not (within var0 (nthAddrRange var0 var1)))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (inv_main24 var3 var2 var1 var0) (not (is-O_Int (read var3 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (inv_main24 var3 var2 var1 var0) (and (is-O_Int (read var3 (nthAddrRange var0 var1))) (not (within var0 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (inv_main24 var3 var2 var1 var0) (and (is-O_Int (read var3 (nthAddrRange var0 var1))) (not (= (getInt (read var3 (nthAddrRange var0 var1))) (- 1))))))))
(check-sat)
