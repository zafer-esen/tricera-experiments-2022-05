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
(declare-fun inv_main12 (Heap AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main13 (Heap AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main16 (Heap AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main18 (Heap AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main19 (Heap AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main23 (Heap AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main6 (Heap AddrRange AddrRange AddrRange Int) Bool)
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 AddrRange) (var6 AddrRange) (var7 Int) (var8 Heap) (var9 AddrRange) (var10 Int) (var11 Heap) (var12 Heap)) (or (not (and (and (and (= var12 emptyHeap) (and (= var11 (newBatchHeap (batchAlloc emptyHeap (O_Int var10) 100000))) (= var9 (newAddrRange (batchAlloc emptyHeap (O_Int var10) 100000))))) (and (and (= var8 (newBatchHeap (batchAlloc emptyHeap (O_Int var7) 100000))) (= var6 var9)) (= var5 (newAddrRange (batchAlloc emptyHeap (O_Int var7) 100000))))) (and (and (and (= var4 (newBatchHeap (batchAlloc emptyHeap (O_Int var3) 100000))) (= var2 var6)) (= var1 var5)) (= var0 (newAddrRange (batchAlloc emptyHeap (O_Int var3) 100000)))))) (inv_main6 var4 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (or (not (and (inv_main12 var10 var9 var8 var7 var6) (and (and (is-O_Int (read var10 (nthAddrRange var9 var6))) (is-O_Int (read var10 (nthAddrRange var9 var6)))) (and (and (and (and (= var5 (write var10 (nthAddrRange var9 var6) (O_Int var4))) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 var6))))) (inv_main13 var5 var3 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (or (not (and (inv_main19 var10 var9 var8 var7 var6 var5) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var4 1))) (- 1))) (and (and (is-O_Int (read var10 (nthAddrRange var7 var6))) (is-O_Int (read var10 (nthAddrRange var7 var6)))) (and (and (and (and (= var3 (write var10 (nthAddrRange var7 var6) (O_Int var5))) (= var2 var9)) (= var1 var8)) (= var0 var7)) (= var4 var6)))))) (inv_main16 var3 var2 var1 var0 (+ var4 1)))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (or (not (and (inv_main13 var10 var9 var8 var7 var6) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var5 1))) (- 1)))) (and (and (is-O_Int (read var10 (nthAddrRange var8 var6))) (is-O_Int (read var10 (nthAddrRange var8 var6)))) (and (and (and (and (= var4 (write var10 (nthAddrRange var8 var6) (O_Int var3))) (= var2 var9)) (= var1 var8)) (= var0 var7)) (= var5 var6)))))) (inv_main16 var4 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (or (not (and (inv_main16 var4 var3 var2 var1 var0) (is-O_Int (read var4 (nthAddrRange var3 var0))))) (inv_main18 var4 var3 var2 var1 var0 (getInt (read var4 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main23 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var0 1))) (- 1))) (and (and (is-O_Int (read var5 (nthAddrRange var2 var0))) (is-O_Int (read var5 (nthAddrRange var4 var0)))) (is-O_Int (read var5 (nthAddrRange var3 var0))))))) (inv_main23 var5 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (or (not (and (inv_main19 var10 var9 var8 var7 var6 var5) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var4 1))) (- 1)))) (and (and (is-O_Int (read var10 (nthAddrRange var7 var6))) (is-O_Int (read var10 (nthAddrRange var7 var6)))) (and (and (and (and (= var3 (write var10 (nthAddrRange var7 var6) (O_Int var5))) (= var2 var9)) (= var1 var8)) (= var0 var7)) (= var4 var6)))))) (inv_main23 var3 var2 var1 var0 (+ var4 1) 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (or (not (inv_main6 var4 var3 var2 var1 var0)) (inv_main12 var4 var3 var2 var1 0))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (or (not (and (inv_main13 var10 var9 var8 var7 var6) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var5 1))) (- 1))) (and (and (is-O_Int (read var10 (nthAddrRange var8 var6))) (is-O_Int (read var10 (nthAddrRange var8 var6)))) (and (and (and (and (= var4 (write var10 (nthAddrRange var8 var6) (O_Int var3))) (= var2 var9)) (= var1 var8)) (= var0 var7)) (= var5 var6)))))) (inv_main12 var4 var2 var1 var0 (+ var5 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main18 var5 var4 var3 var2 var1 var0) (is-O_Int (read var5 (nthAddrRange var3 var1))))) (inv_main19 var5 var4 var3 var2 var1 (+ var0 (* (- 1) (getInt (read var5 (nthAddrRange var3 var1)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main12 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main12 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main12 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var3 var0))) (not (is-O_Int (read var4 (nthAddrRange var3 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main13 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main13 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var2 var0))) (not (within var2 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main13 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var2 var0))) (not (is-O_Int (read var4 (nthAddrRange var2 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main16 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main16 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main18 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main18 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var3 var1))) (not (within var3 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main19 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main19 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var2 var1))) (not (within var2 (nthAddrRange var2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main19 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var2 var1))) (not (is-O_Int (read var5 (nthAddrRange var2 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main23 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main23 var5 var4 var3 var2 var1 var0) (not (within var2 (nthAddrRange var2 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main23 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var4 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main23 var5 var4 var3 var2 var1 var0) (not (within var4 (nthAddrRange var4 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main23 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main23 var5 var4 var3 var2 var1 var0) (not (within var3 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main23 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main23 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var2 var0))) (not (within var2 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main23 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var2 var0))) (not (is-O_Int (read var5 (nthAddrRange var4 var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main23 var5 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var5 (nthAddrRange var2 var0))) (is-O_Int (read var5 (nthAddrRange var4 var0)))) (not (within var4 (nthAddrRange var4 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main23 var5 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var5 (nthAddrRange var2 var0))) (is-O_Int (read var5 (nthAddrRange var4 var0)))) (not (is-O_Int (read var5 (nthAddrRange var3 var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main23 var5 var4 var3 var2 var1 var0) (and (and (and (is-O_Int (read var5 (nthAddrRange var2 var0))) (is-O_Int (read var5 (nthAddrRange var4 var0)))) (is-O_Int (read var5 (nthAddrRange var3 var0)))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main23 var5 var4 var3 var2 var1 var0) (and (and (and (is-O_Int (read var5 (nthAddrRange var2 var0))) (is-O_Int (read var5 (nthAddrRange var4 var0)))) (is-O_Int (read var5 (nthAddrRange var3 var0)))) (not (= (getInt (read var5 (nthAddrRange var2 var0))) (+ (getInt (read var5 (nthAddrRange var4 var0))) (* (- 1) (getInt (read var5 (nthAddrRange var3 var0))))))))))))
(check-sat)
