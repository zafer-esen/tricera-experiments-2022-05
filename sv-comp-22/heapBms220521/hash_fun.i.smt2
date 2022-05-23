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
   (node (hash Int) (next Addr))
  )
))
(declare-fun inv_main2 (Heap) Bool)
(declare-fun inv_main22 (Heap Addr Int Int Int Int Addr) Bool)
(declare-fun inv_main23 (Heap Addr Int Int Int Int Addr) Bool)
(declare-fun inv_main25 (Heap Addr Int) Bool)
(declare-fun inv_main26 (Heap Addr Int) Bool)
(declare-fun inv_main27 (Heap Addr Int) Bool)
(declare-fun inv_main29 (Heap Addr Int Int) Bool)
(declare-fun inv_main5 (Heap Addr Int) Bool)
(assert (inv_main2 emptyHeap))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap) (var7 Addr) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Addr) (var13 Heap)) (or (not (and (inv_main23 var13 var12 var11 var10 var9 var8 var7) (and (and (is-O_node (read var13 var7)) (is-O_node (read var13 var7))) (and (and (and (and (and (and (= var6 (write var13 var7 (O_node (node var8 (next (getnode (read var13 var7))))))) (= var5 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main5 var6 var0 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Heap)) (or (not (and (inv_main5 var3 var2 var1) (and (or (not (<= 0 var1)) (not (<= 0 (+ 1000000 (* (- 1) var1))))) (not (= var0 0))))) (inv_main5 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Addr) (var4 Heap)) (or (not (and (inv_main5 var4 var3 var2) (and (or (not (<= 0 (+ (+ var1 (* (- 1) var2)) (- 1)))) (not (<= 0 (+ (+ (+ var2 100) (* (- 1) var1)) (- 1))))) (and (and (<= 0 var2) (<= 0 (+ 1000000 (* (- 1) var2)))) (not (= var0 0)))))) (inv_main5 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Heap) (var3 Heap)) (or (not (and (inv_main2 var3) (and (= var2 var3) (= var1 nullAddr)))) (inv_main5 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Int) (var5 Addr) (var6 Heap)) (or (not (and (inv_main26 var6 var5 var4) (and (not (= var3 nullAddr)) (and (is-O_node (read var6 var5)) (and (and (and (= var2 var6) (= var1 var5)) (= var0 var4)) (= var3 (next (getnode (read var6 var5))))))))) (inv_main25 var2 var3 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Heap)) (or (not (and (inv_main5 var3 var2 var1) (and (not (= var2 nullAddr)) (= var0 0)))) (inv_main25 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Heap)) (or (not (and (inv_main25 var2 var1 var0) (is-O_node (read var2 var1)))) (inv_main29 var2 var1 var0 (hash (getnode (read var2 var1)))))))
(assert (forall ((var0 node) (var1 Int) (var2 Int) (var3 Int) (var4 Addr) (var5 Heap)) (or (not (and (inv_main5 var5 var4 var3) (and (and (<= 0 (+ (+ var2 (* (- 1) var3)) (- 1))) (<= 0 (+ (+ (+ var3 100) (* (- 1) var2)) (- 1)))) (and (and (<= 0 var3) (<= 0 (+ 1000000 (* (- 1) var3)))) (not (= var1 0)))))) (inv_main22 (newHeap (alloc var5 (O_node var0))) var4 var3 var2 1 var2 (newAddr (alloc var5 (O_node var0)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Heap)) (or (not (inv_main27 var2 var1 var0)) (inv_main26 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Heap) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Addr) (var11 Heap)) (or (not (and (inv_main29 var11 var10 var9 var8) (and (and (not (= var7 0)) (and (and (<= 0 (+ var8 (* (- 1) var9))) (is-O_node (read var11 var10))) (and (and (and (= var6 var11) (= var5 var10)) (= var4 var9)) (= var3 (hash (getnode (read var11 var10))))))) (and (and (and (= var2 var6) (= var1 var5)) (= var0 var4)) (or (and (<= 0 (+ (+ (+ var4 100) (* (- 1) var3)) (- 1))) (= var7 1)) (and (not (<= 0 (+ (+ (+ var4 100) (* (- 1) var3)) (- 1)))) (= var7 0))))))) (inv_main26 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (or (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (is-O_node (read var6 var0))))) (inv_main23 (write var6 var0 (O_node (node (hash (getnode (read var6 var0))) var5))) var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Heap)) (or (not (and (inv_main29 var3 var2 var1 var0) (not (<= 0 (+ var0 (* (- 1) var1)))))) (inv_main27 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Heap) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Addr) (var11 Heap)) (or (not (and (inv_main29 var11 var10 var9 var8) (and (and (= var7 0) (and (and (<= 0 (+ var8 (* (- 1) var9))) (is-O_node (read var11 var10))) (and (and (and (= var6 var11) (= var5 var10)) (= var4 var9)) (= var3 (hash (getnode (read var11 var10))))))) (and (and (and (= var2 var6) (= var1 var5)) (= var0 var4)) (or (and (<= 0 (+ (+ (+ var4 100) (* (- 1) var3)) (- 1))) (= var7 1)) (and (not (<= 0 (+ (+ (+ var4 100) (* (- 1) var3)) (- 1)))) (= var7 0))))))) (inv_main27 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (not (is-O_node (read var6 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main23 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (read var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main23 var6 var5 var4 var3 var2 var1 var0) (and (is-O_node (read var6 var0)) (not (is-O_node (read var6 var0))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Heap)) (not (and (inv_main25 var2 var1 var0) (not (is-O_node (read var2 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Heap)) (not (and (inv_main29 var3 var2 var1 var0) (and (<= 0 (+ var0 (* (- 1) var1))) (not (is-O_node (read var3 var2))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Heap)) (not (inv_main27 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Heap)) (not (and (inv_main26 var2 var1 var0) (not (is-O_node (read var2 var1)))))))
(check-sat)