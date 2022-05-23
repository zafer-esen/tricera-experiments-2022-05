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
   (node (data Int) (next Addr) (prev Addr))
  )
))
(declare-fun inv_main12 (Heap Int Int Int Int Addr Addr) Bool)
(declare-fun inv_main15 (Heap Int Int Int Int Addr Addr Int) Bool)
(declare-fun inv_main18 (Heap Int Int Int Int Addr Addr) Bool)
(declare-fun inv_main19 (Heap Int Int Int Int Addr Addr) Bool)
(declare-fun inv_main22 (Heap Int Int Int Int Addr Addr) Bool)
(declare-fun inv_main28 (Heap Int Int Addr Int Int) Bool)
(declare-fun inv_main36 (Heap Int Int Addr Int Int Int Int Int Int Addr) Bool)
(declare-fun inv_main39 (Heap Int Int Addr Int Int Int Int Int Int Addr Int) Bool)
(declare-fun inv_main4 (Heap Int Int) Bool)
(declare-fun inv_main42 (Heap Int Int Addr Int Int Int Int Int Int Addr) Bool)
(declare-fun inv_main43 (Heap Int Int Addr Int Int Int Int Int Int Addr) Bool)
(declare-fun inv_main47 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main50 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main53 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main54 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main55 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main56 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main58 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main62 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main66 (Heap Int Int Addr Int Int Addr Int) Bool)
(declare-fun inv_main67 (Heap Int Int Addr Int Int Addr Int) Bool)
(declare-fun inv_main68 (Heap Int Int Addr Int Int Addr Int Addr) Bool)
(declare-fun inv_main73 (Heap Int Int Addr Int Int Addr Int) Bool)
(declare-fun inv_main78 (Heap Int Int Addr Int Int Addr Int) Bool)
(declare-fun inv_main8 (Heap Int Int Int Int Addr) Bool)
(declare-fun inv_main80 (Heap Int Int Addr Int Int Addr Int) Bool)
(declare-fun inv_main81 (Heap Int Int Addr Int Int Addr Int Addr) Bool)
(declare-fun inv_main93 (Heap Int Int Addr Int Int Addr Int Addr) Bool)
(declare-fun inv_main96 (Heap Int Int Addr Int Int Addr Int) Bool)
(assert (forall ((var0 Heap)) (or (not (= var0 emptyHeap)) (inv_main4 var0 2 1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (inv_main81 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var8 var2)) (= var6 (data (getnode (read var8 var2))))))) (inv_main78 var8 var7 var6 var5 var4 var3 var0 (+ var1 1)))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main73 var16 var15 var14 var13 var12 var11 var10 var9) (and (is-O_node (read var16 var10)) (and (and (and (and (and (and (and (and (= var8 var16) (= var7 var15)) (= var6 var14)) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 (next (getnode (read var16 var10)))))))) (inv_main78 var8 var7 var6 var5 var4 var3 var0 (+ var1 1)))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main53 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var11 var1)) (is-O_node (read var11 var1))))) (inv_main55 (write var11 var1 (O_node (node (data (getnode (read var11 var1))) var2 (prev (getnode (read var11 var1)))))) var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main80 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_node (read var7 var1)))) (inv_main81 var7 var6 var5 var4 var3 var2 var1 var0 (next (getnode (read var7 var1)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (inv_main68 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (or (= var0 nullAddr) (= (+ var1 1) var3)) (and (is-O_node (read var8 var2)) (= var6 (data (getnode (read var8 var2)))))))) (inv_main66 var8 var7 var6 var5 var4 var3 var0 (+ var1 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main28 var5 var4 var3 var2 var1 var0) (or (= var2 nullAddr) (= 0 var0)))) (inv_main66 var5 var4 var3 var2 var1 var0 var2 0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Int) (var12 Addr) (var13 Int) (var14 Int) (var15 Addr) (var16 Int) (var17 Int) (var18 Heap) (var19 Addr) (var20 Addr) (var21 Int) (var22 Addr) (var23 Int) (var24 Int) (var25 Addr) (var26 Int) (var27 Int) (var28 Heap)) (or (not (and (inv_main93 var28 var27 var26 var25 var24 var23 var22 var21 var20) (and (not (= var19 nullAddr)) (and (and (is-O_node (read var28 var20)) (and (and (and (and (and (and (and (and (and (= var18 var28) (= var17 var27)) (= var16 var26)) (= var15 var25)) (= var14 var24)) (= var13 var23)) (= var12 var22)) (= var11 var21)) (= var10 var20)) (= var9 (next (getnode (read var28 var20)))))) (and (and (and (and (and (and (and (and (and (= var8 (write var18 var10 defObj)) (= var7 var17)) (= var6 var16)) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var19 var9)))))) (inv_main93 var8 var7 var6 var5 var4 var3 var2 var1 var19))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main78 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var4 nullAddr)) (and (= var0 (+ 1 var6)) (= var1 nullAddr))))) (inv_main93 var7 var6 var5 var4 var3 var2 var1 var0 var4))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main66 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var1)) (= var3 (data (getnode (read var7 var1))))))) (inv_main73 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main47 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var1 nullAddr)) (not (<= 0 (+ var3 (- 1))))))) (inv_main53 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main12 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (is-O_node (read var6 var0))))) (inv_main18 (write var6 var0 (O_node (node var2 (next (getnode (read var6 var0))) (prev (getnode (read var6 var0)))))) var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (inv_main15 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main15 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 node) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (inv_main8 var13 var12 var11 var10 var9 var8) (and (and (= nullAddr var7) (and (and (and (and (and (and (= var6 (newHeap (alloc var13 (O_node var5)))) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var7 (newAddr (alloc var13 (O_node var5)))))) (<= 0 (+ var10 (- 1)))))) (inv_main15 var6 var4 var3 var2 var1 var0 var7 1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Heap) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (inv_main19 var13 var12 var11 var10 var9 var8 var7) (and (and (not (= var6 nullAddr)) (and (is-O_node (read var13 var7)) (is-O_node (read var13 var7)))) (and (and (and (and (and (and (= var5 (write var13 var7 (O_node (node (data (getnode (read var13 var7))) (next (getnode (read var13 var7))) nullAddr)))) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var6 var8)) (= var0 var7))))) (inv_main22 var5 var4 var3 var2 var1 var6 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Heap) (var11 Addr) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Addr) (var21 Int) (var22 Int) (var23 Heap)) (or (not (and (inv_main54 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12) (and (and (not (= var11 nullAddr)) (and (is-O_node (read var23 var14)) (is-O_node (read var23 var14)))) (and (and (and (and (and (and (and (and (and (and (and (= var10 (write var23 var14 (O_node (node (data (getnode (read var23 var14))) var20 (prev (getnode (read var23 var14))))))) (= var9 var22)) (= var8 var21)) (= var11 var20)) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12))))) (inv_main62 var10 var9 var8 var11 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main55 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var11 var2)) (is-O_node (read var11 var2))))) (inv_main56 (write var11 var2 (O_node (node (data (getnode (read var11 var2))) (next (getnode (read var11 var2))) var1))) var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main47 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ var3 (- 1))))) (inv_main50 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var0 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (is-O_node (read var6 var0))))) (inv_main19 (write var6 var0 (O_node (node (data (getnode (read var6 var0))) var1 (prev (getnode (read var6 var0)))))) var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap) (var11 Addr) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Addr) (var21 Int) (var22 Int) (var23 Heap)) (or (not (and (inv_main56 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12) (and (and (not (= var11 nullAddr)) (and (is-O_node (read var23 var14)) (is-O_node (read var23 var14)))) (and (and (and (and (and (and (and (and (and (and (and (= var10 (write var23 var14 (O_node (node (data (getnode (read var23 var14))) var12 (prev (getnode (read var23 var14))))))) (= var9 var22)) (= var8 var21)) (= var7 var20)) (= var6 var19)) (= var5 var18)) (= var4 var17)) (= var3 var16)) (= var2 var15)) (= var1 var14)) (= var0 var13)) (= var11 var12))))) (inv_main58 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var11))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Addr) (var18 Int) (var19 Int) (var20 Heap)) (or (not (and (inv_main58 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (is-O_node (read var20 var9)) (is-O_node (read var20 var9))) (and (and (and (and (and (and (and (and (= var8 (write var20 var9 (O_node (node (data (getnode (read var20 var9))) (next (getnode (read var20 var9))) var11)))) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12))))) (inv_main28 var8 var7 var6 var5 var4 var3))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap) (var11 Addr) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Addr) (var21 Int) (var22 Int) (var23 Heap)) (or (not (and (inv_main56 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12) (and (and (= var11 nullAddr) (and (is-O_node (read var23 var14)) (is-O_node (read var23 var14)))) (and (and (and (and (and (and (and (and (and (and (and (= var10 (write var23 var14 (O_node (node (data (getnode (read var23 var14))) var12 (prev (getnode (read var23 var14))))))) (= var9 var22)) (= var8 var21)) (= var7 var20)) (= var6 var19)) (= var5 var18)) (= var4 var17)) (= var3 var16)) (= var2 var15)) (= var1 var14)) (= var0 var13)) (= var11 var12))))) (inv_main28 var10 var9 var8 var7 var6 var5))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Addr) (var21 Int) (var22 Int) (var23 Heap)) (or (not (and (inv_main62 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12) (and (and (is-O_node (read var23 var20)) (is-O_node (read var23 var20))) (and (and (and (and (and (and (and (and (and (and (and (= var11 (write var23 var20 (O_node (node (data (getnode (read var23 var20))) (next (getnode (read var23 var20))) var14)))) (= var10 var22)) (= var9 var21)) (= var8 var20)) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12))))) (inv_main28 var11 var10 var9 var2 var7 var6))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Heap) (var11 Addr) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Addr) (var21 Int) (var22 Int) (var23 Heap)) (or (not (and (inv_main54 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12) (and (and (= var11 nullAddr) (and (is-O_node (read var23 var14)) (is-O_node (read var23 var14)))) (and (and (and (and (and (and (and (and (and (and (and (= var10 (write var23 var14 (O_node (node (data (getnode (read var23 var14))) var20 (prev (getnode (read var23 var14))))))) (= var9 var22)) (= var8 var21)) (= var11 var20)) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12))))) (inv_main28 var10 var9 var8 var2 var7 var6))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 node) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (inv_main8 var13 var12 var11 var10 var9 var8) (and (and (not (= nullAddr var7)) (and (and (and (and (and (and (= var6 (newHeap (alloc var13 (O_node var5)))) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var7 (newAddr (alloc var13 (O_node var5)))))) (<= 0 (+ var10 (- 1)))))) (inv_main12 var6 var4 var3 var2 var1 var0 var7))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main47 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var1 nullAddr) (not (<= 0 (+ var3 (- 1))))))) (inv_main54 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (inv_main36 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var10 var0)) (is-O_node (read var10 var0))))) (inv_main42 (write var10 var0 (O_node (node (data (getnode (read var10 var0))) nullAddr (prev (getnode (read var10 var0)))))) var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (inv_main22 var13 var12 var11 var10 var9 var8 var7) (and (and (is-O_node (read var13 var8)) (is-O_node (read var13 var8))) (and (and (and (and (and (and (= var6 (write var13 var8 (O_node (node (data (getnode (read var13 var8))) (next (getnode (read var13 var8))) var7)))) (= var5 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main8 var6 var5 var4 (+ var3 (- 1)) var2 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Heap) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (inv_main19 var13 var12 var11 var10 var9 var8 var7) (and (and (= var6 nullAddr) (and (is-O_node (read var13 var7)) (is-O_node (read var13 var7)))) (and (and (and (and (and (and (= var5 (write var13 var7 (O_node (node (data (getnode (read var13 var7))) (next (getnode (read var13 var7))) nullAddr)))) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var6 var8)) (= var0 var7))))) (inv_main8 var5 var4 var3 (+ var2 (- 1)) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Heap)) (or (not (inv_main4 var2 var1 var0)) (inv_main8 var2 var1 var0 var1 var0 nullAddr))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (inv_main42 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var10 var0)) (is-O_node (read var10 var0))))) (inv_main43 (write var10 var0 (O_node (node (data (getnode (read var10 var0))) (next (getnode (read var10 var0))) nullAddr))) var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (inv_main68 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var8 var2)) (not (= var6 (data (getnode (read var8 var2)))))))) (inv_main96 var8 var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (inv_main81 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var8 var2)) (not (= var6 (data (getnode (read var8 var2)))))))) (inv_main96 var8 var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main66 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var7 var1)) (not (= var3 (data (getnode (read var7 var1)))))))) (inv_main96 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main78 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var0 (+ 1 var6))) (= var1 nullAddr)))) (inv_main96 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Addr) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 node) (var15 Heap) (var16 Heap) (var17 Addr) (var18 Addr) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Heap) (var24 Int)) (or (not (and (inv_main8 var23 var22 var21 var20 var19 var18) (and (and (and (not (= nullAddr var17)) (and (and (and (and (and (and (and (and (and (and (= var16 (newHeap (alloc var15 (O_node var14)))) (= var13 var12)) (= var11 var10)) (= var9 var8)) (= var7 var6)) (= var5 var4)) (= var3 3)) (= var2 var6)) (= var1 var4)) (= var0 var6)) (= var17 (newAddr (alloc var15 (O_node var14)))))) (and (and (and (and (and (= var15 var23) (= var12 var22)) (= var10 var21)) (= var8 var18)) (= var6 5)) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ var22 (* (- 2) var24)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ var22 (* (- 2) var24)))) (- 1)))) (or (not (<= 0 (+ (+ var22 (* (- 2) var24)) (- 1)))) (<= 0 (+ var22 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var22 (* (- 2) var24))) (- 1)))) (<= 0 (+ (* (- 1) var22) (- 1))))) (= var4 var24)))) (not (<= 0 (+ var20 (- 1))))))) (inv_main36 var16 var13 var11 var9 var7 var5 var3 var2 var1 var0 var17))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main78 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var1 nullAddr)))) (inv_main80 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Addr) (var10 Int) (var11 Int) (var12 Heap) (var13 Addr) (var14 Addr) (var15 Addr) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Addr) (var22 Int) (var23 Int) (var24 Heap)) (or (not (and (inv_main50 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13) (and (is-O_node (read var24 var13)) (and (and (and (and (and (and (and (and (and (and (and (and (= var12 var24) (= var11 var23)) (= var10 var22)) (= var9 var21)) (= var8 var20)) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 (next (getnode (read var24 var13)))))))) (inv_main47 var12 var11 var10 var9 var8 var7 var6 var5 (+ var4 (- 1)) var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Addr) (var15 Addr) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Heap) (var21 Heap) (var22 Addr) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Addr) (var30 Int) (var31 Int) (var32 Heap)) (or (not (and (inv_main43 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22) (and (and (and (and (and (and (and (and (and (and (and (= var21 var20) (= var19 var18)) (= var17 var16)) (= var15 var14)) (= var13 var12)) (= var11 var10)) (= var9 var8)) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 nullAddr)) (and (and (is-O_node (read var32 var22)) (is-O_node (read var32 var22))) (and (and (and (and (and (and (and (and (and (and (= var20 (write var32 var22 (O_node (node var23 (next (getnode (read var32 var22))) (prev (getnode (read var32 var22))))))) (= var18 var31)) (= var16 var30)) (= var14 var29)) (= var12 var28)) (= var10 var27)) (= var8 var26)) (= var6 var25)) (= var4 var24)) (= var0 var23)) (= var2 var22)))))) (inv_main47 var21 var19 var17 var15 var13 var11 var9 var7 var5 var3 var1 var15))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (inv_main39 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main39 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Addr) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 node) (var15 Heap) (var16 Heap) (var17 Addr) (var18 Addr) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Heap) (var24 Int)) (or (not (and (inv_main8 var23 var22 var21 var20 var19 var18) (and (and (and (= nullAddr var17) (and (and (and (and (and (and (and (and (and (and (= var16 (newHeap (alloc var15 (O_node var14)))) (= var13 var12)) (= var11 var10)) (= var9 var8)) (= var7 var6)) (= var5 var4)) (= var3 3)) (= var2 var6)) (= var1 var4)) (= var0 var6)) (= var17 (newAddr (alloc var15 (O_node var14)))))) (and (and (and (and (and (= var15 var23) (= var12 var22)) (= var10 var21)) (= var8 var18)) (= var6 5)) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ var22 (* (- 2) var24)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ var22 (* (- 2) var24)))) (- 1)))) (or (not (<= 0 (+ (+ var22 (* (- 2) var24)) (- 1)))) (<= 0 (+ var22 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var22 (* (- 2) var24))) (- 1)))) (<= 0 (+ (* (- 1) var22) (- 1))))) (= var4 var24)))) (not (<= 0 (+ var20 (- 1))))))) (inv_main39 var16 var13 var11 var9 var7 var5 var3 var2 var1 var0 var17 1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (inv_main68 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (not (= var0 nullAddr)) (not (= (+ var1 1) var3))) (and (is-O_node (read var8 var2)) (= var6 (data (getnode (read var8 var2)))))))) (inv_main67 var8 var7 var6 var5 var4 var3 var0 (+ var1 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main28 var5 var4 var3 var2 var1 var0) (and (not (= var2 nullAddr)) (not (= 0 var0))))) (inv_main67 var5 var4 var3 var2 var1 var0 var2 0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main67 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_node (read var7 var1)))) (inv_main68 var7 var6 var5 var4 var3 var2 var1 var0 (next (getnode (read var7 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main12 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main12 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (not (is-O_node (read var6 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (not (is-O_node (read var6 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main19 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main19 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (not (is-O_node (read var6 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var6 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var1)) (not (is-O_node (read var6 var1))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (not (and (inv_main36 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var10 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (not (and (inv_main36 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var10 var0)) (not (is-O_node (read var10 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (not (and (inv_main42 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var10 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (not (and (inv_main42 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var10 var0)) (not (is-O_node (read var10 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (not (and (inv_main43 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var10 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (not (and (inv_main43 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var10 var0)) (not (is-O_node (read var10 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main50 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var11 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main53 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var11 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main53 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var11 var1)) (not (is-O_node (read var11 var1))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main55 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var11 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main55 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var11 var2)) (not (is-O_node (read var11 var2))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main56 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var11 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main56 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var11 var2)) (not (is-O_node (read var11 var2))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main58 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var11 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main58 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var11 var0)) (not (is-O_node (read var11 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main54 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var11 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main54 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var11 var2)) (not (is-O_node (read var11 var2))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main62 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var11 var8)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main62 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var11 var8)) (not (is-O_node (read var11 var8))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main67 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var1)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main68 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var8 var2)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main66 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main73 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main80 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var7 var1)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main81 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var8 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main93 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var8 var0)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (inv_main96 var7 var6 var5 var4 var3 var2 var1 var0))))
(check-sat)
