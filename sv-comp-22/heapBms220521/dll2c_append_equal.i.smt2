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
   (node (next Addr) (prev Addr) (data Int))
  )
))
(declare-fun inv_main12 (Heap Int Int Int Int Int Addr) Bool)
(declare-fun inv_main15 (Heap Int Int Int Int Int Addr Int) Bool)
(declare-fun inv_main18 (Heap Int Int Int Int Int Addr) Bool)
(declare-fun inv_main19 (Heap Int Int Int Int Int Addr) Bool)
(declare-fun inv_main22 (Heap Int Int Int Int Addr Addr) Bool)
(declare-fun inv_main23 (Heap Int Int Int Int Addr Addr) Bool)
(declare-fun inv_main29 (Heap Int Int Int Int Addr Addr Int Addr) Bool)
(declare-fun inv_main32 (Heap Int Int Int Int Addr Addr Int Addr Int) Bool)
(declare-fun inv_main35 (Heap Int Int Int Int Addr Addr Int Addr) Bool)
(declare-fun inv_main36 (Heap Int Int Int Int Addr Addr Int Addr) Bool)
(declare-fun inv_main38 (Heap Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main4 (Heap Int Int) Bool)
(declare-fun inv_main41 (Heap Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main44 (Heap Int Int Int Int Addr Addr) Bool)
(declare-fun inv_main55 (Heap Int Int Addr Int Int Int Addr) Bool)
(declare-fun inv_main58 (Heap Int Int Addr Int Int Int Addr Int) Bool)
(declare-fun inv_main61 (Heap Int Int Addr Int Int Int Addr) Bool)
(declare-fun inv_main62 (Heap Int Int Addr Int Int Int Addr) Bool)
(declare-fun inv_main65 (Heap Int Int Addr Int Int Addr) Bool)
(declare-fun inv_main66 (Heap Int Int Addr Int Int Addr) Bool)
(declare-fun inv_main67 (Heap Int Int Addr Int Int Addr) Bool)
(declare-fun inv_main69 (Heap Int Int Addr Int Int Addr Addr) Bool)
(declare-fun inv_main70 (Heap Int Int Addr Int Int Addr Addr) Bool)
(declare-fun inv_main71 (Heap Int Int Addr Int Int Addr Addr) Bool)
(declare-fun inv_main72 (Heap Int Int Addr Int Int Addr Addr) Bool)
(declare-fun inv_main74 (Heap Int Int Addr Addr Int) Bool)
(declare-fun inv_main77 (Heap Int Int Addr Addr Int) Bool)
(declare-fun inv_main89 (Heap Int Int Addr Addr Int Addr) Bool)
(declare-fun inv_main93 (Heap Int Int Addr Addr Int Addr Addr) Bool)
(declare-fun inv_main96 (Heap Int Int Addr Addr Int) Bool)
(assert (forall ((var0 Heap)) (or (not (= var0 emptyHeap)) (inv_main4 var0 2 1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 node) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main22 var16 var15 var14 var13 var12 var11 var10) (and (and (not (= nullAddr var9)) (and (and (and (and (and (and (and (and (= var8 (newHeap (alloc var16 (O_node var7)))) (= var6 var15)) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var12)) (= var9 (newAddr (alloc var16 (O_node var7)))))) (<= 0 (+ (+ var13 (- 1)) (- 1)))))) (inv_main29 var8 var6 var5 var4 var3 var2 var1 var0 var9))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (- 1)) (- 1)))))) (inv_main23 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (inv_main29 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var8 var0)) (is-O_node (read var8 var0))))) (inv_main35 (write var8 var0 (O_node (node nullAddr (prev (getnode (read var8 var0))) (data (getnode (read var8 var0)))))) var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (inv_main35 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var8 var0)) (is-O_node (read var8 var0))))) (inv_main36 (write var8 var0 (O_node (node (next (getnode (read var8 var0))) nullAddr (data (getnode (read var8 var0)))))) var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (is-O_node (read var6 var0))))) (inv_main19 (write var6 var0 (O_node (node (next (getnode (read var6 var0))) nullAddr (data (getnode (read var6 var0)))))) var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Heap)) (or (not (inv_main32 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main32 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 node) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main22 var16 var15 var14 var13 var12 var11 var10) (and (and (= nullAddr var9) (and (and (and (and (and (and (and (and (= var8 (newHeap (alloc var16 (O_node var7)))) (= var6 var15)) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var12)) (= var9 (newAddr (alloc var16 (O_node var7)))))) (<= 0 (+ (+ var13 (- 1)) (- 1)))))) (inv_main32 var8 var6 var5 var4 var3 var2 var1 var0 var9 1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main61 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var0)) (is-O_node (read var7 var0))))) (inv_main62 (write var7 var0 (O_node (node (next (getnode (read var7 var0))) nullAddr (data (getnode (read var7 var0)))))) var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main70 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var1)) (is-O_node (read var7 var1))))) (inv_main71 (write var7 var1 (O_node (node (next (getnode (read var7 var1))) var0 (data (getnode (read var7 var1)))))) var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main74 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var5 var1)) (= var3 (data (getnode (read var5 var1))))))) (inv_main77 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Int) (var12 Addr) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (inv_main62 var15 var14 var13 var12 var11 var10 var9 var8) (and (not (= nullAddr var7)) (and (and (is-O_node (read var15 var8)) (is-O_node (read var15 var8))) (and (and (and (and (and (and (and (= var6 (write var15 var8 (O_node (node (next (getnode (read var15 var8))) (prev (getnode (read var15 var8))) var9)))) (= var5 var14)) (= var4 var13)) (= var7 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)))))) (inv_main66 var6 var5 var4 var7 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Int) (var10 Addr) (var11 Addr) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (inv_main89 var14 var13 var12 var11 var10 var9 var8) (and (and (not (= var7 var6)) (is-O_node (read var14 var8))) (and (and (and (and (and (and (and (= var5 var14) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9)) (= var6 var8)) (= var7 (next (getnode (read var14 var8)))))))) (inv_main93 var5 var4 var3 var2 var1 var0 var6 var7))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Int) (var11 Addr) (var12 Addr) (var13 Int) (var14 Int) (var15 Heap) (var16 Addr) (var17 Addr) (var18 Addr) (var19 Addr) (var20 Int) (var21 Addr) (var22 Addr) (var23 Int) (var24 Int) (var25 Heap)) (or (not (and (inv_main93 var25 var24 var23 var22 var21 var20 var19 var18) (and (not (= var17 var16)) (and (and (is-O_node (read var25 var18)) (and (and (and (and (and (and (and (and (= var15 var25) (= var14 var24)) (= var13 var23)) (= var12 var22)) (= var11 var21)) (= var10 var20)) (= var9 var19)) (= var8 var18)) (= var7 (next (getnode (read var25 var18)))))) (and (and (and (and (and (and (and (and (= var6 (write var15 var8 defObj)) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var16 var9)) (= var0 var8)) (= var17 var7)))))) (inv_main93 var6 var5 var4 var3 var2 var1 var16 var17))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (inv_main41 var15 var14 var13 var12 var11 var10 var9 var8) (and (and (is-O_node (read var15 var10)) (is-O_node (read var15 var10))) (and (and (and (and (and (and (and (= var7 (write var15 var10 (O_node (node (next (getnode (read var15 var10))) var8 (data (getnode (read var15 var10))))))) (= var6 var14)) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8))))) (inv_main22 var7 var6 var5 (+ var4 (- 1)) var3 var0 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (inv_main38 var15 var14 var13 var12 var11 var10 var9 var8) (and (and (= var7 nullAddr) (and (is-O_node (read var15 var8)) (is-O_node (read var15 var8)))) (and (and (and (and (and (and (and (= var6 (write var15 var8 (O_node (node var10 (prev (getnode (read var15 var8))) (data (getnode (read var15 var8))))))) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var7 var10)) (= var1 var9)) (= var0 var8))))) (inv_main22 var6 var5 var4 (+ var3 (- 1)) var2 var0 var1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Addr) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (inv_main19 var13 var12 var11 var10 var9 var8 var7) (and (and (is-O_node (read var13 var7)) (is-O_node (read var13 var7))) (and (and (and (and (and (and (= var6 (write var13 var7 (O_node (node (next (getnode (read var13 var7))) (prev (getnode (read var13 var7))) var8)))) (= var5 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main22 var6 var5 var4 var3 var2 var0 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Int) (var12 Addr) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (inv_main62 var15 var14 var13 var12 var11 var10 var9 var8) (and (= nullAddr var7) (and (and (is-O_node (read var15 var8)) (is-O_node (read var15 var8))) (and (and (and (and (and (and (and (= var6 (write var15 var8 (O_node (node (next (getnode (read var15 var8))) (prev (getnode (read var15 var8))) var9)))) (= var5 var14)) (= var4 var13)) (= var7 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)))))) (inv_main65 var6 var5 var4 var7 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main55 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var0)) (is-O_node (read var7 var0))))) (inv_main61 (write var7 var0 (O_node (node nullAddr (prev (getnode (read var7 var0))) (data (getnode (read var7 var0)))))) var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 node) (var6 Heap) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (inv_main4 var10 var9 var8) (and (not (= nullAddr var7)) (and (and (and (and (and (and (= var6 (newHeap (alloc var10 (O_node var5)))) (= var4 var9)) (= var3 var8)) (= var2 var9)) (= var1 var8)) (= var0 var8)) (= var7 (newAddr (alloc var10 (O_node var5)))))))) (inv_main12 var6 var4 var3 var2 var1 var0 var7))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main66 var6 var5 var4 var3 var2 var1 var0) (is-O_node (read var6 var3)))) (inv_main69 var6 var5 var4 var3 var2 var1 var0 (prev (getnode (read var6 var3)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main65 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (is-O_node (read var6 var0))))) (inv_main67 (write var6 var0 (O_node (node (next (getnode (read var6 var0))) var0 (data (getnode (read var6 var0)))))) var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Heap) (var3 Addr) (var4 Int) (var5 Int) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main77 var12 var11 var10 var9 var8 var7) (and (not (= nullAddr var6)) (and (= (+ var5 1) (+ 1 var4)) (and (= var3 var6) (and (is-O_node (read var12 var8)) (and (and (and (and (and (and (= var2 var12) (= var4 var11)) (= var1 var10)) (= var6 var9)) (= var0 var8)) (= var5 var7)) (= var3 (next (getnode (read var12 var8))))))))))) (inv_main89 var2 var4 var1 var6 var3 (+ var5 1) var6))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main74 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var5 var1)) (not (= var3 (data (getnode (read var5 var1)))))))) (inv_main96 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Addr) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main77 var12 var11 var10 var9 var8 var7) (and (not (= (+ var6 1) (+ 1 var5))) (and (= var4 var3) (and (is-O_node (read var12 var8)) (and (and (and (and (and (and (= var2 var12) (= var5 var11)) (= var1 var10)) (= var3 var9)) (= var0 var8)) (= var6 var7)) (= var4 (next (getnode (read var12 var8)))))))))) (inv_main96 var2 var5 var1 var3 var4 (+ var6 1)))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Addr) (var7 Addr) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 node) (var13 Heap) (var14 Heap) (var15 Addr) (var16 Addr) (var17 Addr) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Heap)) (or (not (and (inv_main44 var22 var21 var20 var19 var18 var17 var16) (and (and (not (= nullAddr var15)) (and (and (and (and (and (and (and (= var14 (newHeap (alloc var13 (O_node var12)))) (= var11 var10)) (= var9 var8)) (= var7 var6)) (= var5 3)) (= var4 var8)) (= var3 var8)) (= var15 (newAddr (alloc var13 (O_node var12)))))) (and (and (is-O_node (read var22 var17)) (is-O_node (read var22 var17))) (and (and (and (and (and (and (= var13 (write var22 var17 (O_node (node (next (getnode (read var22 var17))) var16 (data (getnode (read var22 var17))))))) (= var10 var21)) (= var8 var20)) (= var2 var19)) (= var1 var18)) (= var6 var17)) (= var0 var16)))))) (inv_main55 var14 var11 var9 var7 var5 var4 var3 var15))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main12 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (is-O_node (read var6 var0))))) (inv_main18 (write var6 var0 (O_node (node nullAddr (prev (getnode (read var6 var0))) (data (getnode (read var6 var0)))))) var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (inv_main15 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main15 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 node) (var6 Heap) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (inv_main4 var10 var9 var8) (and (= nullAddr var7) (and (and (and (and (and (and (= var6 (newHeap (alloc var10 (O_node var5)))) (= var4 var9)) (= var3 var8)) (= var2 var9)) (= var1 var8)) (= var0 var8)) (= var7 (newAddr (alloc var10 (O_node var5)))))))) (inv_main15 var6 var4 var3 var2 var1 var0 var7 1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Addr) (var10 Int) (var11 Addr) (var12 Addr) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (inv_main36 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (is-O_node (read var17 var9)) (is-O_node (read var17 var9))) (and (and (and (and (and (and (and (and (= var8 (write var17 var9 (O_node (node (next (getnode (read var17 var9))) (prev (getnode (read var17 var9))) var10)))) (= var7 var16)) (= var6 var15)) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9))))) (inv_main38 var8 var7 var6 var5 var4 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main69 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var0)) (is-O_node (read var7 var0))))) (inv_main70 (write var7 var0 (O_node (node var1 (prev (getnode (read var7 var0))) (data (getnode (read var7 var0)))))) var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main77 var12 var11 var10 var9 var8 var7) (and (not (= var6 var5)) (and (is-O_node (read var12 var8)) (and (and (and (and (and (and (= var4 var12) (= var3 var11)) (= var2 var10)) (= var5 var9)) (= var1 var8)) (= var0 var7)) (= var6 (next (getnode (read var12 var8))))))))) (inv_main74 var4 var3 var2 var5 var6 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap) (var6 Addr) (var7 Addr) (var8 Int) (var9 Int) (var10 Addr) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (inv_main72 var13 var12 var11 var10 var9 var8 var7 var6) (and (and (is-O_node (read var13 var10)) (is-O_node (read var13 var10))) (and (and (and (and (and (= var5 (write var13 var10 (O_node (node (next (getnode (read var13 var10))) var7 (data (getnode (read var13 var10))))))) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8))))) (inv_main74 var5 var4 var3 var2 var2 0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap) (var7 Addr) (var8 Int) (var9 Int) (var10 Addr) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (inv_main67 var13 var12 var11 var10 var9 var8 var7) (and (and (is-O_node (read var13 var7)) (is-O_node (read var13 var7))) (and (and (and (and (and (and (= var6 (write var13 var7 (O_node (node var7 (prev (getnode (read var13 var7))) (data (getnode (read var13 var7))))))) (= var5 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main74 var6 var5 var4 var0 var0 0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main23 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (is-O_node (read var6 var0))))) (inv_main44 (write var6 var0 (O_node (node var1 (prev (getnode (read var6 var0))) (data (getnode (read var6 var0)))))) var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (inv_main38 var15 var14 var13 var12 var11 var10 var9 var8) (and (and (not (= var7 nullAddr)) (and (is-O_node (read var15 var8)) (is-O_node (read var15 var8)))) (and (and (and (and (and (and (and (= var6 (write var15 var8 (O_node (node var10 (prev (getnode (read var15 var8))) (data (getnode (read var15 var8))))))) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var7 var10)) (= var1 var9)) (= var0 var8))))) (inv_main41 var6 var5 var4 var3 var2 var7 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (or (not (inv_main58 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main58 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Addr) (var7 Addr) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 node) (var13 Heap) (var14 Heap) (var15 Addr) (var16 Addr) (var17 Addr) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Heap)) (or (not (and (inv_main44 var22 var21 var20 var19 var18 var17 var16) (and (and (= nullAddr var15) (and (and (and (and (and (and (and (= var14 (newHeap (alloc var13 (O_node var12)))) (= var11 var10)) (= var9 var8)) (= var7 var6)) (= var5 3)) (= var4 var8)) (= var3 var8)) (= var15 (newAddr (alloc var13 (O_node var12)))))) (and (and (is-O_node (read var22 var17)) (is-O_node (read var22 var17))) (and (and (and (and (and (and (= var13 (write var22 var17 (O_node (node (next (getnode (read var22 var17))) var16 (data (getnode (read var22 var17))))))) (= var10 var21)) (= var8 var20)) (= var2 var19)) (= var1 var18)) (= var6 var17)) (= var0 var16)))))) (inv_main58 var14 var11 var9 var7 var5 var4 var3 var15 1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main71 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var1)) (is-O_node (read var7 var1))))) (inv_main72 (write var7 var1 (O_node (node var4 (prev (getnode (read var7 var1))) (data (getnode (read var7 var1)))))) var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main12 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main12 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (not (is-O_node (read var6 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (not (is-O_node (read var6 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main19 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main19 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (not (is-O_node (read var6 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main29 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var8 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main29 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var8 var0)) (not (is-O_node (read var8 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main35 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var8 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main35 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var8 var0)) (not (is-O_node (read var8 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main36 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var8 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main36 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var8 var0)) (not (is-O_node (read var8 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main38 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main38 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var0)) (not (is-O_node (read var7 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main41 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main41 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var2)) (not (is-O_node (read var7 var2))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main23 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main23 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (not (is-O_node (read var6 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main44 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var6 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main44 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var1)) (not (is-O_node (read var6 var1))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main55 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main55 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var0)) (not (is-O_node (read var7 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main61 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main61 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var0)) (not (is-O_node (read var7 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main62 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main62 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var0)) (not (is-O_node (read var7 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main65 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main65 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (not (is-O_node (read var6 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main67 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main67 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (not (is-O_node (read var6 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main66 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var6 var3)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main69 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main69 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var0)) (not (is-O_node (read var7 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main70 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main70 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var1)) (not (is-O_node (read var7 var1))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main71 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main71 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var1)) (not (is-O_node (read var7 var1))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main72 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var4)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main72 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var4)) (not (is-O_node (read var7 var4))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main74 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var5 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main77 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var5 var1)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main89 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main93 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var0)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (not (inv_main96 var5 var4 var3 var2 var1 var0))))
(check-sat)
