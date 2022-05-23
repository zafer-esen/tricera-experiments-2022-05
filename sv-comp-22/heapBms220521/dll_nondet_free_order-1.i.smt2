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
   (node (next Addr) (prev Addr))
  )
))
(declare-fun inv_main11 (Heap Int Int Addr Int) Bool)
(declare-fun inv_main14 (Heap Int Int Addr) Bool)
(declare-fun inv_main16 (Heap Int Int Addr Addr) Bool)
(declare-fun inv_main17 (Heap Int Int Addr Addr) Bool)
(declare-fun inv_main20 (Heap Int Int Addr Addr Addr) Bool)
(declare-fun inv_main23 (Heap Int Int Addr Addr Addr Int) Bool)
(declare-fun inv_main26 (Heap Int Int Addr Addr Addr) Bool)
(declare-fun inv_main29 (Heap Int Int Addr Addr) Bool)
(declare-fun inv_main3 (Heap Int) Bool)
(declare-fun inv_main33 (Heap Int Addr Addr) Bool)
(declare-fun inv_main36 (Heap Int Addr Addr Addr) Bool)
(declare-fun inv_main8 (Heap Int Int Addr) Bool)
(assert (forall ((var0 Heap)) (or (not (= var0 emptyHeap)) (inv_main3 var0 3))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (or (not (inv_main23 var6 var5 var4 var3 var2 var1 var0)) (inv_main23 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 node) (var5 Heap) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main16 var11 var10 var9 var8 var7) (and (and (= nullAddr var6) (and (and (and (and (and (= var5 (newHeap (alloc var11 (O_node var4)))) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7)) (= var6 (newAddr (alloc var11 (O_node var4)))))) (<= 0 (+ (+ var9 (- 1)) (- 1)))))) (inv_main23 var5 var3 var2 var1 var0 var6 1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Heap)) (or (not (and (inv_main8 var3 var2 var1 var0) (and (is-O_node (read var3 var0)) (is-O_node (read var3 var0))))) (inv_main14 (write var3 var0 (O_node (node var0 (prev (getnode (read var3 var0)))))) var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (inv_main16 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var2 (- 1)) (- 1)))))) (inv_main17 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 node) (var3 Heap) (var4 Addr) (var5 Int) (var6 Heap)) (or (not (and (inv_main3 var6 var5) (and (not (= nullAddr var4)) (and (and (and (= var3 (newHeap (alloc var6 (O_node var2)))) (= var1 var5)) (= var0 var5)) (= var4 (newAddr (alloc var6 (O_node var2)))))))) (inv_main8 var3 var1 var0 var4))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Heap)) (or (not (and (inv_main33 var3 var2 var1 var0) (is-O_node (read var3 var0)))) (inv_main36 var3 var2 var1 var0 (prev (getnode (read var3 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (inv_main17 var4 var3 var2 var1 var0) (and (is-O_node (read var4 var1)) (is-O_node (read var4 var1))))) (inv_main29 (write var4 var1 (O_node (node var0 (prev (getnode (read var4 var1)))))) var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap)) (or (not (inv_main11 var4 var3 var2 var1 var0)) (inv_main11 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 node) (var3 Heap) (var4 Addr) (var5 Int) (var6 Heap)) (or (not (and (inv_main3 var6 var5) (and (= nullAddr var4) (and (and (and (= var3 (newHeap (alloc var6 (O_node var2)))) (= var1 var5)) (= var0 var5)) (= var4 (newAddr (alloc var6 (O_node var2)))))))) (inv_main11 var3 var1 var0 var4 1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (inv_main29 var9 var8 var7 var6 var5) (and (and (is-O_node (read var9 var5)) (is-O_node (read var9 var5))) (and (and (and (and (= var4 (write var9 var5 (O_node (node (next (getnode (read var9 var5))) var6)))) (= var3 var8)) (= var2 var7)) (= var1 var6)) (= var0 var5))))) (inv_main33 var4 var3 var0 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main20 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var5 var0)) (is-O_node (read var5 var0))))) (inv_main26 (write var5 var0 (O_node (node var1 (prev (getnode (read var5 var0)))))) var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main26 var11 var10 var9 var8 var7 var6) (and (and (is-O_node (read var11 var7)) (is-O_node (read var11 var7))) (and (and (and (and (and (= var5 (write var11 var7 (O_node (node (next (getnode (read var11 var7))) var6)))) (= var4 var10)) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 var6))))) (inv_main16 var5 var4 (+ var3 (- 1)) var2 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Heap) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main14 var7 var6 var5 var4) (and (and (is-O_node (read var7 var4)) (is-O_node (read var7 var4))) (and (and (and (= var3 (write var7 var4 (O_node (node (next (getnode (read var7 var4))) var4)))) (= var2 var6)) (= var1 var5)) (= var0 var4))))) (inv_main16 var3 var2 var1 var0 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 node) (var5 Heap) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main16 var11 var10 var9 var8 var7) (and (and (not (= nullAddr var6)) (and (and (and (and (and (= var5 (newHeap (alloc var11 (O_node var4)))) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7)) (= var6 (newAddr (alloc var11 (O_node var4)))))) (<= 0 (+ (+ var9 (- 1)) (- 1)))))) (inv_main20 var5 var3 var2 var1 var0 var6))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Heap)) (not (and (inv_main8 var3 var2 var1 var0) (not (is-O_node (read var3 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Heap)) (not (and (inv_main8 var3 var2 var1 var0) (and (is-O_node (read var3 var0)) (not (is-O_node (read var3 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Heap)) (not (and (inv_main14 var3 var2 var1 var0) (not (is-O_node (read var3 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Heap)) (not (and (inv_main14 var3 var2 var1 var0) (and (is-O_node (read var3 var0)) (not (is-O_node (read var3 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main20 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var5 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main20 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var5 var0)) (not (is-O_node (read var5 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main26 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var5 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main26 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var5 var1)) (not (is-O_node (read var5 var1))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main17 var4 var3 var2 var1 var0) (not (is-O_node (read var4 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main17 var4 var3 var2 var1 var0) (and (is-O_node (read var4 var1)) (not (is-O_node (read var4 var1))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main29 var4 var3 var2 var1 var0) (not (is-O_node (read var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main29 var4 var3 var2 var1 var0) (and (is-O_node (read var4 var0)) (not (is-O_node (read var4 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Heap)) (not (and (inv_main33 var3 var2 var1 var0) (not (is-O_node (read var3 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Heap)) (not (and (inv_main36 var4 var3 var2 var1 var0) (not (is-O_node (read var4 var1)))))))
(check-sat)
