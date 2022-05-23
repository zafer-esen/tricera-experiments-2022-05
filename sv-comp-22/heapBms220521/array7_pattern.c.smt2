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
(declare-fun inv_main2 (Heap Int) Bool)
(declare-fun inv_main20 (Heap Int AddrRange AddrRange Int Int Int Int Int Int) Bool)
(declare-fun inv_main22 (Heap Int AddrRange AddrRange Int Int Int Int Int Int) Bool)
(declare-fun inv_main35 (Heap Int AddrRange AddrRange Int Int Int Int Int Int) Bool)
(declare-fun inv_main43 (Heap Int AddrRange AddrRange Int Int Int Int Int Int) Bool)
(declare-fun inv_main44 (Heap Int AddrRange AddrRange Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main45 (Heap Int AddrRange AddrRange Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main47 (Heap Int AddrRange AddrRange Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main48 (Heap Int AddrRange AddrRange Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main53 (Heap Int AddrRange AddrRange Int Int Int Int Int Int) Bool)
(declare-fun inv_main55 (Heap Int AddrRange AddrRange Int Int Int Int Int Int) Bool)
(declare-fun inv_main57 (Heap Int AddrRange AddrRange Int Int Int Int Int Int Int) Bool)
(assert (inv_main2 emptyHeap 0))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (or (not (and (inv_main45 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var8 var2))) (is-O_Int (read var10 (nthAddrRange var8 var2)))))) (inv_main43 (write var10 (nthAddrRange var8 var2) (O_Int var0)) var9 var8 var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (or (not (and (inv_main55 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var9 (nthAddrRange var7 var5))))) (inv_main57 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 (+ var3 (getInt (read var9 (nthAddrRange var7 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 AddrRange) (var19 AddrRange) (var20 Int) (var21 Heap)) (or (not (and (inv_main48 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11) (and (not (<= 0 (+ var10 (- 1)))) (and (= var9 0) (and (and (is-O_Int (read var21 (nthAddrRange var18 var13))) (is-O_Int (read var21 (nthAddrRange var18 var13)))) (and (and (and (and (and (and (and (and (and (= var8 (write var21 (nthAddrRange var18 var13) (O_Int var11))) (= var10 var20)) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12))))))) (inv_main53 var8 var10 var7 var6 0 var4 var3 var9 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 AddrRange) (var19 AddrRange) (var20 Int) (var21 Heap)) (or (not (and (inv_main57 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11) (and (not (<= 0 (+ (+ var10 (* (- 1) (+ var9 1))) (- 1)))) (and (is-O_Int (read var21 (nthAddrRange var18 var17))) (and (and (and (and (and (and (and (and (and (and (= var8 var21) (= var10 var20)) (= var7 var19)) (= var6 var18)) (= var9 var17)) (= var5 var16)) (= var4 var15)) (= var3 var14)) (= var2 var13)) (= var1 var12)) (= var0 (+ var11 (getInt (read var21 (nthAddrRange var18 var17)))))))))) (inv_main53 var8 var10 var7 var6 (+ var9 1) var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 AddrRange) (var10 AddrRange) (var11 Int) (var12 Heap) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 AddrRange) (var25 AddrRange) (var26 AddrRange) (var27 AddrRange) (var28 Int) (var29 Int) (var30 Heap) (var31 Heap) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Int) (var40 Int) (var41 Int) (var42 AddrRange) (var43 AddrRange) (var44 Int) (var45 Heap)) (or (not (and (inv_main48 var45 var44 var43 var42 var41 var40 var39 var38 var37 var36 var35) (and (and (and (and (not (= var34 0)) (<= 0 (+ var33 (* (- 1) var32)))) (and (and (and (and (and (and (and (and (and (and (= var31 var30) (= var29 var28)) (= var27 var26)) (= var25 var24)) (= var23 var22)) (= var21 var20)) (= var19 var18)) (= var17 var16)) (= var15 var33)) (= var14 var32)) (or (and (<= 0 (+ (+ (+ var28 (* (- 1) var32)) (* (- 1) var33)) (- 1))) (= var34 1)) (and (not (<= 0 (+ (+ (+ var28 (* (- 1) var32)) (* (- 1) var33)) (- 1)))) (= var34 0))))) (and (not (= var13 0)) (and (and (and (and (and (and (and (and (and (and (= var30 var12) (= var28 var11)) (= var26 var10)) (= var24 var9)) (= var22 var8)) (= var20 var7)) (= var18 var6)) (= var16 var5)) (= var33 var4)) (= var32 var3)) (or (and (<= 0 (+ var3 (- 1))) (= var13 1)) (and (not (<= 0 (+ var3 (- 1)))) (= var13 0)))))) (and (not (= var5 0)) (and (and (is-O_Int (read var45 (nthAddrRange var42 var37))) (is-O_Int (read var45 (nthAddrRange var42 var37)))) (and (and (and (and (and (and (and (and (and (= var12 (write var45 (nthAddrRange var42 var37) (O_Int var35))) (= var11 var44)) (= var10 var43)) (= var9 var42)) (= var8 var41)) (= var7 var40)) (= var6 var39)) (= var2 var38)) (= var1 var37)) (= var0 var36))))))) (inv_main35 var31 var29 var27 var25 var23 var21 var19 var17 var15 var14))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 Int) (var11 Heap) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 AddrRange) (var24 AddrRange) (var25 AddrRange) (var26 AddrRange) (var27 Int) (var28 Int) (var29 Heap) (var30 Heap) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Int) (var40 AddrRange) (var41 AddrRange) (var42 Int) (var43 Heap)) (or (not (and (inv_main22 var43 var42 var41 var40 var39 var38 var37 var36 var35 var34) (and (and (and (and (not (= var33 0)) (<= 0 (+ var32 (* (- 1) var31)))) (and (and (and (and (and (and (and (and (and (and (= var30 var29) (= var28 var27)) (= var26 var25)) (= var24 var23)) (= var22 var21)) (= var20 var19)) (= var18 var17)) (= var16 var15)) (= var14 var32)) (= var13 var31)) (or (and (<= 0 (+ (+ (+ var27 (* (- 1) var31)) (* (- 1) var32)) (- 1))) (= var33 1)) (and (not (<= 0 (+ (+ (+ var27 (* (- 1) var31)) (* (- 1) var32)) (- 1)))) (= var33 0))))) (and (not (= var12 0)) (and (and (and (and (and (and (and (and (and (and (= var29 var11) (= var27 var10)) (= var25 var9)) (= var23 var8)) (= var21 (+ var7 1))) (= var19 var6)) (= var17 var5)) (= var15 var4)) (= var32 var3)) (= var31 var2)) (or (and (<= 0 (+ var2 (- 1))) (= var12 1)) (and (not (<= 0 (+ var2 (- 1)))) (= var12 0)))))) (and (not (<= 0 (+ (+ var10 (* (- 1) (+ var7 1))) (- 1)))) (and (and (is-O_Int (read var43 (nthAddrRange var40 var39))) (is-O_Int (read var43 (nthAddrRange var40 var39)))) (and (and (and (and (and (and (and (and (and (= var11 (write var43 (nthAddrRange var40 var39) (O_Int (* var38 var39)))) (= var10 var42)) (= var9 var41)) (= var8 var40)) (= var7 var39)) (= var6 var38)) (= var5 var37)) (= var4 var36)) (= var1 var35)) (= var0 var34))))))) (inv_main35 var30 var28 var26 var24 var22 var20 var18 var16 var14 var13))))
(assert (forall ((var0 Int) (var1 Heap) (var2 Int) (var3 Int) (var4 Int) (var5 Heap) (var6 AddrRange) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 AddrRange) (var13 AddrRange) (var14 Int) (var15 Heap) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 AddrRange) (var28 AddrRange) (var29 AddrRange) (var30 AddrRange) (var31 Int) (var32 Int) (var33 Heap) (var34 Heap) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Heap)) (or (not (and (inv_main2 var39 var38) (and (and (and (and (not (= var37 0)) (<= 0 (+ var36 (* (- 1) var35)))) (and (and (and (and (and (and (and (and (and (and (= var34 var33) (= var32 var31)) (= var30 var29)) (= var28 var27)) (= var26 var25)) (= var24 var23)) (= var22 var21)) (= var20 var19)) (= var18 var36)) (= var17 var35)) (or (and (<= 0 (+ (+ (+ var31 (* (- 1) var35)) (* (- 1) var36)) (- 1))) (= var37 1)) (and (not (<= 0 (+ (+ (+ var31 (* (- 1) var35)) (* (- 1) var36)) (- 1)))) (= var37 0))))) (and (not (= var16 0)) (and (and (and (and (and (and (and (and (and (and (= var33 var15) (= var31 var14)) (= var29 var13)) (= var27 var12)) (= var25 0)) (= var23 (- 1))) (= var21 0)) (= var19 var11)) (= var36 var10)) (= var35 var9)) (or (and (<= 0 (+ var9 (- 1))) (= var16 1)) (and (not (<= 0 (+ var9 (- 1)))) (= var16 0)))))) (and (and (and (not (<= 0 (+ var14 (- 1)))) (and (and (and (= var15 (newBatchHeap (batchAlloc emptyHeap (O_Int var8) var7))) (= var14 var7)) (= var13 var6)) (= var12 (newAddrRange (batchAlloc emptyHeap (O_Int var8) var7))))) (and (and (= var5 (newBatchHeap (batchAlloc emptyHeap (O_Int var4) var3))) (= var7 var3)) (= var6 (newAddrRange (batchAlloc emptyHeap (O_Int var4) var3))))) (and (not (= var2 0)) (and (and (= var1 var39) (= var3 var0)) (or (and (<= 0 (+ var0 (- 1))) (= var2 1)) (and (not (<= 0 (+ var0 (- 1)))) (= var2 0))))))))) (inv_main35 var34 var32 var30 var28 var26 var24 var22 var20 var18 var17))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 AddrRange) (var19 AddrRange) (var20 Int) (var21 Heap)) (or (not (and (inv_main48 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11) (and (<= 0 (+ var10 (- 1))) (and (= var9 0) (and (and (is-O_Int (read var21 (nthAddrRange var18 var13))) (is-O_Int (read var21 (nthAddrRange var18 var13)))) (and (and (and (and (and (and (and (and (and (= var8 (write var21 (nthAddrRange var18 var13) (O_Int var11))) (= var10 var20)) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12))))))) (inv_main55 var8 var10 var7 var6 0 var4 var3 var9 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 AddrRange) (var19 AddrRange) (var20 Int) (var21 Heap)) (or (not (and (inv_main57 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11) (and (<= 0 (+ (+ var10 (* (- 1) (+ var9 1))) (- 1))) (and (is-O_Int (read var21 (nthAddrRange var18 var17))) (and (and (and (and (and (and (and (and (and (and (= var8 var21) (= var10 var20)) (= var7 var19)) (= var6 var18)) (= var9 var17)) (= var5 var16)) (= var4 var15)) (= var3 var14)) (= var2 var13)) (= var1 var12)) (= var0 (+ var11 (getInt (read var21 (nthAddrRange var18 var17)))))))))) (inv_main55 var8 var10 var7 var6 (+ var9 1) var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (or (not (and (inv_main35 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var9 (nthAddrRange var7 (+ var1 (* (- 1) var0))))))) (inv_main44 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var9 (nthAddrRange var7 (+ var1 (* (- 1) var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (or (not (and (inv_main20 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var9 (nthAddrRange var7 var5))) (is-O_Int (read var9 (nthAddrRange var7 var5)))))) (inv_main22 (write var9 (nthAddrRange var7 var5) (O_Int (* var4 (* var4 var5)))) var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (or (not (and (inv_main47 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var10 (nthAddrRange var7 (+ var2 var1)))))) (inv_main48 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var0 (getInt (read var10 (nthAddrRange var7 (+ var2 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (or (not (and (inv_main43 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var9 (nthAddrRange var6 (+ var1 (* (- 1) var0))))))) (inv_main47 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var9 (nthAddrRange var6 (+ var1 (* (- 1) var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 Heap) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 AddrRange) (var17 AddrRange) (var18 Int) (var19 Heap)) (or (not (and (inv_main22 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (<= 0 (+ (+ var9 (* (- 1) (+ var8 1))) (- 1))) (and (and (is-O_Int (read var19 (nthAddrRange var16 var15))) (is-O_Int (read var19 (nthAddrRange var16 var15)))) (and (and (and (and (and (and (and (and (and (= var7 (write var19 (nthAddrRange var16 var15) (O_Int (* var14 var15)))) (= var9 var18)) (= var6 var17)) (= var5 var16)) (= var8 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)))))) (inv_main20 var7 var9 var6 var5 (+ var8 1) var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Heap) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (inv_main2 var17 var16) (and (and (and (<= 0 (+ var15 (- 1))) (and (and (and (= var14 (newBatchHeap (batchAlloc emptyHeap (O_Int var13) var12))) (= var15 var12)) (= var11 var10)) (= var9 (newAddrRange (batchAlloc emptyHeap (O_Int var13) var12))))) (and (and (= var8 (newBatchHeap (batchAlloc emptyHeap (O_Int var7) var6))) (= var12 var6)) (= var10 (newAddrRange (batchAlloc emptyHeap (O_Int var7) var6))))) (and (not (= var5 0)) (and (and (= var4 var17) (= var6 var3)) (or (and (<= 0 (+ var3 (- 1))) (= var5 1)) (and (not (<= 0 (+ var3 (- 1)))) (= var5 0)))))))) (inv_main20 var14 var15 var11 var9 0 (- 1) 0 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (or (not (and (inv_main44 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var10 (nthAddrRange var8 (+ var2 var1)))))) (inv_main45 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var0 (getInt (read var10 (nthAddrRange var8 (+ var2 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (inv_main20 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var9 (nthAddrRange var7 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (inv_main20 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var9 (nthAddrRange var7 var5))) (not (within var7 (nthAddrRange var7 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (inv_main20 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var9 (nthAddrRange var7 var5))) (not (is-O_Int (read var9 (nthAddrRange var7 var5)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (inv_main22 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var9 (nthAddrRange var6 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (inv_main22 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var9 (nthAddrRange var6 var5))) (not (within var6 (nthAddrRange var6 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (inv_main22 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var9 (nthAddrRange var6 var5))) (not (is-O_Int (read var9 (nthAddrRange var6 var5)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (inv_main35 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var9 (nthAddrRange var7 (+ var1 (* (- 1) var0))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (inv_main35 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var9 (nthAddrRange var7 (+ var1 (* (- 1) var0))))) (not (within var7 (nthAddrRange var7 (+ var1 (* (- 1) var0))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (inv_main44 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var10 (nthAddrRange var8 (+ var2 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (inv_main44 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var8 (+ var2 var1)))) (not (within var8 (nthAddrRange var8 (+ var2 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (inv_main45 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var10 (nthAddrRange var8 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (inv_main45 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var8 var2))) (not (within var8 (nthAddrRange var8 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (inv_main45 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var8 var2))) (not (is-O_Int (read var10 (nthAddrRange var8 var2)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (inv_main43 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var9 (nthAddrRange var6 (+ var1 (* (- 1) var0))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (inv_main43 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var9 (nthAddrRange var6 (+ var1 (* (- 1) var0))))) (not (within var6 (nthAddrRange var6 (+ var1 (* (- 1) var0))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (inv_main47 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var10 (nthAddrRange var7 (+ var2 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (inv_main47 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var7 (+ var2 var1)))) (not (within var7 (nthAddrRange var7 (+ var2 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (inv_main48 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var10 (nthAddrRange var7 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (inv_main48 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var7 var2))) (not (within var7 (nthAddrRange var7 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (inv_main48 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var7 var2))) (not (is-O_Int (read var10 (nthAddrRange var7 var2)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (inv_main55 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var9 (nthAddrRange var7 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (inv_main55 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var9 (nthAddrRange var7 var5))) (not (within var7 (nthAddrRange var7 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (inv_main57 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var10 (nthAddrRange var7 var6))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (inv_main57 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var7 var6))) (not (within var7 (nthAddrRange var7 var6))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (inv_main53 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var3 0))))))
(check-sat)
