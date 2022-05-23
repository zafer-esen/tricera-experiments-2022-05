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
(declare-fun inv_main12 (Heap AddrRange Int Int Int Int) Bool)
(declare-fun inv_main13 (Heap AddrRange Int Int Int Int) Bool)
(declare-fun inv_main23 (Heap AddrRange Int Int Int Int) Bool)
(declare-fun inv_main24 (Heap AddrRange Int Int Int Int) Bool)
(declare-fun inv_main27 (Heap AddrRange Int Int Int Int) Bool)
(declare-fun inv_main29 (Heap AddrRange Int Int Int Int) Bool)
(declare-fun inv_main31 (Heap AddrRange Int Int Int Int) Bool)
(declare-fun inv_main38 (Heap AddrRange Int Int Int Int Int) Bool)
(declare-fun inv_main42 (Heap AddrRange Int Int Int Int Int) Bool)
(declare-fun inv_main45 (Heap AddrRange Int Int Int Int Int Int) Bool)
(declare-fun inv_main7 (Heap AddrRange Int Int Int Int) Bool)
(declare-fun inv_main8 (Heap AddrRange Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Heap) (var7 Heap)) (or (not (and (= var7 emptyHeap) (and (= var6 (newBatchHeap (batchAlloc emptyHeap (O_Int var5) 100000))) (= var4 (newAddrRange (batchAlloc emptyHeap (O_Int var5) 100000)))))) (inv_main7 var6 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main38 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var0 1))) (- 1))) (is-O_Int (read var6 (nthAddrRange var5 var0)))))) (inv_main38 var6 var5 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main23 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ 100000 (* (- 1) var3)) (- 1)))))) (inv_main38 var5 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main12 var12 var11 var10 var9 var8 var7) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var6 1))) (- 1)))) (and (and (is-O_Int (read var12 (nthAddrRange var11 var10))) (is-O_Int (read var12 (nthAddrRange var11 var10)))) (and (and (and (and (and (= var5 (write var12 (nthAddrRange var11 var10) (O_Int var4))) (= var3 var11)) (= var6 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7)))))) (inv_main8 var5 var3 (+ var6 1) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main23 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ 100000 (* (- 1) var3)) (- 1))))) (inv_main24 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Heap) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 Heap)) (or (not (and (inv_main42 var14 var13 var12 var11 var10 var9 var8) (and (and (and (is-O_Int (read var14 (nthAddrRange var13 var8))) (not (<= 0 (+ var10 (* (- 1) (getInt (read var14 (nthAddrRange var13 var8)))))))) (is-O_Int (read var14 (nthAddrRange var13 var8)))) (and (and (and (and (and (and (and (= var7 var14) (= var6 var13)) (= var5 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (or (and (= (getInt (read var14 (nthAddrRange var13 var8))) var11) (= var0 1)) (and (not (= (getInt (read var14 (nthAddrRange var13 var8))) var11)) (= var0 0))))))) (inv_main45 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main42 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var5 var0))) (<= 0 (+ var2 (* (- 1) (getInt (read var6 (nthAddrRange var5 var0))))))))) (inv_main45 var6 var5 var4 var3 var2 var1 var0 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main27 var12 var11 var10 var9 var8 var7) (and (and (<= 0 (+ (+ var6 (* (- 1) var5)) (- 1))) (is-O_Int (read var12 (nthAddrRange var11 var10)))) (and (and (and (and (and (and (= var4 var12) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var5 var8)) (= var0 var7)) (= var6 (getInt (read var12 (nthAddrRange var11 var10)))))))) (inv_main31 var4 var3 var2 var1 var5 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main24 var12 var11 var10 var9 var8 var7) (and (and (not (<= 0 (+ var6 (* (- 1) var5)))) (is-O_Int (read var12 (nthAddrRange var11 var10)))) (and (and (and (and (and (and (= var4 var12) (= var3 var11)) (= var2 var10)) (= var5 var9)) (= var1 var8)) (= var0 var7)) (= var6 (getInt (read var12 (nthAddrRange var11 var10)))))))) (inv_main27 var4 var3 var2 var5 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (inv_main7 var5 var4 var3 var2 var1 var0)) (inv_main12 var5 var4 0 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main12 var12 var11 var10 var9 var8 var7) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var6 1))) (- 1))) (and (and (is-O_Int (read var12 (nthAddrRange var11 var10))) (is-O_Int (read var12 (nthAddrRange var11 var10)))) (and (and (and (and (and (= var5 (write var12 (nthAddrRange var11 var10) (O_Int var4))) (= var3 var11)) (= var6 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7)))))) (inv_main12 var5 var3 (+ var6 1) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main24 var12 var11 var10 var9 var8 var7) (and (and (<= 0 (+ var6 (* (- 1) var5))) (is-O_Int (read var12 (nthAddrRange var11 var10)))) (and (and (and (and (and (and (= var4 var12) (= var3 var11)) (= var2 var10)) (= var5 var9)) (= var1 var8)) (= var0 var7)) (= var6 (getInt (read var12 (nthAddrRange var11 var10)))))))) (inv_main29 var4 var3 var2 var5 var5 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main13 var12 var11 var10 var9 var8 var7) (and (not (<= 0 (+ (+ var6 (* (- 1) var5)) (- 1)))) (and (is-O_Int (read var12 (nthAddrRange var11 1))) (and (and (and (and (and (and (= var4 var12) (= var3 var11)) (= var2 var10)) (= var5 var9)) (= var1 var8)) (= var0 var7)) (= var6 (getInt (read var12 (nthAddrRange var11 1))))))))) (inv_main23 var4 var3 2 var5 var6 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main13 var12 var11 var10 var9 var8 var7) (and (<= 0 (+ (+ var6 (* (- 1) var5)) (- 1))) (and (is-O_Int (read var12 (nthAddrRange var11 1))) (and (and (and (and (and (and (= var4 var12) (= var3 var11)) (= var2 var10)) (= var5 var9)) (= var1 var8)) (= var0 var7)) (= var6 (getInt (read var12 (nthAddrRange var11 1))))))))) (inv_main23 var4 var3 2 var6 var5 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main29 var12 var11 var10 var9 var8 var7) (and (is-O_Int (read var12 (nthAddrRange var11 var10))) (and (and (and (and (and (and (= var6 var12) (= var5 var11)) (= var4 var10)) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 (getInt (read var12 (nthAddrRange var11 var10)))))))) (inv_main23 var6 var5 (+ var4 1) var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main31 var12 var11 var10 var9 var8 var7) (and (is-O_Int (read var12 (nthAddrRange var11 var10))) (and (and (and (and (and (and (= var6 var12) (= var5 var11)) (= var4 var10)) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 (getInt (read var12 (nthAddrRange var11 var10)))))))) (inv_main23 var6 var5 (+ var4 1) var3 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main27 var12 var11 var10 var9 var8 var7) (and (and (not (<= 0 (+ (+ var6 (* (- 1) var5)) (- 1)))) (is-O_Int (read var12 (nthAddrRange var11 var10)))) (and (and (and (and (and (and (= var4 var12) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var5 var8)) (= var0 var7)) (= var6 (getInt (read var12 (nthAddrRange var11 var10)))))))) (inv_main23 var4 var3 (+ var2 1) var1 var5 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Heap)) (or (not (and (inv_main45 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ 100000 (* (- 1) (+ var1 1))) (- 1))))) (inv_main42 var7 var6 var5 var4 var3 var2 (+ var1 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main38 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var0 1))) (- 1)))) (is-O_Int (read var6 (nthAddrRange var5 var0)))))) (inv_main42 var6 var5 var4 var3 var2 var1 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main8 var12 var11 var10 var9 var8 var7) (and (is-O_Int (read var12 (nthAddrRange var11 0))) (and (and (and (and (and (and (= var6 var12) (= var5 var11)) (= var4 var10)) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 (getInt (read var12 (nthAddrRange var11 0)))))))) (inv_main13 var6 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main12 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var4 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main12 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (not (within var4 (nthAddrRange var4 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main12 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (not (is-O_Int (read var5 (nthAddrRange var4 var3)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main8 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var4 0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main8 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var4 0))) (not (within var4 (nthAddrRange var4 0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main13 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var4 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main13 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var4 1))) (not (within var4 (nthAddrRange var4 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var4 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (not (within var4 (nthAddrRange var4 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main29 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var4 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main29 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (not (within var4 (nthAddrRange var4 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main27 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var4 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main27 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (not (within var4 (nthAddrRange var4 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main31 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var4 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main31 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (not (within var4 (nthAddrRange var4 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main38 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main38 var6 var5 var4 var3 var2 var1 var0) (not (within var5 (nthAddrRange var5 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main38 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main38 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var5 var0))) (not (within var5 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main38 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var5 var0))) (not (<= 0 (+ var3 (* (- 1) (getInt (read var6 (nthAddrRange var5 var0))))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main42 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main42 var6 var5 var4 var3 var2 var1 var0) (not (within var5 (nthAddrRange var5 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main42 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main42 var6 var5 var4 var3 var2 var1 var0) (not (within var5 (nthAddrRange var5 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main42 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main42 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var5 var0))) (not (within var5 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main42 var6 var5 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var6 (nthAddrRange var5 var0))) (not (<= 0 (+ var2 (* (- 1) (getInt (read var6 (nthAddrRange var5 var0)))))))) (not (is-O_Int (read var6 (nthAddrRange var5 var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main42 var6 var5 var4 var3 var2 var1 var0) (and (and (and (is-O_Int (read var6 (nthAddrRange var5 var0))) (not (<= 0 (+ var2 (* (- 1) (getInt (read var6 (nthAddrRange var5 var0)))))))) (is-O_Int (read var6 (nthAddrRange var5 var0)))) (not (within var5 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Heap)) (not (and (inv_main45 var7 var6 var5 var4 var3 var2 var1 var0) (= var0 0)))))
(check-sat)