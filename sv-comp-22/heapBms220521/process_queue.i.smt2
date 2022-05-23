(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-heap Heap Addr HeapObject
 defObj
 ((HeapObject 0) (process_node 0)) (
  (
   (O_Int (getInt Int))
   (O_UInt (getUInt Int))
   (O_Addr (getAddr Addr))
   (O_process_node (getprocess_node process_node))
   (defObj)
  )
  (
   (process_node (process_id Int) (time_to_wait Int) (next Addr))
  )
))
(declare-fun inv_main15 (Heap Addr Int Int Addr) Bool)
(declare-fun inv_main16 (Heap Addr Int Int Addr) Bool)
(declare-fun inv_main18 (Heap Addr Int Int Addr Addr Int) Bool)
(declare-fun inv_main2 (Heap) Bool)
(declare-fun inv_main31 (Heap Addr Int Int Addr Addr Addr) Bool)
(declare-fun inv_main34 (Heap Addr Int Int Addr Addr Addr) Bool)
(declare-fun inv_main37 (Heap Addr Int Int Addr Addr Addr) Bool)
(declare-fun inv_main38 (Heap Addr Int Int Addr Addr Addr) Bool)
(declare-fun inv_main4 (Heap Addr Int) Bool)
(declare-fun inv_main40 (Heap Addr Int Int Addr Addr Addr Addr) Bool)
(declare-fun inv_main41 (Heap Addr Int Int Addr Addr Addr Int) Bool)
(declare-fun inv_main42 (Heap Addr Int Int Addr Addr Addr) Bool)
(declare-fun inv_main45 (Heap Addr Int Addr) Bool)
(declare-fun inv_main54 (Heap Addr Int Addr Addr) Bool)
(declare-fun inv_main55 (Heap Addr Int Addr Addr) Bool)
(declare-fun inv_main56 (Heap Addr Int Addr Addr) Bool)
(declare-fun inv_main7 (Heap Addr Int) Bool)
(assert (inv_main2 emptyHeap))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Heap)) (or (not (and (inv_main42 var14 var13 var12 var11 var10 var9 var8) (and (not (= var7 nullAddr)) (and (is-O_process_node (read var14 var10)) (and (and (and (and (and (and (and (= var6 var14) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var7 (next (getprocess_node (read var14 var10))))))))) (inv_main31 var6 var5 var4 var3 var7 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Addr) (var10 Addr) (var11 Heap) (var12 Heap) (var13 Addr) (var14 Int) (var15 Addr) (var16 Heap)) (or (not (and (inv_main4 var16 var15 var14) (and (and (and (not (= var13 nullAddr)) (and (and (and (and (and (and (= var12 var11) (= var10 var9)) (= var8 var7)) (= var6 var5)) (= var13 var4)) (= var3 var2)) (= var1 nullAddr))) (and (and (and (and (and (= var11 var16) (= var9 var15)) (= var7 var14)) (= var5 1)) (= var4 var15)) (= var2 nullAddr))) (and (<= 0 (+ (+ var14 (- 1)) (- 1))) (and (not (<= 0 (+ (+ 1000 (* (- 1) var14)) (- 1)))) (not (= var0 0))))))) (inv_main31 var12 var10 var8 var6 var13 var3 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Addr) (var11 Addr) (var12 Heap) (var13 Heap) (var14 Addr) (var15 Int) (var16 Addr) (var17 Heap)) (or (not (and (inv_main4 var17 var16 var15) (and (and (and (not (= var14 nullAddr)) (and (and (and (and (and (and (= var13 var12) (= var11 var10)) (= var9 var8)) (= var7 var6)) (= var14 var5)) (= var4 var3)) (= var2 nullAddr))) (and (and (and (and (and (= var12 var17) (= var10 var16)) (= var8 var15)) (= var6 1)) (= var5 var16)) (= var3 nullAddr))) (and (<= 0 (+ (+ var15 (- 1)) (- 1))) (and (= var1 0) (and (<= 0 (+ (+ 1000 (* (- 1) var15)) (- 1))) (not (= var0 0)))))))) (inv_main31 var13 var11 var9 var7 var14 var4 var2))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap)) (or (not (inv_main56 var4 var3 var2 var1 var0)) (inv_main55 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap) (var5 Int) (var6 Addr) (var7 Addr) (var8 Int) (var9 Addr) (var10 Heap)) (or (not (and (inv_main54 var10 var9 var8 var7 var6) (and (and (<= 0 (+ var5 (- 1))) (is-O_process_node (read var10 var6))) (and (and (and (and (and (= var4 var10) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 var6)) (= var5 (time_to_wait (getprocess_node (read var10 var6)))))))) (inv_main55 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap) (var5 Int) (var6 Addr) (var7 Addr) (var8 Int) (var9 Addr) (var10 Heap)) (or (not (and (inv_main54 var10 var9 var8 var7 var6) (and (and (not (<= 0 (+ var5 (- 1)))) (is-O_process_node (read var10 var6))) (and (and (and (and (and (= var4 var10) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 var6)) (= var5 (time_to_wait (getprocess_node (read var10 var6)))))))) (inv_main56 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Heap)) (or (not (and (inv_main42 var14 var13 var12 var11 var10 var9 var8) (and (= var7 nullAddr) (and (is-O_process_node (read var14 var10)) (and (and (and (and (and (and (and (= var6 var14) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var7 (next (getprocess_node (read var14 var10))))))))) (inv_main45 var6 var5 (+ var4 (- 1)) var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Addr) (var10 Addr) (var11 Heap) (var12 Heap) (var13 Addr) (var14 Int) (var15 Addr) (var16 Heap)) (or (not (and (inv_main4 var16 var15 var14) (and (and (and (= var13 nullAddr) (and (and (and (and (and (and (= var12 var11) (= var10 var9)) (= var8 var7)) (= var6 var5)) (= var13 var4)) (= var3 var2)) (= var1 nullAddr))) (and (and (and (and (and (= var11 var16) (= var9 var15)) (= var7 var14)) (= var5 1)) (= var4 var15)) (= var2 nullAddr))) (and (<= 0 (+ (+ var14 (- 1)) (- 1))) (and (not (<= 0 (+ (+ 1000 (* (- 1) var14)) (- 1)))) (not (= var0 0))))))) (inv_main45 var12 var10 (+ var8 (- 1)) var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Addr) (var11 Addr) (var12 Heap) (var13 Heap) (var14 Addr) (var15 Int) (var16 Addr) (var17 Heap)) (or (not (and (inv_main4 var17 var16 var15) (and (and (and (= var14 nullAddr) (and (and (and (and (and (and (= var13 var12) (= var11 var10)) (= var9 var8)) (= var7 var6)) (= var14 var5)) (= var4 var3)) (= var2 nullAddr))) (and (and (and (and (and (= var12 var17) (= var10 var16)) (= var8 var15)) (= var6 1)) (= var5 var16)) (= var3 nullAddr))) (and (<= 0 (+ (+ var15 (- 1)) (- 1))) (and (= var1 0) (and (<= 0 (+ (+ 1000 (* (- 1) var15)) (- 1))) (not (= var0 0)))))))) (inv_main45 var13 var11 (+ var9 (- 1)) var2))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap) (var7 Int) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Heap)) (or (not (and (inv_main31 var14 var13 var12 var11 var10 var9 var8) (and (and (not (= var7 1)) (is-O_process_node (read var14 var10))) (and (and (and (and (and (and (and (= var6 var14) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var7 (time_to_wait (getprocess_node (read var14 var10)))))))) (inv_main34 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Heap) (var6 Int) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Heap)) (or (not (and (inv_main31 var14 var13 var12 var11 var10 var9 var8) (and (= var7 nullAddr) (and (and (= var6 1) (is-O_process_node (read var14 var10))) (and (and (and (and (and (and (and (= var5 var14) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var7 var9)) (= var0 var8)) (= var6 (time_to_wait (getprocess_node (read var14 var10))))))))) (inv_main37 var5 var4 var3 var2 var1 var7 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Int) (var9 Addr) (var10 Heap)) (or (not (and (inv_main55 var10 var9 var8 var7 var6) (and (not (= var5 nullAddr)) (and (is-O_process_node (read var10 var6)) (and (and (and (and (and (= var4 var10) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 var6)) (= var5 (next (getprocess_node (read var10 var6))))))))) (inv_main54 var4 var3 var2 var1 var5))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Heap)) (or (not (and (inv_main7 var2 var1 var0) (not (= var1 nullAddr)))) (inv_main54 var2 var1 var0 var1 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Heap)) (or (not (and (inv_main16 var5 var4 var3 var2 var1) (and (is-O_process_node (read var5 var1)) (is-O_process_node (read var5 var1))))) (inv_main15 (write var5 var1 (O_process_node (process_node var0 (time_to_wait (getprocess_node (read var5 var1))) (next (getprocess_node (read var5 var1)))))) var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap) (var7 Int) (var8 Addr) (var9 Addr) (var10 Int) (var11 Int) (var12 Addr) (var13 Heap)) (or (not (and (inv_main18 var13 var12 var11 var10 var9 var8 var7) (and (and (is-O_process_node (read var13 var8)) (is-O_process_node (read var13 var8))) (and (and (and (and (and (and (= var6 (write var13 var8 (O_process_node (process_node (process_id (getprocess_node (read var13 var8))) (time_to_wait (getprocess_node (read var13 var8))) var12)))) (= var5 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main7 var6 var1 var4))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Int) (var7 Addr) (var8 Heap)) (or (not (and (inv_main45 var8 var7 var6 var5) (and (is-O_process_node (read var8 var5)) (and (and (and (and (= var4 var8) (= var3 var7)) (= var2 var6)) (= var1 var5)) (= var0 (process_id (getprocess_node (read var8 var5)))))))) (inv_main7 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Heap)) (or (not (and (inv_main4 var3 var2 var1) (and (not (<= 0 (+ (+ var1 (- 1)) (- 1)))) (and (not (<= 0 (+ (+ 1000 (* (- 1) var1)) (- 1)))) (not (= var0 0)))))) (inv_main7 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Addr) (var4 Heap)) (or (not (and (inv_main4 var4 var3 var2) (and (not (<= 0 (+ (+ var2 (- 1)) (- 1)))) (and (= var1 0) (and (<= 0 (+ (+ 1000 (* (- 1) var2)) (- 1))) (not (= var0 0))))))) (inv_main7 var4 var3 var2))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Heap)) (or (not (and (inv_main40 var14 var13 var12 var11 var10 var9 var8 var7) (and (and (is-O_process_node (read var14 var9)) (is-O_process_node (read var14 var9))) (and (and (and (and (and (and (= var6 (write var14 var9 (O_process_node (process_node (process_id (getprocess_node (read var14 var9))) (time_to_wait (getprocess_node (read var14 var9))) var7)))) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8))))) (inv_main42 var6 var5 var4 var3 var2 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap) (var7 Int) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Heap)) (or (not (and (inv_main41 var14 var13 var12 var11 var10 var9 var8 var7) (and (is-O_process_node (read var14 var10)) (and (and (and (and (and (and (= var6 (write var14 var10 (O_process_node (process_node (process_id (getprocess_node (read var14 var10))) (+ var7 (- 1)) (next (getprocess_node (read var14 var10))))))) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8))))) (inv_main42 var6 var5 var4 var3 var2 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Addr) (var7 Heap) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Heap)) (or (not (and (inv_main37 var14 var13 var12 var11 var10 var9 var8) (and (is-O_process_node (read var14 var10)) (and (and (and (and (and (and (and (= var7 var14) (= var6 var13)) (= var5 var12)) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 (next (getprocess_node (read var14 var10)))))))) (inv_main42 var7 var0 var5 var4 var3 var3 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Int) (var9 Addr) (var10 Heap)) (or (not (and (inv_main55 var10 var9 var8 var7 var6) (and (= var5 nullAddr) (and (is-O_process_node (read var10 var6)) (and (and (and (and (and (= var4 var10) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 var6)) (= var5 (next (getprocess_node (read var10 var6))))))))) (inv_main4 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Heap)) (or (not (and (inv_main7 var2 var1 var0) (= var1 nullAddr))) (inv_main4 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Heap)) (or (not (and (inv_main2 var2) (and (= var1 var2) (= var0 nullAddr)))) (inv_main4 var1 var0 1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Heap) (var6 Int) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Heap)) (or (not (and (inv_main31 var14 var13 var12 var11 var10 var9 var8) (and (not (= var7 nullAddr)) (and (and (= var6 1) (is-O_process_node (read var14 var10))) (and (and (and (and (and (and (and (= var5 var14) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var7 var9)) (= var0 var8)) (= var6 (time_to_wait (getprocess_node (read var14 var10))))))))) (inv_main38 var5 var4 var3 var2 var1 var7 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Addr) (var7 process_node) (var8 Heap) (var9 Int) (var10 Addr) (var11 Heap)) (or (not (and (inv_main4 var11 var10 var9) (and (and (and (and (and (= var8 (newHeap (alloc var11 (O_process_node var7)))) (= var6 var10)) (= var5 var9)) (= var4 var3)) (= var2 (newAddr (alloc var11 (O_process_node var7))))) (and (not (= var1 0)) (and (<= 0 (+ (+ 1000 (* (- 1) var9)) (- 1))) (not (= var0 0))))))) (inv_main16 var8 var6 var5 var4 var2))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 Heap)) (or (not (and (inv_main15 var9 var8 var7 var6 var5) (and (and (is-O_process_node (read var9 var5)) (is-O_process_node (read var9 var5))) (and (and (and (and (= var4 (write var9 var5 (O_process_node (process_node (process_id (getprocess_node (read var9 var5))) var7 (next (getprocess_node (read var9 var5))))))) (= var3 var8)) (= var2 (+ var7 1))) (= var1 var6)) (= var0 var5))))) (inv_main18 var4 var3 var2 var1 var0 var0 1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (or (not (and (inv_main38 var6 var5 var4 var3 var2 var1 var0) (is-O_process_node (read var6 var2)))) (inv_main40 var6 var5 var4 var3 var2 var1 var0 (next (getprocess_node (read var6 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (or (not (and (inv_main34 var6 var5 var4 var3 var2 var1 var0) (is-O_process_node (read var6 var2)))) (inv_main41 var6 var5 var4 var3 var2 var1 var0 (time_to_wait (getprocess_node (read var6 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Heap)) (not (and (inv_main16 var4 var3 var2 var1 var0) (not (is-O_process_node (read var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Heap)) (not (and (inv_main16 var4 var3 var2 var1 var0) (and (is-O_process_node (read var4 var0)) (not (is-O_process_node (read var4 var0))))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Heap)) (not (and (inv_main15 var4 var3 var2 var1 var0) (not (is-O_process_node (read var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Heap)) (not (and (inv_main15 var4 var3 var2 var1 var0) (and (is-O_process_node (read var4 var0)) (not (is-O_process_node (read var4 var0))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (not (is-O_process_node (read var6 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (and (is-O_process_node (read var6 var1)) (not (is-O_process_node (read var6 var1))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main31 var6 var5 var4 var3 var2 var1 var0) (not (is-O_process_node (read var6 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main37 var6 var5 var4 var3 var2 var1 var0) (not (is-O_process_node (read var6 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main38 var6 var5 var4 var3 var2 var1 var0) (not (is-O_process_node (read var6 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (inv_main40 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_process_node (read var7 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (inv_main40 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_process_node (read var7 var2)) (not (is-O_process_node (read var7 var2))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main34 var6 var5 var4 var3 var2 var1 var0) (not (is-O_process_node (read var6 var2)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (inv_main41 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_process_node (read var7 var3)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main42 var6 var5 var4 var3 var2 var1 var0) (not (is-O_process_node (read var6 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Heap)) (not (and (inv_main45 var3 var2 var1 var0) (not (is-O_process_node (read var3 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap)) (not (and (inv_main54 var4 var3 var2 var1 var0) (not (is-O_process_node (read var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap)) (not (inv_main56 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap)) (not (and (inv_main55 var4 var3 var2 var1 var0) (not (is-O_process_node (read var4 var0)))))))
(check-sat)
