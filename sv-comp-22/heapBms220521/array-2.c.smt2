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
(declare-fun inv_main12 (Heap Int Int Int AddrRange Int) Bool)
(declare-fun inv_main13 (Heap Int Int Int AddrRange Int) Bool)
(declare-fun inv_main14 (Heap Int Int Int AddrRange Int) Bool)
(declare-fun inv_main5 (Heap Int Int Int AddrRange Int) Bool)
(declare-fun inv_main8 (Heap Int Int Int AddrRange Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Heap) (var3 Int) (var4 Int)) (or (not (and (and (<= 0 var4) (<= 0 var3)) (= var2 emptyHeap))) (inv_main5 (newBatchHeap (batchAlloc emptyHeap (O_Int var1) 1)) 1 var4 var3 (newAddrRange (batchAlloc emptyHeap (O_Int var1) 1)) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main5 var6 var5 var4 var3 var2 var1) (<= 0 (+ var5 (- 1))))) (inv_main13 var6 var5 0 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main14 var12 var11 var10 var9 var8 var7) (and (<= 0 (+ (+ var6 (* (- 1) (+ var5 1))) (- 1))) (and (is-O_Int (read var12 (nthAddrRange var8 var10))) (and (and (and (and (and (and (= var4 var12) (= var6 var11)) (= var5 var10)) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 (getInt (read var12 (nthAddrRange var8 var10))))))))) (inv_main13 var4 var6 (+ var5 1) var3 var2 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main12 var12 var11 var10 var9 var8 var7) (and (<= 0 (+ (+ var6 (* (- 1) (+ var5 1))) (- 1))) (and (and (not (<= 0 (+ var4 (* (- 1) var3)))) (is-O_Int (read var12 (nthAddrRange var8 var10)))) (and (and (and (and (and (and (= var2 var12) (= var6 var11)) (= var5 var10)) (= var1 var9)) (= var0 var8)) (= var4 var7)) (= var3 (getInt (read var12 (nthAddrRange var8 var10))))))))) (inv_main13 var2 var6 (+ var5 1) var1 var0 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main5 var6 var5 var4 var3 var2 var1) (not (<= 0 (+ var5 (- 1)))))) (inv_main8 var6 var5 0 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main14 var12 var11 var10 var9 var8 var7) (and (not (<= 0 (+ (+ var6 (* (- 1) (+ var5 1))) (- 1)))) (and (is-O_Int (read var12 (nthAddrRange var8 var10))) (and (and (and (and (and (and (= var4 var12) (= var6 var11)) (= var5 var10)) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 (getInt (read var12 (nthAddrRange var8 var10))))))))) (inv_main8 var4 var6 (+ var5 1) var3 var2 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main12 var12 var11 var10 var9 var8 var7) (and (not (<= 0 (+ (+ var6 (* (- 1) (+ var5 1))) (- 1)))) (and (and (not (<= 0 (+ var4 (* (- 1) var3)))) (is-O_Int (read var12 (nthAddrRange var8 var10)))) (and (and (and (and (and (and (= var2 var12) (= var6 var11)) (= var5 var10)) (= var1 var9)) (= var0 var8)) (= var4 var7)) (= var3 (getInt (read var12 (nthAddrRange var8 var10))))))))) (inv_main8 var2 var6 (+ var5 1) var1 var0 var4))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main12 var12 var11 var10 var9 var8 var7) (and (and (<= 0 (+ var6 (* (- 1) var5))) (is-O_Int (read var12 (nthAddrRange var8 var10)))) (and (and (and (and (and (and (= var4 var12) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var6 var7)) (= var5 (getInt (read var12 (nthAddrRange var8 var10)))))))) (inv_main14 var4 var3 var2 var1 var0 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main13 var6 var5 var4 var3 var2 var1) (and (is-O_Int (read var6 (nthAddrRange var2 var4))) (is-O_Int (read var6 (nthAddrRange var2 var4)))))) (inv_main12 (write var6 (nthAddrRange var2 var4) (O_Int var0)) var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main13 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var1 var3))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main13 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var3))) (not (within var1 (nthAddrRange var1 var3))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main13 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var3))) (not (is-O_Int (read var5 (nthAddrRange var1 var3)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main12 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var1 var3))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main12 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var3))) (not (within var1 (nthAddrRange var1 var3))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main14 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var1 var3))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main14 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var3))) (not (within var1 (nthAddrRange var1 var3))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main8 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var1 0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main8 var5 var4 var3 var2 var1 var0) (not (within var1 (nthAddrRange var1 0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main8 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var1 0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main8 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 0))) (not (within var1 (nthAddrRange var1 0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main8 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 0))) (not (<= 0 (+ (+ (getInt (read var5 (nthAddrRange var1 0))) (* (- 1) var0)) (- 1)))))))))
(check-sat)
