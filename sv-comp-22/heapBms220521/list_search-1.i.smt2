(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-heap Heap Addr HeapObject
 defObj
 ((HeapObject 0) (list 0)) (
  (
   (O_Int (getInt Int))
   (O_UInt (getUInt Int))
   (O_Addr (getAddr Addr))
   (O_list (getlist list))
   (defObj)
  )
  (
   (list (key Int) (next Addr))
  )
))
(declare-fun inv_main13 (Heap Addr Int Addr Addr Addr Int) Bool)
(declare-fun inv_main14 (Heap Addr Int Addr Addr Addr Int) Bool)
(declare-fun inv_main17 (Heap Addr Int Addr Addr Addr Int Addr) Bool)
(declare-fun inv_main23 (Heap Addr Int Addr Addr Addr Int) Bool)
(declare-fun inv_main27 (Heap Addr Int Addr Addr Addr Int) Bool)
(declare-fun inv_main28 (Heap Addr Int Addr Addr Addr Int) Bool)
(declare-fun inv_main31 (Heap Addr Int Addr Addr Addr Int Addr) Bool)
(declare-fun inv_main37 (Heap Addr Int Addr Addr Addr Int) Bool)
(declare-fun inv_main4 (Heap Addr Int Addr Addr) Bool)
(declare-fun inv_main41 (Heap Addr Int Addr Addr Addr Int) Bool)
(declare-fun inv_main42 (Heap Addr Int Addr Addr Addr Int) Bool)
(declare-fun inv_main45 (Heap Addr Int Addr Addr Addr Int Addr) Bool)
(declare-fun inv_main51 (Heap Addr Int Addr Addr Addr Int) Bool)
(declare-fun inv_main55 (Heap Addr Int Addr Addr Addr Int) Bool)
(declare-fun inv_main56 (Heap Addr Int Addr Addr Addr Int) Bool)
(declare-fun inv_main59 (Heap Addr Int Addr Addr Addr Int Addr) Bool)
(declare-fun inv_main61 (Heap Addr Int Addr Addr) Bool)
(declare-fun inv_main65 (Heap Addr Int Addr Addr Addr Int) Bool)
(declare-fun inv_main68 (Heap Addr Int Addr Addr Addr Int) Bool)
(declare-fun inv_main73 (Heap Addr Int Addr Addr) Bool)
(declare-fun inv_main9 (Heap Addr Int Addr Addr Addr Int) Bool)
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap)) (or (not (and (= var4 emptyHeap) (= var3 (list 0 nullAddr)))) (inv_main4 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Heap) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Addr) (var13 Heap)) (or (not (and (inv_main37 var13 var12 var11 var10 var9 var8 var7) (and (and (= var6 nullAddr) (and (is-O_list (read var13 var8)) (is-O_list (read var13 var8)))) (and (and (and (and (and (and (= var5 (write var13 var8 (O_list (list var7 (next (getlist (read var13 var8))))))) (= var6 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main41 var5 var6 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Heap) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Addr) (var13 Heap)) (or (not (and (inv_main23 var13 var12 var11 var10 var9 var8 var7) (and (and (= var6 nullAddr) (and (is-O_list (read var13 var8)) (is-O_list (read var13 var8)))) (and (and (and (and (and (and (= var5 (write var13 var8 (O_list (list var7 (next (getlist (read var13 var8))))))) (= var6 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main27 var5 var6 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (or (not (and (inv_main65 var6 var5 var4 var3 var2 var1 var0) (= var1 nullAddr))) (inv_main61 var6 var5 var4 var3 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap) (var7 Int) (var8 Int) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Int) (var13 Addr) (var14 Heap) (var15 Int) (var16 Int) (var17 Addr) (var18 Addr) (var19 Addr) (var20 Int) (var21 Addr) (var22 Heap)) (or (not (and (inv_main65 var22 var21 var20 var19 var18 var17 var16) (and (and (= var15 0) (and (and (not (= var17 nullAddr)) (is-O_list (read var22 var17))) (and (and (and (and (and (and (and (= var14 var22) (= var13 var21)) (= var12 var20)) (= var11 var19)) (= var10 var18)) (= var9 var17)) (= var8 var16)) (= var7 (key (getlist (read var22 var17))))))) (and (and (and (and (and (and (and (= var6 var14) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (or (and (not (= var7 var8)) (= var15 1)) (and (= var7 var8) (= var15 0))))))) (inv_main61 var6 var5 var4 var3 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Addr) (var12 Addr) (var13 list) (var14 Heap) (var15 Heap) (var16 Int) (var17 Addr) (var18 Addr) (var19 Addr) (var20 Int) (var21 Addr) (var22 Heap)) (or (not (and (inv_main13 var22 var21 var20 var19 var18 var17 var16) (and (and (and (and (and (and (and (and (= var15 (newHeap (alloc var14 (O_list var13)))) (= var12 var11)) (= var10 var9)) (= var8 var7)) (= var6 var5)) (= var4 var7)) (= var3 5)) (= var2 (newAddr (alloc var14 (O_list var13))))) (and (and (is-O_list (read var22 var17)) (is-O_list (read var22 var17))) (and (and (and (and (and (and (= var14 (write var22 var17 (O_list (list (key (getlist (read var22 var17))) nullAddr)))) (= var1 var21)) (= var9 var20)) (= var7 var19)) (= var5 var18)) (= var11 var17)) (= var0 var16)))))) (inv_main23 var15 var12 var10 var8 var6 var2 var3))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Addr) (var12 Addr) (var13 list) (var14 Heap) (var15 Heap) (var16 Addr) (var17 Int) (var18 Addr) (var19 Addr) (var20 Addr) (var21 Int) (var22 Addr) (var23 Heap)) (or (not (and (inv_main17 var23 var22 var21 var20 var19 var18 var17 var16) (and (and (and (and (and (and (and (and (= var15 (newHeap (alloc var14 (O_list var13)))) (= var12 var11)) (= var10 var9)) (= var8 var7)) (= var6 var5)) (= var4 var7)) (= var3 5)) (= var2 (newAddr (alloc var14 (O_list var13))))) (and (and (is-O_list (read var23 var18)) (is-O_list (read var23 var18))) (and (and (and (and (and (and (= var14 (write var23 var18 (O_list (list (key (getlist (read var23 var18))) var16)))) (= var1 var22)) (= var9 var21)) (= var7 var20)) (= var5 var19)) (= var11 var18)) (= var0 var17)))))) (inv_main23 var15 var12 var10 var8 var6 var2 var3))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Heap) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Addr) (var13 Heap)) (or (not (and (inv_main23 var13 var12 var11 var10 var9 var8 var7) (and (and (not (= var6 nullAddr)) (and (is-O_list (read var13 var8)) (is-O_list (read var13 var8)))) (and (and (and (and (and (and (= var5 (write var13 var8 (O_list (list var7 (next (getlist (read var13 var8))))))) (= var6 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main28 var5 var6 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Addr) (var7 list) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Int) (var12 Addr) (var13 Heap)) (or (not (and (inv_main4 var13 var12 var11 var10 var9) (and (and (and (and (and (and (and (= var8 (newHeap (alloc var13 (O_list var7)))) (= var6 var12)) (= var5 var11)) (= var4 var10)) (= var3 var9)) (= var2 var10)) (= var1 2)) (= var0 (newAddr (alloc var13 (O_list var7))))))) (inv_main9 var8 var6 var5 var4 var3 var0 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Addr) (var12 Addr) (var13 list) (var14 Heap) (var15 Heap) (var16 Int) (var17 Addr) (var18 Addr) (var19 Addr) (var20 Int) (var21 Addr) (var22 Heap)) (or (not (and (inv_main27 var22 var21 var20 var19 var18 var17 var16) (and (and (and (and (and (and (and (and (= var15 (newHeap (alloc var14 (O_list var13)))) (= var12 var11)) (= var10 var9)) (= var8 var7)) (= var6 var5)) (= var4 var7)) (= var3 1)) (= var2 (newAddr (alloc var14 (O_list var13))))) (and (and (is-O_list (read var22 var17)) (is-O_list (read var22 var17))) (and (and (and (and (and (and (= var14 (write var22 var17 (O_list (list (key (getlist (read var22 var17))) nullAddr)))) (= var1 var21)) (= var9 var20)) (= var7 var19)) (= var5 var18)) (= var11 var17)) (= var0 var16)))))) (inv_main37 var15 var12 var10 var8 var6 var2 var3))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Addr) (var12 Addr) (var13 list) (var14 Heap) (var15 Heap) (var16 Addr) (var17 Int) (var18 Addr) (var19 Addr) (var20 Addr) (var21 Int) (var22 Addr) (var23 Heap)) (or (not (and (inv_main31 var23 var22 var21 var20 var19 var18 var17 var16) (and (and (and (and (and (and (and (and (= var15 (newHeap (alloc var14 (O_list var13)))) (= var12 var11)) (= var10 var9)) (= var8 var7)) (= var6 var5)) (= var4 var7)) (= var3 1)) (= var2 (newAddr (alloc var14 (O_list var13))))) (and (and (is-O_list (read var23 var18)) (is-O_list (read var23 var18))) (and (and (and (and (and (and (= var14 (write var23 var18 (O_list (list (key (getlist (read var23 var18))) var16)))) (= var1 var22)) (= var9 var21)) (= var7 var20)) (= var5 var19)) (= var11 var18)) (= var0 var17)))))) (inv_main37 var15 var12 var10 var8 var6 var2 var3))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Heap) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Addr) (var13 Heap)) (or (not (and (inv_main51 var13 var12 var11 var10 var9 var8 var7) (and (and (= var6 nullAddr) (and (is-O_list (read var13 var8)) (is-O_list (read var13 var8)))) (and (and (and (and (and (and (= var5 (write var13 var8 (O_list (list var7 (next (getlist (read var13 var8))))))) (= var6 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main55 var5 var6 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Heap) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Addr) (var13 Heap)) (or (not (and (inv_main9 var13 var12 var11 var10 var9 var8 var7) (and (and (not (= var6 nullAddr)) (and (is-O_list (read var13 var8)) (is-O_list (read var13 var8)))) (and (and (and (and (and (and (= var5 (write var13 var8 (O_list (list var7 (next (getlist (read var13 var8))))))) (= var6 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main14 var5 var6 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap) (var7 Int) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Addr) (var13 Heap)) (or (not (and (inv_main28 var13 var12 var11 var10 var9 var8 var7) (and (and (is-O_list (read var13 var8)) (is-O_list (read var13 var8))) (and (and (and (and (and (and (= var6 (write var13 var8 (O_list (list var7 (next (getlist (read var13 var8))))))) (= var5 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main31 var6 var5 var4 var3 var2 var1 var0 var5))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap) (var7 Int) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Addr) (var13 Heap)) (or (not (and (inv_main14 var13 var12 var11 var10 var9 var8 var7) (and (and (is-O_list (read var13 var8)) (is-O_list (read var13 var8))) (and (and (and (and (and (and (= var6 (write var13 var8 (O_list (list var7 (next (getlist (read var13 var8))))))) (= var5 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main17 var6 var5 var4 var3 var2 var1 var0 var5))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Addr) (var7 Heap) (var8 Int) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Int) (var13 Addr) (var14 Heap)) (or (not (and (inv_main68 var14 var13 var12 var11 var10 var9 var8) (and (is-O_list (read var14 var9)) (and (and (and (and (and (and (and (= var7 var14) (= var6 var13)) (= var5 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 (next (getlist (read var14 var9)))))))) (inv_main65 var7 var6 var5 var4 var3 var0 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap) (var7 Int) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Addr) (var13 Heap)) (or (not (and (inv_main55 var13 var12 var11 var10 var9 var8 var7) (and (and (is-O_list (read var13 var8)) (is-O_list (read var13 var8))) (and (and (and (and (and (and (= var6 (write var13 var8 (O_list (list (key (getlist (read var13 var8))) nullAddr)))) (= var5 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main65 var6 var1 var4 var3 var2 var1 2))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap) (var7 Addr) (var8 Int) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Int) (var13 Addr) (var14 Heap)) (or (not (and (inv_main59 var14 var13 var12 var11 var10 var9 var8 var7) (and (and (is-O_list (read var14 var9)) (is-O_list (read var14 var9))) (and (and (and (and (and (and (= var6 (write var14 var9 (O_list (list (key (getlist (read var14 var9))) var7)))) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8))))) (inv_main65 var6 var1 var4 var3 var2 var1 2))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Heap) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Addr) (var13 Heap)) (or (not (and (inv_main51 var13 var12 var11 var10 var9 var8 var7) (and (and (not (= var6 nullAddr)) (and (is-O_list (read var13 var8)) (is-O_list (read var13 var8)))) (and (and (and (and (and (and (= var5 (write var13 var8 (O_list (list var7 (next (getlist (read var13 var8))))))) (= var6 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main56 var5 var6 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Heap) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Addr) (var13 Heap)) (or (not (and (inv_main9 var13 var12 var11 var10 var9 var8 var7) (and (and (= var6 nullAddr) (and (is-O_list (read var13 var8)) (is-O_list (read var13 var8)))) (and (and (and (and (and (and (= var5 (write var13 var8 (O_list (list var7 (next (getlist (read var13 var8))))))) (= var6 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main13 var5 var6 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap) (var7 Int) (var8 Int) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Int) (var13 Addr) (var14 Heap) (var15 Int) (var16 Int) (var17 Addr) (var18 Addr) (var19 Addr) (var20 Int) (var21 Addr) (var22 Heap)) (or (not (and (inv_main65 var22 var21 var20 var19 var18 var17 var16) (and (and (not (= var15 0)) (and (and (not (= var17 nullAddr)) (is-O_list (read var22 var17))) (and (and (and (and (and (and (and (= var14 var22) (= var13 var21)) (= var12 var20)) (= var11 var19)) (= var10 var18)) (= var9 var17)) (= var8 var16)) (= var7 (key (getlist (read var22 var17))))))) (and (and (and (and (and (and (and (= var6 var14) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (or (and (not (= var7 var8)) (= var15 1)) (and (= var7 var8) (= var15 0))))))) (inv_main68 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Heap) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Addr) (var13 Heap)) (or (not (and (inv_main37 var13 var12 var11 var10 var9 var8 var7) (and (and (not (= var6 nullAddr)) (and (is-O_list (read var13 var8)) (is-O_list (read var13 var8)))) (and (and (and (and (and (and (= var5 (write var13 var8 (O_list (list var7 (next (getlist (read var13 var8))))))) (= var6 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main42 var5 var6 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap) (var7 Int) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Addr) (var13 Heap)) (or (not (and (inv_main56 var13 var12 var11 var10 var9 var8 var7) (and (and (is-O_list (read var13 var8)) (is-O_list (read var13 var8))) (and (and (and (and (and (and (= var6 (write var13 var8 (O_list (list var7 (next (getlist (read var13 var8))))))) (= var5 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main59 var6 var5 var4 var3 var2 var1 var0 var5))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap)) (or (not (and (inv_main61 var4 var3 var2 var1 var0) (and (not (= var3 nullAddr)) (is-O_list (read var4 var0))))) (inv_main73 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Int) (var9 Addr) (var10 Heap) (var11 Addr) (var12 Addr) (var13 Addr) (var14 Int) (var15 Addr) (var16 Heap)) (or (not (and (inv_main73 var16 var15 var14 var13 var12) (and (not (= var11 nullAddr)) (and (and (is-O_list (read var16 var15)) (and (and (and (and (and (= var10 var16) (= var9 var15)) (= var8 var14)) (= var7 var13)) (= var6 var12)) (= var5 (next (getlist (read var16 var15)))))) (and (and (and (and (and (= var4 (write var10 var9 defObj)) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 var6)) (= var11 var5)))))) (inv_main73 var4 var11 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap) (var7 Int) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Addr) (var13 Heap)) (or (not (and (inv_main42 var13 var12 var11 var10 var9 var8 var7) (and (and (is-O_list (read var13 var8)) (is-O_list (read var13 var8))) (and (and (and (and (and (and (= var6 (write var13 var8 (O_list (list var7 (next (getlist (read var13 var8))))))) (= var5 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main45 var6 var5 var4 var3 var2 var1 var0 var5))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Addr) (var12 Addr) (var13 list) (var14 Heap) (var15 Heap) (var16 Int) (var17 Addr) (var18 Addr) (var19 Addr) (var20 Int) (var21 Addr) (var22 Heap)) (or (not (and (inv_main41 var22 var21 var20 var19 var18 var17 var16) (and (and (and (and (and (and (and (and (= var15 (newHeap (alloc var14 (O_list var13)))) (= var12 var11)) (= var10 var9)) (= var8 var7)) (= var6 var5)) (= var4 var7)) (= var3 3)) (= var2 (newAddr (alloc var14 (O_list var13))))) (and (and (is-O_list (read var22 var17)) (is-O_list (read var22 var17))) (and (and (and (and (and (and (= var14 (write var22 var17 (O_list (list (key (getlist (read var22 var17))) nullAddr)))) (= var1 var21)) (= var9 var20)) (= var7 var19)) (= var5 var18)) (= var11 var17)) (= var0 var16)))))) (inv_main51 var15 var12 var10 var8 var6 var2 var3))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Addr) (var12 Addr) (var13 list) (var14 Heap) (var15 Heap) (var16 Addr) (var17 Int) (var18 Addr) (var19 Addr) (var20 Addr) (var21 Int) (var22 Addr) (var23 Heap)) (or (not (and (inv_main45 var23 var22 var21 var20 var19 var18 var17 var16) (and (and (and (and (and (and (and (and (= var15 (newHeap (alloc var14 (O_list var13)))) (= var12 var11)) (= var10 var9)) (= var8 var7)) (= var6 var5)) (= var4 var7)) (= var3 3)) (= var2 (newAddr (alloc var14 (O_list var13))))) (and (and (is-O_list (read var23 var18)) (is-O_list (read var23 var18))) (and (and (and (and (and (and (= var14 (write var23 var18 (O_list (list (key (getlist (read var23 var18))) var16)))) (= var1 var22)) (= var9 var21)) (= var7 var20)) (= var5 var19)) (= var11 var18)) (= var0 var17)))))) (inv_main51 var15 var12 var10 var8 var6 var2 var3))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main9 var6 var5 var4 var3 var2 var1 var0) (not (is-O_list (read var6 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main9 var6 var5 var4 var3 var2 var1 var0) (and (is-O_list (read var6 var1)) (not (is-O_list (read var6 var1))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main13 var6 var5 var4 var3 var2 var1 var0) (not (is-O_list (read var6 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main13 var6 var5 var4 var3 var2 var1 var0) (and (is-O_list (read var6 var1)) (not (is-O_list (read var6 var1))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main14 var6 var5 var4 var3 var2 var1 var0) (not (is-O_list (read var6 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main14 var6 var5 var4 var3 var2 var1 var0) (and (is-O_list (read var6 var1)) (not (is-O_list (read var6 var1))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (inv_main17 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_list (read var7 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (inv_main17 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_list (read var7 var2)) (not (is-O_list (read var7 var2))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main23 var6 var5 var4 var3 var2 var1 var0) (not (is-O_list (read var6 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main23 var6 var5 var4 var3 var2 var1 var0) (and (is-O_list (read var6 var1)) (not (is-O_list (read var6 var1))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main27 var6 var5 var4 var3 var2 var1 var0) (not (is-O_list (read var6 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main27 var6 var5 var4 var3 var2 var1 var0) (and (is-O_list (read var6 var1)) (not (is-O_list (read var6 var1))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main28 var6 var5 var4 var3 var2 var1 var0) (not (is-O_list (read var6 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main28 var6 var5 var4 var3 var2 var1 var0) (and (is-O_list (read var6 var1)) (not (is-O_list (read var6 var1))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (inv_main31 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_list (read var7 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (inv_main31 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_list (read var7 var2)) (not (is-O_list (read var7 var2))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main37 var6 var5 var4 var3 var2 var1 var0) (not (is-O_list (read var6 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main37 var6 var5 var4 var3 var2 var1 var0) (and (is-O_list (read var6 var1)) (not (is-O_list (read var6 var1))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main41 var6 var5 var4 var3 var2 var1 var0) (not (is-O_list (read var6 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main41 var6 var5 var4 var3 var2 var1 var0) (and (is-O_list (read var6 var1)) (not (is-O_list (read var6 var1))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main42 var6 var5 var4 var3 var2 var1 var0) (not (is-O_list (read var6 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main42 var6 var5 var4 var3 var2 var1 var0) (and (is-O_list (read var6 var1)) (not (is-O_list (read var6 var1))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (inv_main45 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_list (read var7 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (inv_main45 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_list (read var7 var2)) (not (is-O_list (read var7 var2))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main51 var6 var5 var4 var3 var2 var1 var0) (not (is-O_list (read var6 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main51 var6 var5 var4 var3 var2 var1 var0) (and (is-O_list (read var6 var1)) (not (is-O_list (read var6 var1))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main55 var6 var5 var4 var3 var2 var1 var0) (not (is-O_list (read var6 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main55 var6 var5 var4 var3 var2 var1 var0) (and (is-O_list (read var6 var1)) (not (is-O_list (read var6 var1))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main56 var6 var5 var4 var3 var2 var1 var0) (not (is-O_list (read var6 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main56 var6 var5 var4 var3 var2 var1 var0) (and (is-O_list (read var6 var1)) (not (is-O_list (read var6 var1))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (inv_main59 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_list (read var7 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (inv_main59 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_list (read var7 var2)) (not (is-O_list (read var7 var2))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main65 var6 var5 var4 var3 var2 var1 var0) (and (not (= var1 nullAddr)) (not (is-O_list (read var6 var1))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main68 var6 var5 var4 var3 var2 var1 var0) (not (is-O_list (read var6 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap)) (not (and (inv_main61 var4 var3 var2 var1 var0) (not (is-O_list (read var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap)) (not (and (inv_main61 var4 var3 var2 var1 var0) (not (is-O_list (read var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap)) (not (and (inv_main61 var4 var3 var2 var1 var0) (and (is-O_list (read var4 var0)) (not (= (key (getlist (read var4 var0))) 1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap)) (not (and (inv_main73 var4 var3 var2 var1 var0) (not (is-O_list (read var4 var3)))))))
(check-sat)
