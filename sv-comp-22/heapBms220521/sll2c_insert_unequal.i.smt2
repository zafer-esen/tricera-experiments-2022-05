(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-heap Heap Addr HeapObject
 defObj
 ((HeapObject 0) (node 0)) (
  (
   (O_Int (getInt Int))
   (O_UInt (getUInt Int))
   (O_Addr (getAddr Addr))
   (O_node (getnode node))
   (defObj)
  )
  (
   (node (next Addr) (data Int))
  )
))
(declare-fun inv_main103 (Heap Int Int Addr Int Int Addr Int Addr) Bool)
(declare-fun inv_main107 (Heap Int Int Addr Int Int Addr Int Addr Addr) Bool)
(declare-fun inv_main110 (Heap Int Int Addr Int Int Addr Int) Bool)
(declare-fun inv_main12 (Heap Int Int Int Int Int Addr) Bool)
(declare-fun inv_main15 (Heap Int Int Int Int Int Addr Int) Bool)
(declare-fun inv_main18 (Heap Int Int Int Int Int Addr) Bool)
(declare-fun inv_main21 (Heap Int Int Int Int Addr Addr) Bool)
(declare-fun inv_main22 (Heap Int Int Int Int Addr Addr) Bool)
(declare-fun inv_main28 (Heap Int Int Int Int Addr Addr Int Addr) Bool)
(declare-fun inv_main31 (Heap Int Int Int Int Addr Addr Int Addr Int) Bool)
(declare-fun inv_main34 (Heap Int Int Int Int Addr Addr Int Addr) Bool)
(declare-fun inv_main36 (Heap Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main4 (Heap Int Int) Bool)
(declare-fun inv_main51 (Heap Int Int Addr Int Int Int Int Int Int Addr) Bool)
(declare-fun inv_main54 (Heap Int Int Addr Int Int Int Int Int Int Addr Int) Bool)
(declare-fun inv_main57 (Heap Int Int Addr Int Int Int Int Int Int Addr) Bool)
(declare-fun inv_main61 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main64 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main67 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main69 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main71 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main72 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main73 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main75 (Heap Int Int Addr Int Int Addr Int) Bool)
(declare-fun inv_main76 (Heap Int Int Addr Int Int Addr Int) Bool)
(declare-fun inv_main78 (Heap Int Int Addr Int Int Addr Int) Bool)
(declare-fun inv_main83 (Heap Int Int Addr Int Int Addr Int) Bool)
(declare-fun inv_main88 (Heap Int Int Addr Int Int Addr Int) Bool)
(declare-fun inv_main91 (Heap Int Int Addr Int Int Addr Int) Bool)
(assert (forall ((var0 Heap)) (or (not (= var0 emptyHeap)) (inv_main4 var0 2 1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Heap) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main91 var16 var15 var14 var13 var12 var11 var10 var9) (and (not (= nullAddr var8)) (and (= (+ var7 1) (+ 1 var6)) (and (= var5 var8) (and (is-O_node (read var16 var10)) (and (and (and (and (and (and (and (and (= var4 var16) (= var6 var15)) (= var3 var14)) (= var8 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var7 var9)) (= var5 (next (getnode (read var16 var10))))))))))) (inv_main103 var4 var6 var3 var8 var2 var1 var5 (+ var7 1) var8))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (inv_main51 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var10 var0)) (is-O_node (read var10 var0))))) (inv_main57 (write var10 var0 (O_node (node nullAddr (data (getnode (read var10 var0)))))) var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Addr) (var8 Addr) (var9 Int) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main78 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (not (= var8 var7)) (not (= (+ var6 1) var5))) (and (is-O_node (read var16 var10)) (and (and (and (and (and (and (and (and (= var4 var16) (= var3 var15)) (= var2 var14)) (= var7 var13)) (= var1 var12)) (= var5 var11)) (= var0 var10)) (= var6 var9)) (= var8 (next (getnode (read var16 var10))))))))) (inv_main75 var4 var3 var2 var7 var1 var5 var8 (+ var6 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Addr) (var18 Int) (var19 Int) (var20 Heap)) (or (not (and (inv_main69 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (is-O_node (read var20 var11)) (is-O_node (read var20 var11))) (and (and (and (and (and (and (and (and (= var8 (write var20 var11 (O_node (node var9 (data (getnode (read var20 var11))))))) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12))))) (inv_main75 var8 var7 var6 var5 var4 var3 var5 0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Addr) (var21 Int) (var22 Int) (var23 Heap)) (or (not (and (inv_main73 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12) (and (and (is-O_node (read var23 var20)) (is-O_node (read var23 var20))) (and (and (and (and (and (and (and (and (and (and (and (= var11 (write var23 var20 (O_node (node var14 (data (getnode (read var23 var20))))))) (= var10 var22)) (= var9 var21)) (= var8 var20)) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12))))) (inv_main75 var11 var10 var9 var2 var7 var6 var2 0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Addr) (var21 Int) (var22 Int) (var23 Heap)) (or (not (and (inv_main72 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12) (and (and (is-O_node (read var23 var14)) (is-O_node (read var23 var14))) (and (and (and (and (and (and (and (and (and (and (and (= var11 (write var23 var14 (O_node (node var14 (data (getnode (read var23 var14))))))) (= var10 var22)) (= var9 var21)) (= var8 var20)) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12))))) (inv_main75 var11 var10 var9 var2 var7 var6 var2 0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main67 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var11 var1)) (is-O_node (read var11 var1))))) (inv_main69 (write var11 var1 (O_node (node var2 (data (getnode (read var11 var1)))))) var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main76 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var1)) (= var3 (data (getnode (read var7 var1))))))) (inv_main83 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (inv_main15 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main15 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 node) (var6 Heap) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (inv_main4 var10 var9 var8) (and (= nullAddr var7) (and (and (and (and (and (and (= var6 (newHeap (alloc var10 (O_node var5)))) (= var4 var9)) (= var3 var8)) (= var2 var9)) (= var1 var8)) (= var0 var8)) (= var7 (newAddr (alloc var10 (O_node var5)))))))) (inv_main15 var6 var4 var3 var2 var1 var0 var7 1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main83 var16 var15 var14 var13 var12 var11 var10 var9) (and (is-O_node (read var16 var10)) (and (and (and (and (and (and (and (and (= var8 var16) (= var7 var15)) (= var6 var14)) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 (next (getnode (read var16 var10)))))))) (inv_main88 var8 var7 var6 var5 var4 var3 var0 (+ var1 1)))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Int) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main91 var16 var15 var14 var13 var12 var11 var10 var9) (and (not (= var8 var7)) (and (is-O_node (read var16 var10)) (and (and (and (and (and (and (and (and (= var6 var16) (= var5 var15)) (= var4 var14)) (= var7 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9)) (= var8 (next (getnode (read var16 var10))))))))) (inv_main88 var6 var5 var4 var7 var3 var2 var8 (+ var0 1)))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main61 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var8 nullAddr)) (and (= var1 nullAddr) (not (<= 0 (+ var3 (- 1)))))))) (inv_main71 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Heap)) (or (not (inv_main31 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main31 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 node) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main21 var16 var15 var14 var13 var12 var11 var10) (and (and (= nullAddr var9) (and (and (and (and (and (and (and (and (= var8 (newHeap (alloc var16 (O_node var7)))) (= var6 var15)) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var12)) (= var9 (newAddr (alloc var16 (O_node var7)))))) (<= 0 (+ (+ var13 (- 1)) (- 1)))))) (inv_main31 var8 var6 var5 var4 var3 var2 var1 var0 var9 1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 node) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main21 var16 var15 var14 var13 var12 var11 var10) (and (and (not (= nullAddr var9)) (and (and (and (and (and (and (and (and (= var8 (newHeap (alloc var16 (O_node var7)))) (= var6 var15)) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var12)) (= var9 (newAddr (alloc var16 (O_node var7)))))) (<= 0 (+ (+ var13 (- 1)) (- 1)))))) (inv_main28 var8 var6 var5 var4 var3 var2 var1 var0 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 node) (var6 Heap) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (inv_main4 var10 var9 var8) (and (not (= nullAddr var7)) (and (and (and (and (and (and (= var6 (newHeap (alloc var10 (O_node var5)))) (= var4 var9)) (= var3 var8)) (= var2 var9)) (= var1 var8)) (= var0 var8)) (= var7 (newAddr (alloc var10 (O_node var5)))))))) (inv_main12 var6 var4 var3 var2 var1 var0 var7))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Addr) (var16 Addr) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 node) (var22 Heap) (var23 Heap) (var24 Addr) (var25 Addr) (var26 Addr) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Heap) (var32 Int)) (or (not (and (inv_main22 var31 var30 var29 var28 var27 var26 var25) (and (and (and (not (= nullAddr var24)) (and (and (and (and (and (and (and (and (and (and (= var23 (newHeap (alloc var22 (O_node var21)))) (= var20 var19)) (= var18 var17)) (= var16 var15)) (= var14 var13)) (= var12 var11)) (= var10 3)) (= var9 var13)) (= var8 var11)) (= var7 var13)) (= var24 (newAddr (alloc var22 (O_node var21)))))) (and (and (and (and (and (= var22 var6) (= var19 var5)) (= var17 var4)) (= var15 var3)) (= var13 5)) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ var5 (* (- 2) var32)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ var5 (* (- 2) var32)))) (- 1)))) (or (not (<= 0 (+ (+ var5 (* (- 2) var32)) (- 1)))) (<= 0 (+ var5 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var5 (* (- 2) var32))) (- 1)))) (<= 0 (+ (* (- 1) var5) (- 1))))) (= var11 var32)))) (and (and (is-O_node (read var31 var25)) (is-O_node (read var31 var25))) (and (and (and (and (and (and (= var6 (write var31 var25 (O_node (node var26 (data (getnode (read var31 var25))))))) (= var5 var30)) (= var4 var29)) (= var2 var28)) (= var1 var27)) (= var3 var26)) (= var0 var25)))))) (inv_main51 var23 var20 var18 var16 var14 var12 var10 var9 var8 var7 var24))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main21 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (- 1)) (- 1)))))) (inv_main22 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main61 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var8 nullAddr) (and (= var1 nullAddr) (not (<= 0 (+ var3 (- 1)))))))) (inv_main72 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main12 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (is-O_node (read var6 var0))))) (inv_main18 (write var6 var0 (O_node (node nullAddr (data (getnode (read var6 var0)))))) var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main71 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var11 var2)) (is-O_node (read var11 var2))))) (inv_main73 (write var11 var2 (O_node (node var8 (data (getnode (read var11 var2)))))) var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (inv_main54 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main54 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Addr) (var16 Addr) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 node) (var22 Heap) (var23 Heap) (var24 Addr) (var25 Addr) (var26 Addr) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Heap) (var32 Int)) (or (not (and (inv_main22 var31 var30 var29 var28 var27 var26 var25) (and (and (and (= nullAddr var24) (and (and (and (and (and (and (and (and (and (and (= var23 (newHeap (alloc var22 (O_node var21)))) (= var20 var19)) (= var18 var17)) (= var16 var15)) (= var14 var13)) (= var12 var11)) (= var10 3)) (= var9 var13)) (= var8 var11)) (= var7 var13)) (= var24 (newAddr (alloc var22 (O_node var21)))))) (and (and (and (and (and (= var22 var6) (= var19 var5)) (= var17 var4)) (= var15 var3)) (= var13 5)) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ var5 (* (- 2) var32)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ var5 (* (- 2) var32)))) (- 1)))) (or (not (<= 0 (+ (+ var5 (* (- 2) var32)) (- 1)))) (<= 0 (+ var5 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var5 (* (- 2) var32))) (- 1)))) (<= 0 (+ (* (- 1) var5) (- 1))))) (= var11 var32)))) (and (and (is-O_node (read var31 var25)) (is-O_node (read var31 var25))) (and (and (and (and (and (and (= var6 (write var31 var25 (O_node (node var26 (data (getnode (read var31 var25))))))) (= var5 var30)) (= var4 var29)) (= var2 var28)) (= var1 var27)) (= var3 var26)) (= var0 var25)))))) (inv_main54 var23 var20 var18 var16 var14 var12 var10 var9 var8 var7 var24 1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (inv_main28 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var8 var0)) (is-O_node (read var8 var0))))) (inv_main34 (write var8 var0 (O_node (node nullAddr (data (getnode (read var8 var0)))))) var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main88 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var1)) (= var5 (data (getnode (read var7 var1))))))) (inv_main91 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main61 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ var3 (- 1))))) (inv_main64 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var0 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main75 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var1)) (not (= var5 (data (getnode (read var7 var1)))))))) (inv_main110 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main76 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var1)) (not (= var3 (data (getnode (read var7 var1)))))))) (inv_main110 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main88 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var1)) (not (= var5 (data (getnode (read var7 var1)))))))) (inv_main110 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Int) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main91 var16 var15 var14 var13 var12 var11 var10 var9) (and (not (= (+ var8 1) (+ 1 var7))) (and (= var6 var5) (and (is-O_node (read var16 var10)) (and (and (and (and (and (and (and (and (= var4 var16) (= var7 var15)) (= var3 var14)) (= var5 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var8 var9)) (= var6 (next (getnode (read var16 var10)))))))))) (inv_main110 var4 var7 var3 var5 var2 var1 var6 (+ var8 1)))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Addr) (var8 Addr) (var9 Int) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main78 var16 var15 var14 var13 var12 var11 var10 var9) (and (or (= var8 var7) (= (+ var6 1) var5)) (and (is-O_node (read var16 var10)) (and (and (and (and (and (and (and (and (= var4 var16) (= var3 var15)) (= var2 var14)) (= var7 var13)) (= var1 var12)) (= var5 var11)) (= var0 var10)) (= var6 var9)) (= var8 (next (getnode (read var16 var10))))))))) (inv_main76 var4 var3 var2 var7 var1 var5 var8 (+ var6 1)))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Addr) (var10 Int) (var11 Addr) (var12 Addr) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (inv_main34 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (is-O_node (read var17 var9)) (is-O_node (read var17 var9))) (and (and (and (and (and (and (and (and (= var8 (write var17 var9 (O_node (node (next (getnode (read var17 var9))) var10)))) (= var7 var16)) (= var6 var15)) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9))))) (inv_main36 var8 var7 var6 var5 var4 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Addr) (var10 Int) (var11 Int) (var12 Heap) (var13 Addr) (var14 Addr) (var15 Addr) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Addr) (var22 Int) (var23 Int) (var24 Heap)) (or (not (and (inv_main64 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13) (and (is-O_node (read var24 var13)) (and (and (and (and (and (and (and (and (and (and (and (and (= var12 var24) (= var11 var23)) (= var10 var22)) (= var9 var21)) (= var8 var20)) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 (next (getnode (read var24 var13)))))))) (inv_main61 var12 var11 var10 var9 var8 var7 var6 var5 (+ var4 (- 1)) var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Addr) (var15 Addr) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Heap) (var21 Heap) (var22 Addr) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Addr) (var30 Int) (var31 Int) (var32 Heap)) (or (not (and (inv_main57 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22) (and (and (and (and (and (and (and (and (and (and (and (= var21 var20) (= var19 var18)) (= var17 var16)) (= var15 var14)) (= var13 var12)) (= var11 var10)) (= var9 var8)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 nullAddr)) (and (and (is-O_node (read var32 var22)) (is-O_node (read var32 var22))) (and (and (and (and (and (and (and (and (and (and (= var20 (write var32 var22 (O_node (node (next (getnode (read var32 var22))) var23)))) (= var18 var31)) (= var16 var30)) (= var14 var29)) (= var12 var28)) (= var10 var27)) (= var8 var26)) (= var6 var25)) (= var4 var24)) (= var0 var23)) (= var2 var22)))))) (inv_main61 var21 var19 var17 var15 var13 var11 var9 var7 var5 var3 var1 var15))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (inv_main36 var15 var14 var13 var12 var11 var10 var9 var8) (and (and (is-O_node (read var15 var8)) (is-O_node (read var15 var8))) (and (and (and (and (and (and (and (= var7 (write var15 var8 (O_node (node var10 (data (getnode (read var15 var8))))))) (= var6 var14)) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8))))) (inv_main21 var7 var6 var5 (+ var4 (- 1)) var3 var0 var1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Addr) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (inv_main18 var13 var12 var11 var10 var9 var8 var7) (and (and (is-O_node (read var13 var7)) (is-O_node (read var13 var7))) (and (and (and (and (and (and (= var6 (write var13 var7 (O_node (node (next (getnode (read var13 var7))) var8)))) (= var5 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main21 var6 var5 var4 var3 var2 var0 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Addr) (var13 Int) (var14 Int) (var15 Addr) (var16 Int) (var17 Int) (var18 Heap)) (or (not (and (inv_main103 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (and (not (= var9 var8)) (is-O_node (read var18 var10))) (and (and (and (and (and (and (and (and (and (= var7 var18) (= var6 var17)) (= var5 var16)) (= var4 var15)) (= var3 var14)) (= var2 var13)) (= var1 var12)) (= var0 var11)) (= var8 var10)) (= var9 (next (getnode (read var18 var10)))))))) (inv_main107 var7 var6 var5 var4 var3 var2 var1 var0 var8 var9))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Int) (var13 Addr) (var14 Int) (var15 Int) (var16 Addr) (var17 Int) (var18 Int) (var19 Heap) (var20 Addr) (var21 Addr) (var22 Addr) (var23 Addr) (var24 Int) (var25 Addr) (var26 Int) (var27 Int) (var28 Addr) (var29 Int) (var30 Int) (var31 Heap)) (or (not (and (inv_main107 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22) (and (not (= var21 var20)) (and (and (is-O_node (read var31 var22)) (and (and (and (and (and (and (and (and (and (and (= var19 var31) (= var18 var30)) (= var17 var29)) (= var16 var28)) (= var15 var27)) (= var14 var26)) (= var13 var25)) (= var12 var24)) (= var11 var23)) (= var10 var22)) (= var9 (next (getnode (read var31 var22)))))) (and (and (and (and (and (and (and (and (and (and (= var8 (write var19 var10 defObj)) (= var7 var18)) (= var6 var17)) (= var5 var16)) (= var4 var15)) (= var3 var14)) (= var2 var13)) (= var1 var12)) (= var20 var11)) (= var0 var10)) (= var21 var9)))))) (inv_main107 var8 var7 var6 var5 var4 var3 var2 var1 var20 var21))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main75 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var1)) (= var5 (data (getnode (read var7 var1))))))) (inv_main78 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main61 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var1 nullAddr)) (not (<= 0 (+ var3 (- 1))))))) (inv_main67 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main12 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main12 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (not (is-O_node (read var6 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (not (is-O_node (read var6 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main28 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var8 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main28 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var8 var0)) (not (is-O_node (read var8 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main34 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var8 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main34 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var8 var0)) (not (is-O_node (read var8 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main36 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main36 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var0)) (not (is-O_node (read var7 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (not (is-O_node (read var6 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (not (and (inv_main51 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var10 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (not (and (inv_main51 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var10 var0)) (not (is-O_node (read var10 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (not (and (inv_main57 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var10 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (not (and (inv_main57 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var10 var0)) (not (is-O_node (read var10 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main64 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var11 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main67 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var11 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main67 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var11 var1)) (not (is-O_node (read var11 var1))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main69 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var11 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main69 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var11 var2)) (not (is-O_node (read var11 var2))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main71 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var11 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main71 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var11 var2)) (not (is-O_node (read var11 var2))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main73 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var11 var8)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main73 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var11 var8)) (not (is-O_node (read var11 var8))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main72 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var11 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main72 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var11 var2)) (not (is-O_node (read var11 var2))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main75 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main78 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main76 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main83 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main88 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main91 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var1)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main103 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var8 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap)) (not (and (inv_main107 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var9 var0)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (inv_main110 var7 var6 var5 var4 var3 var2 var1 var0))))
(check-sat)