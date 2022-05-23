(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
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
   (node (h Int) (n Addr))
  )
))
(declare-fun inv_main12 (Heap Addr Addr Addr Int) Bool)
(declare-fun inv_main13 (Heap Addr Addr Addr Int) Bool)
(declare-fun inv_main14 (Heap Addr Addr Addr Int) Bool)
(declare-fun inv_main2 (Heap) Bool)
(declare-fun inv_main20 (Heap Addr Addr Addr Int) Bool)
(declare-fun inv_main23 (Heap Addr Addr Addr Int Int) Bool)
(declare-fun inv_main26 (Heap Addr Addr Addr Int) Bool)
(declare-fun inv_main29 (Heap Addr Addr Addr Int) Bool)
(declare-fun inv_main34 (Heap Addr Addr Addr Int) Bool)
(declare-fun inv_main35 (Heap Addr Addr Addr Int) Bool)
(declare-fun inv_main36 (Heap Addr Addr Addr Int) Bool)
(declare-fun inv_main44 (Heap Addr Addr Addr Int) Bool)
(declare-fun inv_main7 (Heap Addr Int) Bool)
(assert (inv_main2 emptyHeap))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main13 var4 var3 var2 var1 var0) (and (is-O_node (read var4 var1)) (is-O_node (read var4 var1))))) (inv_main29 (write var4 var1 (O_node (node var0 (n (getnode (read var4 var1)))))) var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap)) (or (not (inv_main23 var5 var4 var3 var2 var1 var0)) (inv_main23 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Addr) (var8 node) (var9 Heap) (var10 Heap) (var11 Addr) (var12 Int) (var13 Addr) (var14 Addr) (var15 Addr) (var16 Heap)) (or (not (and (inv_main14 var16 var15 var14 var13 var12) (and (= var11 nullAddr) (and (and (and (and (and (and (and (= var10 (newHeap (alloc var9 (O_node var8)))) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (= var11 (newAddr (alloc var9 (O_node var8))))) (and (is-O_node (read var16 var13)) (is-O_node (read var16 var13)))) (and (and (and (and (= var9 (write var16 var13 (O_node (node var12 (n (getnode (read var16 var13))))))) (= var6 var15)) (= var4 var14)) (= var2 var13)) (= var0 var12)))))) (inv_main23 var10 var7 var11 var3 var1 1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Int) (var6 Int) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (inv_main34 var10 var9 var8 var7 var6) (and (and (not (= var5 1)) (is-O_node (read var10 var7))) (and (and (and (and (and (= var4 var10) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 var6)) (= var5 (h (getnode (read var10 var7)))))))) (inv_main36 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Int) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Heap)) (or (not (and (inv_main29 var9 var8 var7 var6 var5) (and (not (= var4 nullAddr)) (and (and (is-O_node (read var9 var6)) (is-O_node (read var9 var6))) (and (and (and (and (= var3 (write var9 var6 (O_node (node (h (getnode (read var9 var6))) 0)))) (= var4 var8)) (= var2 var7)) (= var1 var6)) (= var0 var5)))))) (inv_main34 var3 var4 var2 var4 0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Int) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (inv_main35 var10 var9 var8 var7 var6) (and (not (= var5 nullAddr)) (and (is-O_node (read var10 var7)) (and (and (and (and (and (= var4 var10) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 var6)) (= var5 (n (getnode (read var10 var7))))))))) (inv_main34 var4 var3 var2 var5 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Addr) (var8 node) (var9 Heap) (var10 Heap) (var11 Addr) (var12 Int) (var13 Addr) (var14 Addr) (var15 Addr) (var16 Heap)) (or (not (and (inv_main14 var16 var15 var14 var13 var12) (and (not (= var11 nullAddr)) (and (and (and (and (and (and (and (= var10 (newHeap (alloc var9 (O_node var8)))) (= var7 var6)) (= var5 var4)) (= var3 var2)) (= var1 var0)) (= var11 (newAddr (alloc var9 (O_node var8))))) (and (is-O_node (read var16 var13)) (is-O_node (read var16 var13)))) (and (and (and (and (= var9 (write var16 var13 (O_node (node var12 (n (getnode (read var16 var13))))))) (= var6 var15)) (= var4 var14)) (= var2 var13)) (= var0 var12)))))) (inv_main20 var10 var7 var11 var3 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap)) (or (not (and (inv_main12 var5 var4 var3 var2 var1) (and (not (= var0 0)) (<= 0 (+ (+ 30 (* (- 1) var1)) (- 1)))))) (inv_main14 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Int) (var6 Int) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (inv_main34 var10 var9 var8 var7 var6) (and (and (= var5 1) (is-O_node (read var10 var7))) (and (and (and (and (and (= var4 var10) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 var6)) (= var5 (h (getnode (read var10 var7)))))))) (inv_main35 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Heap)) (or (not (inv_main7 var2 var1 var0)) (inv_main7 var2 var1 var0))))
(assert (forall ((var0 node) (var1 Heap) (var2 Addr) (var3 Heap)) (or (not (and (inv_main2 var3) (and (= var2 nullAddr) (and (= var1 (newHeap (alloc var3 (O_node var0)))) (= var2 (newAddr (alloc var3 (O_node var0)))))))) (inv_main7 var1 var2 1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main12 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ 30 (* (- 1) var0)) (- 1)))))) (inv_main13 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap)) (or (not (and (inv_main12 var5 var4 var3 var2 var1) (and (= var0 0) (<= 0 (+ (+ 30 (* (- 1) var1)) (- 1)))))) (inv_main13 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap) (var6 Int) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (inv_main26 var10 var9 var8 var7 var6) (and (is-O_node (read var10 var7)) (and (and (and (and (and (= var5 var10) (= var4 var9)) (= var3 var8)) (= var2 var7)) (= var1 var6)) (= var0 (n (getnode (read var10 var7)))))))) (inv_main12 var5 var4 var3 var0 (+ var1 1)))))
(assert (forall ((var0 Addr) (var1 node) (var2 Heap) (var3 Addr) (var4 Heap)) (or (not (and (inv_main2 var4) (and (not (= var3 nullAddr)) (and (= var2 (newHeap (alloc var4 (O_node var1)))) (= var3 (newAddr (alloc var4 (O_node var1)))))))) (inv_main12 var2 var3 var0 var3 0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Int) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Heap) (var11 Addr) (var12 Int) (var13 Addr) (var14 Addr) (var15 Addr) (var16 Heap)) (or (not (and (inv_main44 var16 var15 var14 var13 var12) (and (not (= var11 nullAddr)) (and (and (is-O_node (read var16 var13)) (and (and (and (and (and (= var10 var16) (= var9 var15)) (= var8 var14)) (= var7 var13)) (= var6 var12)) (= var5 (n (getnode (read var16 var13)))))) (and (and (and (and (and (= var4 (write var10 var7 defObj)) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 var6)) (= var11 var5)))))) (inv_main44 var4 var3 var2 var11 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Int) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Heap)) (or (not (and (inv_main29 var9 var8 var7 var6 var5) (and (not (= var4 nullAddr)) (and (= var4 nullAddr) (and (and (is-O_node (read var9 var6)) (is-O_node (read var9 var6))) (and (and (and (and (= var3 (write var9 var6 (O_node (node (h (getnode (read var9 var6))) 0)))) (= var4 var8)) (= var2 var7)) (= var1 var6)) (= var0 var5))))))) (inv_main44 var3 var4 var2 var4 0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Int) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (inv_main35 var10 var9 var8 var7 var6) (and (not (= var5 nullAddr)) (and (= var4 nullAddr) (and (is-O_node (read var10 var7)) (and (and (and (and (and (= var3 var10) (= var5 var9)) (= var2 var8)) (= var1 var7)) (= var0 var6)) (= var4 (n (getnode (read var10 var7)))))))))) (inv_main44 var3 var5 var2 var5 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main20 var4 var3 var2 var1 var0) (and (is-O_node (read var4 var1)) (is-O_node (read var4 var1))))) (inv_main26 (write var4 var1 (O_node (node (h (getnode (read var4 var1))) var2))) var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main14 var4 var3 var2 var1 var0) (not (is-O_node (read var4 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main14 var4 var3 var2 var1 var0) (and (is-O_node (read var4 var1)) (not (is-O_node (read var4 var1))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main20 var4 var3 var2 var1 var0) (not (is-O_node (read var4 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main20 var4 var3 var2 var1 var0) (and (is-O_node (read var4 var1)) (not (is-O_node (read var4 var1))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main26 var4 var3 var2 var1 var0) (not (is-O_node (read var4 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main13 var4 var3 var2 var1 var0) (not (is-O_node (read var4 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main13 var4 var3 var2 var1 var0) (and (is-O_node (read var4 var1)) (not (is-O_node (read var4 var1))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main29 var4 var3 var2 var1 var0) (not (is-O_node (read var4 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main29 var4 var3 var2 var1 var0) (and (is-O_node (read var4 var1)) (not (is-O_node (read var4 var1))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main34 var4 var3 var2 var1 var0) (not (is-O_node (read var4 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (inv_main36 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main35 var4 var3 var2 var1 var0) (not (is-O_node (read var4 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main44 var4 var3 var2 var1 var0) (not (is-O_node (read var4 var1)))))))
(check-sat)