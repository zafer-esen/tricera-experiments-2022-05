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
(declare-fun inv_main10 (Heap Int Int Int Int Int Int Int AddrRange) Bool)
(declare-fun inv_main24 (Heap Int Int Int Int Int Int Int AddrRange) Bool)
(declare-fun inv_main39 (Heap Int Int Int Int Int Int Int AddrRange) Bool)
(declare-fun inv_main4 (Heap Int Int Int Int Int Int Int AddrRange) Bool)
(declare-fun inv_main40 (Heap Int Int Int Int Int Int Int AddrRange) Bool)
(declare-fun inv_main43 (Heap Int Int Int Int Int Int Int AddrRange) Bool)
(declare-fun inv_main46 (Heap Int Int Int Int Int Int Int AddrRange AddrRange Int) Bool)
(declare-fun inv_main59 (Heap Int Int Int Int Int Int Int AddrRange) Bool)
(declare-fun inv_main61 (Heap Int Int Int Int Int Int Int AddrRange) Bool)
(declare-fun inv_main9 (Heap Int Int Int Int Int Int Int AddrRange) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (or (not (= var8 emptyHeap)) (inv_main4 (newBatchHeap (batchAlloc emptyHeap (O_Int var7) 1000)) var6 var5 var4 var3 var2 var1 var0 (newAddrRange (batchAlloc emptyHeap (O_Int var7) 1000))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (inv_main43 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var8 (nthAddrRange var0 var7))))) (inv_main46 var8 var7 var6 var5 var4 var3 var2 var1 var0 (AddrRange (nthAddrRange var0 var7) (+ (AddrRangeSize var0) (* (- 1) var7))) var7))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 AddrRange) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Heap)) (or (not (and (inv_main40 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (and (= var9 1) (is-O_Int (read var18 (nthAddrRange var10 var17)))) (and (and (and (and (and (and (and (and (and (= var8 var18) (= var7 var17)) (= var6 var16)) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var9 (getInt (read var18 (nthAddrRange var10 var17)))))))) (inv_main43 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 AddrRange) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Heap)) (or (not (and (inv_main39 var20 var19 var18 var17 var16 var15 var14 var13 var12) (and (<= 0 (+ var11 (- 1))) (and (not (<= 0 (+ (+ var11 (- 20)) (- 1)))) (and (<= 0 var11) (and (= var10 (- 1)) (and (and (= var9 0) (is-O_Int (read var20 (nthAddrRange var12 var18)))) (and (and (and (and (and (and (and (and (and (= var8 var20) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12)) (= var9 (getInt (read var20 (nthAddrRange var12 var18)))))))))))) (inv_main61 var8 var7 var6 var10 var4 var3 var2 var11 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (inv_main24 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (not (= var0 (- 1))) (and (and (not (= var0 0)) (not (= var0 1))) (<= 0 (+ (+ var4 (* (- 1) var5)) (- 1))))))) (inv_main39 var9 var8 0 var0 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Heap) (var12 Int) (var13 AddrRange) (var14 AddrRange) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Heap)) (or (not (and (inv_main46 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12) (and (is-O_Int (read var22 (nthAddrRange var14 (+ var12 1)))) (and (and (and (and (and (and (and (and (and (and (and (= var11 var22) (= var10 var21)) (= var9 var20)) (= var8 var19)) (= var7 var18)) (= var6 var17)) (= var5 var16)) (= var4 var15)) (= var3 var14)) (= var2 var13)) (= var1 (AddrRange (nthAddrRange var14 (+ var12 1)) (+ (AddrRangeSize var14) (* (- 1) (+ var12 1)))))) (= var0 1001))))) (inv_main39 var11 var10 (+ var9 1) var8 var7 var6 var5 var4 var3))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 AddrRange) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Heap)) (or (not (and (inv_main40 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (and (not (= var9 1)) (is-O_Int (read var18 (nthAddrRange var10 var17)))) (and (and (and (and (and (and (and (and (and (= var8 var18) (= var7 var17)) (= var6 var16)) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var9 (getInt (read var18 (nthAddrRange var10 var17)))))))) (inv_main39 var8 var7 (+ var6 1) var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (inv_main59 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (is-O_Int (read var17 (nthAddrRange var9 var16))) (is-O_Int (read var17 (nthAddrRange var9 var16)))) (and (and (and (and (and (and (and (and (= var8 (write var17 (nthAddrRange var9 var16) (O_Int 0))) (= var7 var16)) (= var6 var15)) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9))))) (inv_main24 var8 var7 var6 var5 (+ var4 1) var3 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (inv_main61 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (is-O_Int (read var17 (nthAddrRange var9 var16))) (is-O_Int (read var17 (nthAddrRange var9 var16)))) (and (and (and (and (and (and (and (and (= var8 (write var17 (nthAddrRange var9 var16) (O_Int (- 1)))) (= var7 var16)) (= var6 var15)) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9))))) (inv_main24 var8 var7 var6 var5 (+ var4 1) var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (inv_main24 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (= var0 (- 1)) (and (and (not (= var0 0)) (not (= var0 1))) (<= 0 (+ (+ var4 (* (- 1) var5)) (- 1))))))) (inv_main24 var9 var8 var7 var0 (+ var5 1) var4 var0 var2 var1))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Heap)) (or (not (and (inv_main39 var19 var18 var17 var16 var15 var14 var13 var12 var11) (and (not (= var10 (- 1))) (and (and (= var9 0) (is-O_Int (read var19 (nthAddrRange var11 var17)))) (and (and (and (and (and (and (and (and (and (= var8 var19) (= var7 var18)) (= var6 var17)) (= var5 var16)) (= var4 var15)) (= var3 var14)) (= var2 var13)) (= var1 var12)) (= var0 var11)) (= var9 (getInt (read var19 (nthAddrRange var11 var17))))))))) (inv_main24 var8 var7 var6 var10 (+ var4 1) var3 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 AddrRange) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Heap)) (or (not (and (inv_main39 var20 var19 var18 var17 var16 var15 var14 var13 var12) (and (not (<= 0 (+ var11 (- 1)))) (and (not (<= 0 (+ (+ var11 (- 20)) (- 1)))) (and (<= 0 var11) (and (= var10 (- 1)) (and (and (= var9 0) (is-O_Int (read var20 (nthAddrRange var12 var18)))) (and (and (and (and (and (and (and (and (and (= var8 var20) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12)) (= var9 (getInt (read var20 (nthAddrRange var12 var18)))))))))))) (inv_main24 var8 var7 var6 var10 (+ var4 1) var3 var2 var11 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (inv_main24 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (and (not (<= 0 (+ (* (- 1) var1) (- 1)))) (and (= var0 0) (<= 0 (+ (+ 1000 (* (- 1) (+ var9 1))) (- 1))))) (not (<= 0 (+ (+ var5 (* (- 1) var6)) (- 1))))))) (inv_main24 var10 (+ var9 1) var8 var0 0 var1 var4 var3 var2))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 AddrRange) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Heap)) (or (not (and (inv_main9 var20 var19 var18 var17 var16 var15 var14 var13 var12) (and (and (not (<= 0 (+ (* (- 1) var11) (- 1)))) (= var10 0)) (and (not (<= 0 (+ (+ 1000 (* (- 1) (+ var9 1))) (- 1)))) (and (and (is-O_Int (read var20 (nthAddrRange var12 var19))) (is-O_Int (read var20 (nthAddrRange var12 var19)))) (and (and (and (and (and (and (and (and (= var8 (write var20 (nthAddrRange var12 var19) (O_Int var7))) (= var9 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12))))))) (inv_main24 var8 0 var6 var10 0 var11 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (or (not (inv_main4 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main9 var8 0 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 AddrRange) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Heap)) (or (not (and (inv_main9 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (<= 0 (+ (+ 1000 (* (- 1) (+ var9 1))) (- 1))) (and (and (is-O_Int (read var18 (nthAddrRange var10 var17))) (is-O_Int (read var18 (nthAddrRange var10 var17)))) (and (and (and (and (and (and (and (and (= var8 (write var18 (nthAddrRange var10 var17) (O_Int var7))) (= var9 var17)) (= var6 var16)) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)))))) (inv_main9 var8 (+ var9 1) var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 AddrRange) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Heap)) (or (not (and (inv_main39 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (and (not (= var9 0)) (is-O_Int (read var18 (nthAddrRange var10 var16)))) (and (and (and (and (and (and (and (and (and (= var8 var18) (= var7 var17)) (= var6 var16)) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var9 (getInt (read var18 (nthAddrRange var10 var16)))))))) (inv_main40 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 AddrRange) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Heap)) (or (not (and (inv_main39 var20 var19 var18 var17 var16 var15 var14 var13 var12) (and (<= 0 (+ (+ var11 (- 20)) (- 1))) (and (<= 0 var11) (and (= var10 (- 1)) (and (and (= var9 0) (is-O_Int (read var20 (nthAddrRange var12 var18)))) (and (and (and (and (and (and (and (and (and (= var8 var20) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12)) (= var9 (getInt (read var20 (nthAddrRange var12 var18))))))))))) (inv_main59 var8 var7 var6 var10 var4 var3 var2 var11 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (inv_main24 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ (+ 1000 (* (- 1) (+ var7 1))) (- 1)))) (not (<= 0 (+ (+ var3 (* (- 1) var4)) (- 1))))))) (inv_main10 var8 (+ var7 1) var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var0 var7))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var0 var7))) (not (within var0 (nthAddrRange var0 var7))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var0 var7))) (not (is-O_Int (read var8 (nthAddrRange var0 var7)))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main39 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var0 var6))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main39 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var0 var6))) (not (within var0 (nthAddrRange var0 var6))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main40 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var0 var7))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main40 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var0 var7))) (not (within var0 (nthAddrRange var0 var7))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main43 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var0 var7))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main43 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var0 var7))) (not (within var0 (nthAddrRange var0 var7))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Heap)) (not (and (inv_main46 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var10 (nthAddrRange var2 (+ var0 1)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Heap)) (not (and (inv_main46 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var2 (+ var0 1)))) (not (within var2 (nthAddrRange var2 (+ var0 1)))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main59 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var0 var7))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main59 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var0 var7))) (not (within var0 (nthAddrRange var0 var7))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main59 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var0 var7))) (not (is-O_Int (read var8 (nthAddrRange var0 var7)))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main61 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var0 var7))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main61 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var0 var7))) (not (within var0 (nthAddrRange var0 var7))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main61 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var0 var7))) (not (is-O_Int (read var8 (nthAddrRange var0 var7)))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main10 var8 var7 var6 var5 var4 var3 var2 var1 var0) (or (not (<= 0 var4)) (not (<= 0 (+ 1000 (* (- 1) var4)))))))))
(check-sat)
