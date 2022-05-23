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
(declare-fun inv_main21 (Heap AddrRange AddrRange Int Int Int AddrRange) Bool)
(declare-fun inv_main22 (Heap AddrRange AddrRange Int Int Int AddrRange) Bool)
(declare-fun inv_main23 (Heap AddrRange AddrRange Int Int Int AddrRange) Bool)
(declare-fun inv_main24 (Heap AddrRange AddrRange Int Int Int AddrRange) Bool)
(declare-fun inv_main26 (Heap AddrRange AddrRange Int Int Int AddrRange Int) Bool)
(declare-fun inv_main3 (Heap AddrRange) Bool)
(declare-fun inv_main33 (Heap AddrRange AddrRange Int Int Int AddrRange) Bool)
(declare-fun inv_main34 (Heap AddrRange AddrRange Int Int Int AddrRange) Bool)
(declare-fun inv_main36 (Heap AddrRange AddrRange Int Int Int AddrRange Int) Bool)
(declare-fun inv_main39 (Heap AddrRange AddrRange Int Int Int AddrRange Int) Bool)
(declare-fun inv_main4 (Heap AddrRange) Bool)
(declare-fun inv_main51 (Heap AddrRange AddrRange Int Int Int AddrRange) Bool)
(declare-fun inv_main56 (Heap AddrRange AddrRange Int Int Int AddrRange) Bool)
(declare-fun inv_main9 (Heap AddrRange Int) Bool)
(assert (forall ((var0 Int) (var1 Heap)) (or (not (= var1 emptyHeap)) (inv_main3 (newBatchHeap (batchAlloc emptyHeap (O_Int var0) 9)) (newAddrRange (batchAlloc emptyHeap (O_Int var0) 9))))))
(assert true)
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main9 var6 var5 var4) (and (not (<= 0 (+ (+ 8 (* (- 1) (+ var3 1))) (- 1)))) (and (and (is-O_Int (read var6 (nthAddrRange var5 var4))) (is-O_Int (read var6 (nthAddrRange var5 var4)))) (and (and (= var2 (write var6 (nthAddrRange var5 var4) (O_Int var1))) (= var0 var5)) (= var3 var4)))))) (inv_main4 var2 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 AddrRange) (var13 AddrRange) (var14 Heap)) (or (not (and (inv_main21 var14 var13 var12 var11 var10 var9 var8) (and (and (not (= var7 0)) (is-O_Int (read var14 (nthAddrRange var12 var10)))) (and (and (and (and (and (and (and (= var6 var14) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var7 (getInt (read var14 (nthAddrRange var12 var10)))))))) (inv_main22 var6 var5 var4 var3 (+ var2 1) var1 var0))))
(assert (forall ((var0 Heap) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 Int) (var8 Heap) (var9 AddrRange) (var10 AddrRange) (var11 Heap)) (or (not (and (inv_main4 var11 var10) (and (and (and (not (= var9 0)) (and (and (and (and (and (and (= var8 (newBatchHeap (batchAlloc emptyHeap (O_Int var7) 2))) (= var6 var5)) (= var9 var5)) (= var4 0)) (= var3 (- 1))) (= var2 (- 1))) (= var1 (newAddrRange (batchAlloc emptyHeap (O_Int var7) 2))))) (and (is-O_Int (read var11 (nthAddrRange var10 8))) (is-O_Int (read var11 (nthAddrRange var10 8))))) (and (= var0 (write var11 (nthAddrRange var10 8) (O_Int 0))) (= var5 var10))))) (inv_main22 var8 var6 var9 var4 (+ var3 1) var2 var1))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main33 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var1 (- 1))) (is-O_Int (read var6 (nthAddrRange var4 var1)))))) (inv_main36 var6 var5 var4 var3 var2 var1 var0 (getInt (read var6 (nthAddrRange var4 var1)))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 Heap)) (or (not (and (inv_main56 var13 var12 var11 var10 var9 var8 var7) (and (and (is-O_Int (read var13 (nthAddrRange var7 (+ (+ var8 (* (- 1) var10)) 1)))) (is-O_Int (read var13 (nthAddrRange var7 (+ (+ var8 (* (- 1) var10)) 1))))) (and (and (and (and (and (and (= var6 (write var13 (nthAddrRange var7 (+ (+ var8 (* (- 1) var10)) 1)) (O_Int 0))) (= var5 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main21 var6 var5 var4 (+ var2 1) var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (or (not (inv_main51 var6 var5 var4 var3 var2 var1 var0)) (inv_main56 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 AddrRange) (var13 AddrRange) (var14 Heap) (var15 Int) (var16 Int) (var17 AddrRange) (var18 Int) (var19 Int) (var20 Int) (var21 AddrRange) (var22 AddrRange) (var23 Heap)) (or (not (and (inv_main26 var23 var22 var21 var20 var19 var18 var17 var16) (and (and (= var15 0) (and (and (not (= var16 32)) (is-O_Int (read var23 (nthAddrRange var21 var20)))) (and (and (and (and (and (and (and (= var14 var23) (= var13 var22)) (= var12 var21)) (= var11 var20)) (= var10 var19)) (= var9 var18)) (= var8 var17)) (= var7 (getInt (read var23 (nthAddrRange var21 var20))))))) (and (and (and (and (and (and (and (= var6 var14) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (or (and (= var7 9) (= var15 1)) (and (not (= var7 9)) (= var15 0))))))) (inv_main24 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main23 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var6 (nthAddrRange var4 var3))))) (inv_main26 var6 var5 var4 var3 var2 var1 var0 (getInt (read var6 (nthAddrRange var4 var3)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (or (not (and (inv_main39 var7 var6 var5 var4 var3 var2 var1 var0) (= var0 0))) (inv_main34 var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (or (not (and (inv_main39 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var0 0)))) (inv_main33 var7 var6 var5 var4 var3 (+ var2 (- 1)) var1))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 AddrRange) (var13 AddrRange) (var14 Heap)) (or (not (and (inv_main24 var14 var13 var12 var11 var10 var9 var8) (and (and (= var7 34) (is-O_Int (read var14 (nthAddrRange var12 var11)))) (and (and (and (and (and (and (and (= var6 var14) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var7 (getInt (read var14 (nthAddrRange var12 var11)))))))) (inv_main33 var6 var5 var4 (+ var3 1) var2 (+ var2 (- 1)) var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 AddrRange) (var13 AddrRange) (var14 Heap)) (or (not (and (inv_main24 var14 var13 var12 var11 var10 var9 var8) (and (and (not (= var7 34)) (is-O_Int (read var14 (nthAddrRange var12 var11)))) (and (and (and (and (and (and (and (= var6 var14) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var7 (getInt (read var14 (nthAddrRange var12 var11)))))))) (inv_main33 var6 var5 var4 var3 var2 (+ var2 (- 1)) var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main33 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ var1 (- 1)))))) (inv_main39 var6 var5 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (or (not (and (inv_main36 var7 var6 var5 var4 var3 var2 var1 var0) (= var0 32))) (inv_main39 var7 var6 var5 var4 var3 var2 var1 1))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 Heap) (var8 Int) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 AddrRange) (var15 Heap) (var16 Int) (var17 AddrRange) (var18 Int) (var19 Int) (var20 Int) (var21 AddrRange) (var22 AddrRange) (var23 Heap)) (or (not (and (inv_main36 var23 var22 var21 var20 var19 var18 var17 var16) (and (and (and (not (= var16 32)) (is-O_Int (read var23 (nthAddrRange var21 var18)))) (and (and (and (and (and (and (and (= var15 var23) (= var14 var22)) (= var13 var21)) (= var12 var20)) (= var11 var19)) (= var10 var18)) (= var9 var17)) (= var8 (getInt (read var23 (nthAddrRange var21 var18)))))) (and (and (and (and (and (and (and (= var7 var15) (= var6 var14)) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (or (and (= var8 9) (= var0 1)) (and (not (= var8 9)) (= var0 0))))))) (inv_main39 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 Heap) (var8 Int) (var9 Int) (var10 AddrRange) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 AddrRange) (var21 AddrRange) (var22 AddrRange) (var23 AddrRange) (var24 Heap) (var25 Heap) (var26 AddrRange) (var27 Int) (var28 Int) (var29 Int) (var30 AddrRange) (var31 AddrRange) (var32 Heap)) (or (not (and (inv_main34 var32 var31 var30 var29 var28 var27 var26) (and (and (and (and (and (and (and (and (and (and (and (= var25 var24) (= var23 var22)) (= var21 var20)) (= var19 var18)) (= var17 var16)) (= var15 (+ var14 (- 1)))) (= var13 var12)) (= var11 var12)) (= var10 (AddrRange (nthAddrRange var20 var18) (+ (AddrRangeSize var20) (* (- 1) var18))))) (= var9 (+ (+ (+ var14 (- 1)) (* (- 1) var18)) 1))) (and (not (<= 0 (+ (+ (+ (+ var14 (- 1)) (* (- 1) var18)) 1) (- 2)))) (<= 0 (+ (+ var14 (- 1)) (* (- 1) var18))))) (and (and (not (= var8 0)) (and (and (<= 0 (+ var27 (- 1))) (is-O_Int (read var32 (nthAddrRange var30 var27)))) (and (and (and (and (and (and (and (= var7 var32) (= var6 var31)) (= var5 var30)) (= var4 var29)) (= var3 var28)) (= var2 var27)) (= var1 var26)) (= var0 (getInt (read var32 (nthAddrRange var30 var27))))))) (and (and (and (and (and (and (and (= var24 var7) (= var22 var6)) (= var20 var5)) (= var18 var4)) (= var16 var3)) (= var14 var2)) (= var12 var1)) (or (and (= var0 34) (= var8 1)) (and (not (= var0 34)) (= var8 0)))))))) (inv_main51 var25 var23 var21 var19 var17 var15 var13))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Heap) (var10 AddrRange) (var11 Int) (var12 Int) (var13 Int) (var14 AddrRange) (var15 AddrRange) (var16 Heap)) (or (not (and (inv_main34 var16 var15 var14 var13 var12 var11 var10) (and (and (and (and (and (and (and (and (and (and (and (= var9 var16) (= var8 var15)) (= var7 var14)) (= var6 var13)) (= var5 var12)) (= var4 var11)) (= var3 var10)) (= var2 var10)) (= var1 (AddrRange (nthAddrRange var14 var13) (+ (AddrRangeSize var14) (* (- 1) var13))))) (= var0 (+ (+ var11 (* (- 1) var13)) 1))) (and (not (<= 0 (+ (+ (+ var11 (* (- 1) var13)) 1) (- 2)))) (<= 0 (+ var11 (* (- 1) var13))))) (not (<= 0 (+ var11 (- 1))))))) (inv_main51 var9 var8 var7 var6 var5 var4 var3))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 Heap) (var8 Int) (var9 Int) (var10 AddrRange) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 AddrRange) (var21 AddrRange) (var22 AddrRange) (var23 AddrRange) (var24 Heap) (var25 Heap) (var26 AddrRange) (var27 Int) (var28 Int) (var29 Int) (var30 AddrRange) (var31 AddrRange) (var32 Heap)) (or (not (and (inv_main34 var32 var31 var30 var29 var28 var27 var26) (and (and (and (and (and (and (and (and (and (and (and (= var25 var24) (= var23 var22)) (= var21 var20)) (= var19 var18)) (= var17 var16)) (= var15 var14)) (= var13 var12)) (= var11 var12)) (= var10 (AddrRange (nthAddrRange var20 var18) (+ (AddrRangeSize var20) (* (- 1) var18))))) (= var9 (+ (+ var14 (* (- 1) var18)) 1))) (and (not (<= 0 (+ (+ (+ var14 (* (- 1) var18)) 1) (- 2)))) (<= 0 (+ var14 (* (- 1) var18))))) (and (and (= var8 0) (and (and (<= 0 (+ var27 (- 1))) (is-O_Int (read var32 (nthAddrRange var30 var27)))) (and (and (and (and (and (and (and (= var7 var32) (= var6 var31)) (= var5 var30)) (= var4 var29)) (= var3 var28)) (= var2 var27)) (= var1 var26)) (= var0 (getInt (read var32 (nthAddrRange var30 var27))))))) (and (and (and (and (and (and (and (= var24 var7) (= var22 var6)) (= var20 var5)) (= var18 var4)) (= var16 var3)) (= var14 var2)) (= var12 var1)) (or (and (= var0 34) (= var8 1)) (and (not (= var0 34)) (= var8 0)))))))) (inv_main51 var25 var23 var21 var19 var17 var15 var13))))
(assert (forall ((var0 AddrRange) (var1 Heap)) (or (not (inv_main3 var1 var0)) (inv_main9 var1 var0 0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main9 var6 var5 var4) (and (<= 0 (+ (+ 8 (* (- 1) (+ var3 1))) (- 1))) (and (and (is-O_Int (read var6 (nthAddrRange var5 var4))) (is-O_Int (read var6 (nthAddrRange var5 var4)))) (and (and (= var2 (write var6 (nthAddrRange var5 var4) (O_Int var1))) (= var0 var5)) (= var3 var4)))))) (inv_main9 var2 var0 (+ var3 1)))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var4 var2))) (= (getInt (read var6 (nthAddrRange var4 var2))) 0)))) (inv_main23 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (or (not (and (inv_main26 var7 var6 var5 var4 var3 var2 var1 var0) (= var0 32))) (inv_main23 var7 var6 var5 (+ var4 1) var3 var2 var1))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 AddrRange) (var13 AddrRange) (var14 Heap) (var15 Int) (var16 Int) (var17 AddrRange) (var18 Int) (var19 Int) (var20 Int) (var21 AddrRange) (var22 AddrRange) (var23 Heap)) (or (not (and (inv_main26 var23 var22 var21 var20 var19 var18 var17 var16) (and (and (not (= var15 0)) (and (and (not (= var16 32)) (is-O_Int (read var23 (nthAddrRange var21 var20)))) (and (and (and (and (and (and (and (= var14 var23) (= var13 var22)) (= var12 var21)) (= var11 var20)) (= var10 var19)) (= var9 var18)) (= var8 var17)) (= var7 (getInt (read var23 (nthAddrRange var21 var20))))))) (and (and (and (and (and (and (and (= var6 var14) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (or (and (= var7 9) (= var15 1)) (and (not (= var7 9)) (= var15 0))))))) (inv_main23 var6 var5 var4 (+ var3 1) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main9 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main9 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main9 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (is-O_Int (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 AddrRange) (var1 Heap)) (not (and (inv_main4 var1 var0) (not (is-O_Int (read var1 (nthAddrRange var0 8))))))))
(assert (forall ((var0 AddrRange) (var1 Heap)) (not (and (inv_main4 var1 var0) (and (is-O_Int (read var1 (nthAddrRange var0 8))) (not (within var0 (nthAddrRange var0 8))))))))
(assert (forall ((var0 AddrRange) (var1 Heap)) (not (and (inv_main4 var1 var0) (and (is-O_Int (read var1 (nthAddrRange var0 8))) (not (is-O_Int (read var1 (nthAddrRange var0 8)))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var4 var2))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var4 var2))) (not (within var4 (nthAddrRange var4 var2))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main23 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var4 var3))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main23 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var4 var3))) (not (within var4 (nthAddrRange var4 var3))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main26 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var0 32)) (not (is-O_Int (read var7 (nthAddrRange var5 var4)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main26 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var0 32)) (is-O_Int (read var7 (nthAddrRange var5 var4)))) (not (within var5 (nthAddrRange var5 var4))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main24 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var4 var3))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main24 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var4 var3))) (not (within var4 (nthAddrRange var4 var3))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main33 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var1 (- 1))) (not (is-O_Int (read var6 (nthAddrRange var4 var1)))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main33 var6 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ var1 (- 1))) (is-O_Int (read var6 (nthAddrRange var4 var1)))) (not (within var4 (nthAddrRange var4 var1))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main36 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var0 32)) (not (is-O_Int (read var7 (nthAddrRange var5 var2)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main36 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var0 32)) (is-O_Int (read var7 (nthAddrRange var5 var2)))) (not (within var5 (nthAddrRange var5 var2))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main34 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var1 (- 1))) (not (is-O_Int (read var6 (nthAddrRange var4 var1)))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main34 var6 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ var1 (- 1))) (is-O_Int (read var6 (nthAddrRange var4 var1)))) (not (within var4 (nthAddrRange var4 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main51 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ 2 (* (- 1) (+ (+ var1 (* (- 1) var3)) 1))) (- 1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main56 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var0 (+ (+ var1 (* (- 1) var3)) 1)))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main56 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var0 (+ (+ var1 (* (- 1) var3)) 1)))) (not (within var0 (nthAddrRange var0 (+ (+ var1 (* (- 1) var3)) 1)))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main56 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var0 (+ (+ var1 (* (- 1) var3)) 1)))) (not (is-O_Int (read var6 (nthAddrRange var0 (+ (+ var1 (* (- 1) var3)) 1))))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var4 var2))) (not (= (getInt (read var6 (nthAddrRange var4 var2))) 0)))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main21 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var4 var2))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main21 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var4 var2))) (not (within var4 (nthAddrRange var4 var2))))))))
(check-sat)
