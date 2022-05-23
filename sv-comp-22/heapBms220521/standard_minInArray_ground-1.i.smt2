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
(declare-fun inv_main10 (Heap AddrRange Int Int) Bool)
(declare-fun inv_main13 (Heap AddrRange Int Int) Bool)
(declare-fun inv_main15 (Heap AddrRange Int Int) Bool)
(declare-fun inv_main22 (Heap AddrRange Int Int Int) Bool)
(declare-fun inv_main4 (Heap AddrRange Int) Bool)
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Heap)) (or (not (and (= var3 emptyHeap) (and (= var2 (newBatchHeap (batchAlloc emptyHeap (O_Int var1) 100000))) (= var0 (newAddrRange (batchAlloc emptyHeap (O_Int var1) 100000)))))) (inv_main4 var2 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Heap)) (or (not (and (inv_main15 var8 var7 var6 var5) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var4 1))) (- 1))) (and (is-O_Int (read var8 (nthAddrRange var7 var5))) (and (and (and (and (= var3 var8) (= var2 var7)) (= var1 var6)) (= var4 var5)) (= var0 (getInt (read var8 (nthAddrRange var7 var5))))))))) (inv_main13 var3 var2 var0 (+ var4 1)))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Heap)) (or (not (and (inv_main13 var8 var7 var6 var5) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var4 1))) (- 1))) (and (and (not (<= 0 (+ (+ var3 (* (- 1) var2)) (- 1)))) (is-O_Int (read var8 (nthAddrRange var7 var5)))) (and (and (and (and (= var1 var8) (= var0 var7)) (= var3 var6)) (= var4 var5)) (= var2 (getInt (read var8 (nthAddrRange var7 var5))))))))) (inv_main13 var1 var0 var3 (+ var4 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Heap)) (or (not (and (inv_main10 var8 var7 var6 var5) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var4 1))) (- 1)))) (and (and (is-O_Int (read var8 (nthAddrRange var7 var5))) (is-O_Int (read var8 (nthAddrRange var7 var5)))) (and (and (and (= var3 (write var8 (nthAddrRange var7 var5) (O_Int var2))) (= var1 var7)) (= var0 var6)) (= var4 var5)))))) (inv_main13 var3 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (or (not (and (inv_main22 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var0 1))) (- 1))) (is-O_Int (read var4 (nthAddrRange var3 var0)))))) (inv_main22 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Heap)) (or (not (and (inv_main15 var8 var7 var6 var5) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var4 1))) (- 1)))) (and (is-O_Int (read var8 (nthAddrRange var7 var5))) (and (and (and (and (= var3 var8) (= var2 var7)) (= var1 var6)) (= var4 var5)) (= var0 (getInt (read var8 (nthAddrRange var7 var5))))))))) (inv_main22 var3 var2 var0 (+ var4 1) 0))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Heap)) (or (not (and (inv_main13 var8 var7 var6 var5) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var4 1))) (- 1)))) (and (and (not (<= 0 (+ (+ var3 (* (- 1) var2)) (- 1)))) (is-O_Int (read var8 (nthAddrRange var7 var5)))) (and (and (and (and (= var1 var8) (= var0 var7)) (= var3 var6)) (= var4 var5)) (= var2 (getInt (read var8 (nthAddrRange var7 var5))))))))) (inv_main22 var1 var0 var3 (+ var4 1) 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (or (not (inv_main4 var2 var1 var0)) (inv_main10 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Heap)) (or (not (and (inv_main10 var8 var7 var6 var5) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var4 1))) (- 1))) (and (and (is-O_Int (read var8 (nthAddrRange var7 var5))) (is-O_Int (read var8 (nthAddrRange var7 var5)))) (and (and (and (= var3 (write var8 (nthAddrRange var7 var5) (O_Int var2))) (= var1 var7)) (= var0 var6)) (= var4 var5)))))) (inv_main10 var3 var1 var0 (+ var4 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Heap)) (or (not (and (inv_main13 var8 var7 var6 var5) (and (and (<= 0 (+ (+ var4 (* (- 1) var3)) (- 1))) (is-O_Int (read var8 (nthAddrRange var7 var5)))) (and (and (and (and (= var2 var8) (= var1 var7)) (= var4 var6)) (= var0 var5)) (= var3 (getInt (read var8 (nthAddrRange var7 var5)))))))) (inv_main15 var2 var1 var4 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main10 var3 var2 var1 var0) (not (is-O_Int (read var3 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main10 var3 var2 var1 var0) (and (is-O_Int (read var3 (nthAddrRange var2 var0))) (not (within var2 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main10 var3 var2 var1 var0) (and (is-O_Int (read var3 (nthAddrRange var2 var0))) (not (is-O_Int (read var3 (nthAddrRange var2 var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main13 var3 var2 var1 var0) (not (is-O_Int (read var3 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main13 var3 var2 var1 var0) (and (is-O_Int (read var3 (nthAddrRange var2 var0))) (not (within var2 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main15 var3 var2 var1 var0) (not (is-O_Int (read var3 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main15 var3 var2 var1 var0) (and (is-O_Int (read var3 (nthAddrRange var2 var0))) (not (within var2 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main22 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main22 var4 var3 var2 var1 var0) (not (within var3 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main22 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main22 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main22 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var3 var0))) (not (<= 0 (+ (+ (getInt (read var4 (nthAddrRange var3 var0))) (* (- 1) var2)) (- 1)))))))))
(check-sat)
