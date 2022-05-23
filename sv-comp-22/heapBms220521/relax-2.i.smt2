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
(declare-fun inv_main13 (Heap Int Int AddrRange AddrRange Int) Bool)
(declare-fun inv_main14 (Heap Int Int AddrRange AddrRange) Bool)
(declare-fun inv_main19 (Heap Int Int AddrRange AddrRange Int) Bool)
(declare-fun inv_main2 (Heap) Bool)
(declare-fun inv_main21 (Heap Int Int AddrRange AddrRange) Bool)
(declare-fun inv_main24 (Heap Int Int AddrRange AddrRange Int) Bool)
(declare-fun inv_main30 (Heap Int Int AddrRange AddrRange AddrRange Int AddrRange Int Int) Bool)
(declare-fun inv_main33 (Heap Int Int AddrRange AddrRange AddrRange Int AddrRange Int Int Int) Bool)
(declare-fun inv_main37 (Heap Int Int AddrRange AddrRange AddrRange Int AddrRange Int Int Int Int) Bool)
(declare-fun inv_main49 (Heap Int Int AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main52 (Heap Int Int AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main54 (Heap Int Int AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main60 (Heap Int Int AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main62 (Heap Int Int AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main68 (Heap Int Int AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main73 (Heap Int Int AddrRange AddrRange Int) Bool)
(declare-fun inv_main76 (Heap Int Int AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main80 (Heap Int Int AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main81 (Heap Int Int AddrRange AddrRange Int) Bool)
(assert (inv_main2 emptyHeap))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main37 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var2 0)) (and (is-O_Int (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2))))) (not (= var0 (getInt (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2))))))))))) (inv_main24 var11 var10 var9 var8 var7 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (inv_main30 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ var3 (* (- 1) var1)) (- 1))) (= var0 1)))) (inv_main24 var9 var8 var7 var6 var5 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (inv_main30 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (or (not (<= 0 (+ (+ var3 (* (- 1) var1)) (- 1)))) (not (= var0 1))))) (inv_main24 var9 var8 var7 var6 var5 1))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (inv_main14 var4 var3 var2 var1 var0) (<= 0 (+ (+ var3 (* (- 1) (+ var2 1))) (- 1))))) (inv_main24 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main37 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ (+ var5 (* (- 1) (+ var1 1))) (- 1))) (<= 0 (+ (+ var3 (* (- 1) (+ var1 1))) (- 1)))) (and (is-O_Int (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2))))) (= var0 (getInt (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2)))))))))) (inv_main33 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main37 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ (+ var5 (* (- 1) (+ var1 1))) (- 1))) (<= 0 (+ (+ var3 (* (- 1) (+ var1 1))) (- 1)))) (and (= var2 0) (and (is-O_Int (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2))))) (not (= var0 (getInt (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2)))))))))))) (inv_main33 var11 var10 var9 var8 var7 var6 var5 var4 var3 1 (+ var1 1)))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (inv_main14 var4 var3 var2 var1 var0) (and (and (<= 0 (+ var3 (- 1))) (<= 0 (+ var2 (- 1)))) (not (<= 0 (+ (+ var3 (* (- 1) (+ var2 1))) (- 1))))))) (inv_main33 var4 var3 var2 var1 var0 var1 var3 var0 var2 0 0))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main19 var12 var11 var10 var9 var8 var7) (and (<= 0 (+ (+ var6 (* (- 1) (+ var5 1))) (- 1))) (and (and (is-O_UInt (read var12 (nthAddrRange var8 var7))) (is-O_UInt (read var12 (nthAddrRange var8 var7)))) (and (and (and (and (and (= var4 (write var12 (nthAddrRange var8 var7) (O_UInt var3))) (= var2 var11)) (= var6 var10)) (= var1 var9)) (= var0 var8)) (= var5 var7)))))) (inv_main19 var4 var2 var6 var1 var0 (+ var5 1)))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 Int) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main13 var12 var11 var10 var9 var8 var7) (and (<= 0 (+ var6 (- 1))) (and (not (<= 0 (+ (+ var5 (* (- 1) (+ var4 1))) (- 1)))) (and (and (is-O_UInt (read var12 (nthAddrRange var9 var7))) (is-O_UInt (read var12 (nthAddrRange var9 var7)))) (and (and (and (and (and (= var3 (write var12 (nthAddrRange var9 var7) (O_UInt var2))) (= var5 var11)) (= var6 var10)) (= var1 var9)) (= var0 var8)) (= var4 var7))))))) (inv_main19 var3 var5 var6 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Int) (var7 Int) (var8 Int) (var9 Heap) (var10 Heap) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (inv_main2 var13) (and (and (and (and (<= 0 (+ var12 (- 1))) (and (not (<= 0 (+ var11 (- 1)))) (and (and (and (and (= var10 (newBatchHeap (batchAlloc var9 (O_Int var8) var7))) (= var11 var6)) (= var12 var7)) (= var5 var4)) (= var3 (newAddrRange (batchAlloc var9 (O_Int var8) var7)))))) (and (and (and (= var9 (newBatchHeap (batchAlloc var13 (O_Int var2) var1))) (= var6 var1)) (= var7 var0)) (= var4 (newAddrRange (batchAlloc var13 (O_Int var2) var1))))) (<= 0 var0)) (<= 0 var1)))) (inv_main19 var10 var11 var12 var5 var3 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (inv_main33 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var10 (nthAddrRange var5 var0))))) (inv_main37 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var10 (nthAddrRange var5 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main68 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var6 (nthAddrRange var3 var0))) (is-O_UInt (read var6 (nthAddrRange var2 (+ var0 (- 1)))))))) (inv_main49 var6 var5 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (inv_main54 var15 var14 var13 var12 var11 var10 var9 var8) (and (and (not (= var7 0)) (is-O_UInt (read var15 (nthAddrRange var11 var9)))) (and (and (and (and (and (and (and (= var6 var15) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9)) (or (and (= var8 (getUInt (read var15 (nthAddrRange var11 var9)))) (= var7 1)) (and (not (= var8 (getUInt (read var15 (nthAddrRange var11 var9))))) (= var7 0))))))) (inv_main49 var6 var5 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (inv_main62 var15 var14 var13 var12 var11 var10 var9 var8) (and (and (not (= var7 0)) (is-O_UInt (read var15 (nthAddrRange var11 var9)))) (and (and (and (and (and (and (and (= var6 var15) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9)) (or (and (not (= var8 (getUInt (read var15 (nthAddrRange var11 var9))))) (= var7 1)) (and (= var8 (getUInt (read var15 (nthAddrRange var11 var9)))) (= var7 0))))))) (inv_main49 var6 var5 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main49 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ (+ var0 (* (- 1) var1)) (- 1)))) (and (not (= var0 var1)) (and (not (<= 0 (+ (+ var1 (* (- 1) var0)) (- 1)))) (and (<= 0 (+ (+ var5 (* (- 1) var0)) (- 1))) (<= 0 (+ (+ var4 (* (- 1) var0)) (- 1))))))))) (inv_main49 var6 var5 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main21 var5 var4 var3 var2 var1) (and (<= 0 (+ (+ var4 (* (- 1) var3)) (- 1))) (<= 0 var0)))) (inv_main49 var5 var4 var3 var2 var1 (+ var4 (- 1)) 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main21 var5 var4 var3 var2 var1) (and (not (<= 0 (+ (+ var4 (* (- 1) var3)) (- 1)))) (<= 0 var0)))) (inv_main49 var5 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main73 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ var4 (* (- 1) var3)) (- 1))))) (inv_main81 var5 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main73 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var4 (* (- 1) var3)) (- 1)))))) (inv_main81 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main80 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ (+ var6 (* (- 1) (+ var1 1))) (- 1))) (<= 0 (+ (+ var5 (* (- 1) (+ var1 1))) (- 1)))) (and (is-O_UInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2))))) (not (= var0 (getUInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2))))))))))) (inv_main76 var7 var6 var5 var4 var3 (+ var2 1) (+ var1 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main80 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ (+ var6 (* (- 1) (+ var1 1))) (- 1))) (<= 0 (+ (+ var5 (* (- 1) (+ var1 1))) (- 1)))) (and (is-O_UInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2))))) (= var0 (getUInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2)))))))))) (inv_main76 var7 var6 var5 var4 var3 var2 (+ var1 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ var4 (- 1))) (<= 0 (+ var3 (- 1)))) (and (<= 0 (+ (+ var3 1) (* (- 1) var4))) (= var0 0))))) (inv_main76 var5 var4 var3 var2 var1 0 0))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main19 var12 var11 var10 var9 var8 var7) (and (not (<= 0 (+ (+ var6 (* (- 1) (+ var5 1))) (- 1)))) (and (and (is-O_UInt (read var12 (nthAddrRange var8 var7))) (is-O_UInt (read var12 (nthAddrRange var8 var7)))) (and (and (and (and (and (= var4 (write var12 (nthAddrRange var8 var7) (O_UInt var3))) (= var2 var11)) (= var6 var10)) (= var1 var9)) (= var0 var8)) (= var5 var7)))))) (inv_main14 var4 var2 var6 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 Int) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main13 var12 var11 var10 var9 var8 var7) (and (not (<= 0 (+ var6 (- 1)))) (and (not (<= 0 (+ (+ var5 (* (- 1) (+ var4 1))) (- 1)))) (and (and (is-O_UInt (read var12 (nthAddrRange var9 var7))) (is-O_UInt (read var12 (nthAddrRange var9 var7)))) (and (and (and (and (and (= var3 (write var12 (nthAddrRange var9 var7) (O_UInt var2))) (= var5 var11)) (= var6 var10)) (= var1 var9)) (= var0 var8)) (= var4 var7))))))) (inv_main14 var3 var5 var6 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Int) (var7 Int) (var8 Int) (var9 Heap) (var10 Heap) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (inv_main2 var13) (and (and (and (and (not (<= 0 (+ var12 (- 1)))) (and (not (<= 0 (+ var11 (- 1)))) (and (and (and (and (= var10 (newBatchHeap (batchAlloc var9 (O_Int var8) var7))) (= var11 var6)) (= var12 var7)) (= var5 var4)) (= var3 (newAddrRange (batchAlloc var9 (O_Int var8) var7)))))) (and (and (and (= var9 (newBatchHeap (batchAlloc var13 (O_Int var2) var1))) (= var6 var1)) (= var7 var0)) (= var4 (newAddrRange (batchAlloc var13 (O_Int var2) var1))))) (<= 0 var0)) (<= 0 var1)))) (inv_main14 var10 var11 var12 var5 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main49 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ var1 (* (- 1) var0)) (- 1))) (and (<= 0 (+ (+ var5 (* (- 1) var0)) (- 1))) (<= 0 (+ (+ var4 (* (- 1) var0)) (- 1))))))) (inv_main52 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (not (= var0 0)))) (inv_main21 var5 var4 var3 var2 var1))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main13 var12 var11 var10 var9 var8 var7) (and (<= 0 (+ (+ var6 (* (- 1) (+ var5 1))) (- 1))) (and (and (is-O_UInt (read var12 (nthAddrRange var9 var7))) (is-O_UInt (read var12 (nthAddrRange var9 var7)))) (and (and (and (and (and (= var4 (write var12 (nthAddrRange var9 var7) (O_UInt var3))) (= var6 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var5 var7)))))) (inv_main13 var4 var6 var2 var1 var0 (+ var5 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Heap) (var11 Heap) (var12 Int) (var13 Heap)) (or (not (and (inv_main2 var13) (and (and (and (and (<= 0 (+ var12 (- 1))) (and (and (and (and (= var11 (newBatchHeap (batchAlloc var10 (O_Int var9) var8))) (= var12 var7)) (= var6 var8)) (= var5 var4)) (= var3 (newAddrRange (batchAlloc var10 (O_Int var9) var8))))) (and (and (and (= var10 (newBatchHeap (batchAlloc var13 (O_Int var2) var1))) (= var7 var1)) (= var8 var0)) (= var4 (newAddrRange (batchAlloc var13 (O_Int var2) var1))))) (<= 0 var0)) (<= 0 var1)))) (inv_main13 var11 var12 var6 var5 var3 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main80 var7 var6 var5 var4 var3 var2 var1 var0) (and (or (not (<= 0 (+ (+ var6 (* (- 1) (+ var1 1))) (- 1)))) (not (<= 0 (+ (+ var5 (* (- 1) (+ var1 1))) (- 1))))) (and (is-O_UInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2))))) (not (= var0 (getUInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2))))))))))) (inv_main73 var7 var6 var5 var4 var3 (+ var2 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main80 var7 var6 var5 var4 var3 var2 var1 var0) (and (or (not (<= 0 (+ (+ var6 (* (- 1) (+ var1 1))) (- 1)))) (not (<= 0 (+ (+ var5 (* (- 1) (+ var1 1))) (- 1))))) (and (is-O_UInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2))))) (= var0 (getUInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2)))))))))) (inv_main73 var7 var6 var5 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (and (or (not (<= 0 (+ var4 (- 1)))) (not (<= 0 (+ var3 (- 1))))) (and (<= 0 (+ (+ var3 1) (* (- 1) var4))) (= var0 0))))) (inv_main73 var5 var4 var3 var2 var1 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main49 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ var0 (* (- 1) var1)) (- 1))) (and (not (= var0 var1)) (and (not (<= 0 (+ (+ var1 (* (- 1) var0)) (- 1)))) (and (<= 0 (+ (+ var5 (* (- 1) var0)) (- 1))) (<= 0 (+ (+ var4 (* (- 1) var0)) (- 1))))))))) (inv_main68 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main37 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (or (not (<= 0 (+ (+ var5 (* (- 1) (+ var1 1))) (- 1)))) (not (<= 0 (+ (+ var3 (* (- 1) (+ var1 1))) (- 1))))) (and (is-O_Int (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2))))) (= var0 (getInt (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2)))))))))) (inv_main30 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main37 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (or (not (<= 0 (+ (+ var5 (* (- 1) (+ var1 1))) (- 1)))) (not (<= 0 (+ (+ var3 (* (- 1) (+ var1 1))) (- 1))))) (and (= var2 0) (and (is-O_Int (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2))))) (not (= var0 (getInt (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2)))))))))))) (inv_main30 var11 var10 var9 var8 var7 var6 var5 var4 var3 1))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (inv_main14 var4 var3 var2 var1 var0) (and (or (not (<= 0 (+ var3 (- 1)))) (not (<= 0 (+ var2 (- 1))))) (not (<= 0 (+ (+ var3 (* (- 1) (+ var2 1))) (- 1))))))) (inv_main30 var4 var3 var2 var1 var0 var1 var3 var0 var2 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main60 var6 var5 var4 var3 var2 var1 var0) (is-O_UInt (read var6 (nthAddrRange var3 var0))))) (inv_main62 var6 var5 var4 var3 var2 var1 var0 (getUInt (read var6 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main76 var6 var5 var4 var3 var2 var1 var0) (is-O_UInt (read var6 (nthAddrRange var3 var0))))) (inv_main80 var6 var5 var4 var3 var2 var1 var0 (getUInt (read var6 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main49 var6 var5 var4 var3 var2 var1 var0) (and (= var0 var1) (and (not (<= 0 (+ (+ var1 (* (- 1) var0)) (- 1)))) (and (<= 0 (+ (+ var5 (* (- 1) var0)) (- 1))) (<= 0 (+ (+ var4 (* (- 1) var0)) (- 1)))))))) (inv_main60 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main52 var6 var5 var4 var3 var2 var1 var0) (is-O_UInt (read var6 (nthAddrRange var3 var0))))) (inv_main54 var6 var5 var4 var3 var2 var1 var0 (getUInt (read var6 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main13 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var5 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main13 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var5 (nthAddrRange var2 var0))) (not (within var2 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main13 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var5 (nthAddrRange var2 var0))) (not (is-O_UInt (read var5 (nthAddrRange var2 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main19 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var5 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main19 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var5 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main19 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var5 (nthAddrRange var1 var0))) (not (is-O_UInt (read var5 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Heap)) (not (and (inv_main33 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var10 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Heap)) (not (and (inv_main33 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var5 var0))) (not (within var5 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main37 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main37 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2))))) (not (within var4 (nthAddrRange var4 (+ var1 (* (- 1) var2))))))))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main21 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var2 1) (* (- 1) var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main52 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var6 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main52 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var6 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main54 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var7 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main54 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var7 (nthAddrRange var3 var1))) (not (within var3 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main60 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var6 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main60 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var6 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main62 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var7 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main62 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var7 (nthAddrRange var3 var1))) (not (within var3 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main68 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var6 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main68 var6 var5 var4 var3 var2 var1 var0) (not (within var3 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main68 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var6 (nthAddrRange var2 (+ var0 (- 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main68 var6 var5 var4 var3 var2 var1 var0) (not (within var2 (nthAddrRange var2 (+ var0 (- 1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main68 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var6 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main68 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var6 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main68 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var6 (nthAddrRange var3 var0))) (not (is-O_UInt (read var6 (nthAddrRange var2 (+ var0 (- 1)))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main68 var6 var5 var4 var3 var2 var1 var0) (and (and (is-O_UInt (read var6 (nthAddrRange var3 var0))) (is-O_UInt (read var6 (nthAddrRange var2 (+ var0 (- 1)))))) (not (within var2 (nthAddrRange var2 (+ var0 (- 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main68 var6 var5 var4 var3 var2 var1 var0) (and (and (is-O_UInt (read var6 (nthAddrRange var3 var0))) (is-O_UInt (read var6 (nthAddrRange var2 (+ var0 (- 1)))))) (not (= (getUInt (read var6 (nthAddrRange var3 var0))) (getUInt (read var6 (nthAddrRange var2 (+ var0 (- 1))))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main76 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var6 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main76 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var6 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main80 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main80 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2))))) (not (within var3 (nthAddrRange var3 (+ var1 (* (- 1) var2))))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main81 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var0 (- 1)) (- 1))))))))
(check-sat)