(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-heap Heap Addr HeapObject
 defObj
 ((HeapObject 0) (TSLL 0)) (
  (
   (O_Int (getInt Int))
   (O_UInt (getUInt Int))
   (O_Addr (getAddr Addr))
   (O_TSLL (getTSLL TSLL))
   (defObj)
  )
  (
   (TSLL (next Addr) (prev Addr) (opt Addr) (data Int))
  )
))
(declare-fun inv_main11 (Heap Addr) Bool)
(declare-fun inv_main12 (Heap Addr Addr) Bool)
(declare-fun inv_main13 (Heap Addr) Bool)
(declare-fun inv_main14 (Heap Addr) Bool)
(declare-fun inv_main16 (Heap Addr) Bool)
(declare-fun inv_main17 (Heap Addr) Bool)
(declare-fun inv_main18 (Heap Addr Addr) Bool)
(declare-fun inv_main2 (Heap) Bool)
(declare-fun inv_main22 (Heap Addr Addr) Bool)
(declare-fun inv_main23 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main24 (Heap Addr Addr) Bool)
(declare-fun inv_main25 (Heap Addr Addr) Bool)
(declare-fun inv_main28 (Heap Addr Addr) Bool)
(declare-fun inv_main3 (Heap Addr) Bool)
(declare-fun inv_main32 (Heap Addr Addr) Bool)
(declare-fun inv_main33 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main34 (Heap Addr Addr) Bool)
(declare-fun inv_main35 (Heap Addr Addr) Bool)
(declare-fun inv_main37 (Heap Addr Addr) Bool)
(declare-fun inv_main38 (Heap Addr Addr) Bool)
(declare-fun inv_main4 (Heap Addr) Bool)
(declare-fun inv_main41 (Heap Addr Addr) Bool)
(declare-fun inv_main42 (Heap Addr Addr) Bool)
(declare-fun inv_main44 (Heap Addr Addr) Bool)
(declare-fun inv_main46 (Heap Addr Addr Int) Bool)
(declare-fun inv_main48 (Heap Addr Addr Int) Bool)
(declare-fun inv_main50 (Heap Addr Addr Int) Bool)
(declare-fun inv_main58 (Heap Addr Addr) Bool)
(declare-fun inv_main59 (Heap Addr Addr) Bool)
(declare-fun inv_main62 (Heap Addr Addr) Bool)
(declare-fun inv_main7 (Heap Addr) Bool)
(assert (inv_main2 emptyHeap))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (inv_main58 var6 var5 var4) (and (is-O_TSLL (read var6 var4)) (and (and (and (= var3 var6) (= var2 var5)) (= var1 var4)) (= var0 (next (getTSLL (read var6 var4)))))))) (inv_main59 var3 var2 var0))))
(assert (forall ((var0 TSLL) (var1 Heap)) (or (not (inv_main2 var1)) (inv_main3 (newHeap (alloc var1 (O_TSLL var0))) (newAddr (alloc var1 (O_TSLL var0)))))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Int) (var3 Addr) (var4 Heap)) (or (not (and (inv_main4 var4 var3) (and (not (= var2 0)) (and (and (is-O_TSLL (read var4 var3)) (is-O_TSLL (read var4 var3))) (and (= var1 (write var4 var3 (O_TSLL (TSLL (next (getTSLL (read var4 var3))) nullAddr (opt (getTSLL (read var4 var3))) (data (getTSLL (read var4 var3))))))) (= var0 var3)))))) (inv_main7 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main23 var3 var2 var1 var0) (and (is-O_TSLL (read var3 var1)) (is-O_TSLL (read var3 var1))))) (inv_main22 (write var3 var1 (O_TSLL (TSLL var0 (prev (getTSLL (read var3 var1))) (opt (getTSLL (read var3 var1))) (data (getTSLL (read var3 var1)))))) var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main35 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (is-O_TSLL (read var2 var0))))) (inv_main38 (write var2 var0 (O_TSLL (TSLL (next (getTSLL (read var2 var0))) (prev (getTSLL (read var2 var0))) (opt (getTSLL (read var2 var0))) 0))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Int) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (inv_main25 var7 var6 var5) (and (= var4 0) (and (= var3 0) (and (and (is-O_TSLL (read var7 var5)) (is-O_TSLL (read var7 var5))) (and (and (= var2 (write var7 var5 (O_TSLL (TSLL nullAddr (prev (getTSLL (read var7 var5))) (opt (getTSLL (read var7 var5))) (data (getTSLL (read var7 var5))))))) (= var1 var6)) (= var0 var5))))))) (inv_main35 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main12 var2 var1 var0) (and (is-O_TSLL (read var2 var1)) (is-O_TSLL (read var2 var1))))) (inv_main11 (write var2 var1 (O_TSLL (TSLL (next (getTSLL (read var2 var1))) (prev (getTSLL (read var2 var1))) var0 (data (getTSLL (read var2 var1)))))) var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (inv_main25 var6 var5 var4) (and (not (= var3 0)) (and (and (is-O_TSLL (read var6 var4)) (is-O_TSLL (read var6 var4))) (and (and (= var2 (write var6 var4 (O_TSLL (TSLL nullAddr (prev (getTSLL (read var6 var4))) (opt (getTSLL (read var6 var4))) (data (getTSLL (read var6 var4))))))) (= var1 var5)) (= var0 var4)))))) (inv_main28 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main50 var3 var2 var1 var0) (not (= var0 0)))) (inv_main42 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap) (var7 Int) (var8 Int) (var9 Addr) (var10 Addr) (var11 Heap)) (or (not (and (inv_main50 var11 var10 var9 var8) (and (and (not (= var7 0)) (and (and (= var8 0) (is-O_TSLL (read var11 var9))) (and (and (and (= var6 var11) (= var5 var10)) (= var4 var9)) (= var3 (opt (getTSLL (read var11 var9))))))) (and (and (and (= var2 var6) (= var1 var5)) (= var0 var4)) (or (and (= var3 var4) (= var7 1)) (and (not (= var3 var4)) (= var7 0))))))) (inv_main42 var2 var1 var0))))
(assert (forall ((var0 TSLL) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (inv_main28 var6 var5 var4) (and (and (is-O_TSLL (read var6 var4)) (is-O_TSLL (read var6 var4))) (and (and (= var3 (write var6 var4 (O_TSLL (TSLL (next (getTSLL (read var6 var4))) (prev (getTSLL (read var6 var4))) (opt (getTSLL (read var6 var4))) 2)))) (= var2 var5)) (= var1 var4))))) (inv_main33 (newHeap (alloc var3 (O_TSLL var0))) var2 var1 (newAddr (alloc var3 (O_TSLL var0)))))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Int) (var3 Int) (var4 Addr) (var5 Heap)) (or (not (and (inv_main4 var5 var4) (and (not (= var3 0)) (and (= var2 0) (and (and (is-O_TSLL (read var5 var4)) (is-O_TSLL (read var5 var4))) (and (= var1 (write var5 var4 (O_TSLL (TSLL (next (getTSLL (read var5 var4))) nullAddr (opt (getTSLL (read var5 var4))) (data (getTSLL (read var5 var4))))))) (= var0 var4))))))) (inv_main13 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main22 var2 var1 var0) (and (and (is-O_TSLL (read var2 var0)) (is-O_TSLL (read var2 (next (getTSLL (read var2 var0)))))) (is-O_TSLL (read var2 (next (getTSLL (read var2 var0)))))))) (inv_main24 (write var2 (next (getTSLL (read var2 var0))) (O_TSLL (TSLL (next (getTSLL (read var2 (next (getTSLL (read var2 var0)))))) var0 (opt (getTSLL (read var2 (next (getTSLL (read var2 var0)))))) (data (getTSLL (read var2 (next (getTSLL (read var2 var0))))))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Int) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (inv_main25 var7 var6 var5) (and (not (= var4 0)) (and (= var3 0) (and (and (is-O_TSLL (read var7 var5)) (is-O_TSLL (read var7 var5))) (and (and (= var2 (write var7 var5 (O_TSLL (TSLL nullAddr (prev (getTSLL (read var7 var5))) (opt (getTSLL (read var7 var5))) (data (getTSLL (read var7 var5))))))) (= var1 var6)) (= var0 var5))))))) (inv_main34 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (inv_main42 var6 var5 var4) (and (not (= var3 nullAddr)) (and (is-O_TSLL (read var6 var4)) (and (and (and (= var2 var6) (= var1 var5)) (= var0 var4)) (= var3 (next (getTSLL (read var6 var4))))))))) (inv_main41 var2 var1 var3))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main18 var3 var2 var1) (and (not (= var2 nullAddr)) (= var0 0)))) (inv_main41 var3 var2 var2))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main33 var3 var2 var1 var0) (and (is-O_TSLL (read var3 var1)) (is-O_TSLL (read var3 var1))))) (inv_main32 (write var3 var1 (O_TSLL (TSLL (next (getTSLL (read var3 var1))) (prev (getTSLL (read var3 var1))) var0 (data (getTSLL (read var3 var1)))))) var2 var1))))
(assert (forall ((var0 Addr) (var1 Heap)) (or (not (and (inv_main13 var1 var0) (and (is-O_TSLL (read var1 var0)) (is-O_TSLL (read var1 var0))))) (inv_main16 (write var1 var0 (O_TSLL (TSLL (next (getTSLL (read var1 var0))) (prev (getTSLL (read var1 var0))) (opt (getTSLL (read var1 var0))) 1))) var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main34 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (is-O_TSLL (read var2 var0))))) (inv_main37 (write var2 var0 (O_TSLL (TSLL (next (getTSLL (read var2 var0))) (prev (getTSLL (read var2 var0))) (opt (getTSLL (read var2 var0))) 1))) var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main46 var3 var2 var1 var0) (not (= var0 2)))) (inv_main48 var3 var2 var1 0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (inv_main46 var7 var6 var5 var4) (and (and (= var4 2) (is-O_TSLL (read var7 var5))) (and (and (and (= var3 var7) (= var2 var6)) (= var1 var5)) (= var0 (opt (getTSLL (read var7 var5)))))))) (and (or (not (not (= var0 var1))) (inv_main48 var3 var2 var1 1)) (or (not (= var0 var1)) (inv_main48 var3 var2 var1 0))))))
(assert (forall ((var0 TSLL) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Heap)) (or (not (and (inv_main7 var4 var3) (and (and (is-O_TSLL (read var4 var3)) (is-O_TSLL (read var4 var3))) (and (= var2 (write var4 var3 (O_TSLL (TSLL (next (getTSLL (read var4 var3))) (prev (getTSLL (read var4 var3))) (opt (getTSLL (read var4 var3))) 2)))) (= var1 var3))))) (inv_main12 (newHeap (alloc var2 (O_TSLL var0))) var1 (newAddr (alloc var2 (O_TSLL var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main41 var2 var1 var0) (is-O_TSLL (read var2 var0)))) (inv_main46 var2 var1 var0 (data (getTSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Int) (var3 Int) (var4 Addr) (var5 Heap)) (or (not (and (inv_main4 var5 var4) (and (= var3 0) (and (= var2 0) (and (and (is-O_TSLL (read var5 var4)) (is-O_TSLL (read var5 var4))) (and (= var1 (write var5 var4 (O_TSLL (TSLL (next (getTSLL (read var5 var4))) nullAddr (opt (getTSLL (read var5 var4))) (data (getTSLL (read var5 var4))))))) (= var0 var4))))))) (inv_main14 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (inv_main59 var6 var5 var4) (and (and (= var3 2) (is-O_TSLL (read var6 var5))) (and (and (and (= var2 var6) (= var1 var5)) (= var0 var4)) (= var3 (data (getTSLL (read var6 var5)))))))) (inv_main62 var2 var1 var0))))
(assert (forall ((var0 TSLL) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main18 var4 var3 var2) (not (= var1 0)))) (inv_main23 (newHeap (alloc var4 (O_TSLL var0))) var3 var2 (newAddr (alloc var4 (O_TSLL var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main32 var2 var1 var0) (and (and (is-O_TSLL (read var2 var0)) (is-O_TSLL (read var2 (opt (getTSLL (read var2 var0)))))) (is-O_TSLL (read var2 (opt (getTSLL (read var2 var0)))))))) (inv_main18 (write var2 (opt (getTSLL (read var2 var0))) (O_TSLL (TSLL nullAddr (prev (getTSLL (read var2 (opt (getTSLL (read var2 var0)))))) (opt (getTSLL (read var2 (opt (getTSLL (read var2 var0)))))) (data (getTSLL (read var2 (opt (getTSLL (read var2 var0))))))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main37 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (is-O_TSLL (read var2 var0))))) (inv_main18 (write var2 var0 (O_TSLL (TSLL (next (getTSLL (read var2 var0))) (prev (getTSLL (read var2 var0))) var0 (data (getTSLL (read var2 var0)))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main38 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (is-O_TSLL (read var2 var0))))) (inv_main18 (write var2 var0 (O_TSLL (TSLL (next (getTSLL (read var2 var0))) (prev (getTSLL (read var2 var0))) var0 (data (getTSLL (read var2 var0)))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Heap)) (or (not (and (inv_main11 var3 var2) (and (and (and (is-O_TSLL (read var3 var2)) (is-O_TSLL (read var3 (opt (getTSLL (read var3 var2)))))) (is-O_TSLL (read var3 (opt (getTSLL (read var3 var2)))))) (and (= var1 (write var3 (opt (getTSLL (read var3 var2))) (O_TSLL (TSLL nullAddr (prev (getTSLL (read var3 (opt (getTSLL (read var3 var2)))))) (opt (getTSLL (read var3 (opt (getTSLL (read var3 var2)))))) (data (getTSLL (read var3 (opt (getTSLL (read var3 var2)))))))))) (= var0 var2))))) (inv_main18 var1 var0 var0))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Heap)) (or (not (and (inv_main16 var3 var2) (and (and (is-O_TSLL (read var3 var2)) (is-O_TSLL (read var3 var2))) (and (= var1 (write var3 var2 (O_TSLL (TSLL (next (getTSLL (read var3 var2))) (prev (getTSLL (read var3 var2))) var2 (data (getTSLL (read var3 var2))))))) (= var0 var2))))) (inv_main18 var1 var0 var0))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Heap)) (or (not (and (inv_main17 var3 var2) (and (and (is-O_TSLL (read var3 var2)) (is-O_TSLL (read var3 var2))) (and (= var1 (write var3 var2 (O_TSLL (TSLL (next (getTSLL (read var3 var2))) (prev (getTSLL (read var3 var2))) var2 (data (getTSLL (read var3 var2))))))) (= var0 var2))))) (inv_main18 var1 var0 var0))))
(assert (forall ((var0 Addr) (var1 Heap)) (or (not (and (inv_main14 var1 var0) (and (is-O_TSLL (read var1 var0)) (is-O_TSLL (read var1 var0))))) (inv_main17 (write var1 var0 (O_TSLL (TSLL (next (getTSLL (read var1 var0))) (prev (getTSLL (read var1 var0))) (opt (getTSLL (read var1 var0))) 0))) var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main48 var3 var2 var1 var0) (= var0 0))) (inv_main50 var3 var2 var1 0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (inv_main48 var7 var6 var5 var4) (and (and (and (not (= var4 0)) (is-O_TSLL (read var7 var5))) (is-O_TSLL (read var7 (opt (getTSLL (read var7 var5)))))) (and (and (and (= var3 var7) (= var2 var6)) (= var1 var5)) (= var0 (next (getTSLL (read var7 (opt (getTSLL (read var7 var5))))))))))) (and (or (not (= var0 nullAddr)) (inv_main50 var3 var2 var1 1)) (or (not (not (= var0 nullAddr))) (inv_main50 var3 var2 var1 0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (inv_main24 var6 var5 var4) (and (is-O_TSLL (read var6 var4)) (and (and (and (= var3 var6) (= var2 var5)) (= var1 var4)) (= var0 (next (getTSLL (read var6 var4)))))))) (inv_main25 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Heap)) (or (not (and (inv_main3 var1 var0) (and (is-O_TSLL (read var1 var0)) (is-O_TSLL (read var1 var0))))) (inv_main4 (write var1 var0 (O_TSLL (TSLL nullAddr (prev (getTSLL (read var1 var0))) (opt (getTSLL (read var1 var0))) (data (getTSLL (read var1 var0)))))) var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap) (var7 Int) (var8 Int) (var9 Addr) (var10 Addr) (var11 Heap)) (or (not (and (inv_main50 var11 var10 var9 var8) (and (and (= var7 0) (and (and (= var8 0) (is-O_TSLL (read var11 var9))) (and (and (and (= var6 var11) (= var5 var10)) (= var4 var9)) (= var3 (opt (getTSLL (read var11 var9))))))) (and (and (and (= var2 var6) (= var1 var5)) (= var0 var4)) (or (and (= var3 var4) (= var7 1)) (and (not (= var3 var4)) (= var7 0))))))) (inv_main44 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (inv_main42 var6 var5 var4) (and (not (= var3 nullAddr)) (and (= var2 nullAddr) (and (is-O_TSLL (read var6 var4)) (and (and (and (= var1 var6) (= var3 var5)) (= var0 var4)) (= var2 (next (getTSLL (read var6 var4)))))))))) (inv_main58 var1 var3 var3))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main18 var3 var2 var1) (and (not (= var2 nullAddr)) (and (= var2 nullAddr) (= var0 0))))) (inv_main58 var3 var2 var2))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (inv_main62 var8 var7 var6) (and (and (not (= var5 nullAddr)) (and (is-O_TSLL (read var8 var7)) (and (and (= var4 (write var8 (opt (getTSLL (read var8 var7))) defObj)) (= var3 var7)) (= var2 var6)))) (and (and (= var1 (write var4 var3 defObj)) (= var0 var3)) (= var5 var2))))) (inv_main58 var1 var5 var5))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Int) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Heap)) (or (not (and (inv_main59 var9 var8 var7) (and (and (not (= var6 nullAddr)) (and (and (not (= var5 2)) (is-O_TSLL (read var9 var8))) (and (and (and (= var4 var9) (= var3 var8)) (= var2 var7)) (= var5 (data (getTSLL (read var9 var8))))))) (and (and (= var1 (write var4 var3 defObj)) (= var0 var3)) (= var6 var2))))) (inv_main58 var1 var6 var6))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main3 var1 var0) (not (is-O_TSLL (read var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main3 var1 var0) (and (is-O_TSLL (read var1 var0)) (not (is-O_TSLL (read var1 var0))))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main4 var1 var0) (not (is-O_TSLL (read var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main4 var1 var0) (and (is-O_TSLL (read var1 var0)) (not (is-O_TSLL (read var1 var0))))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main7 var1 var0) (not (is-O_TSLL (read var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main7 var1 var0) (and (is-O_TSLL (read var1 var0)) (not (is-O_TSLL (read var1 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main12 var2 var1 var0) (not (is-O_TSLL (read var2 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main12 var2 var1 var0) (and (is-O_TSLL (read var2 var1)) (not (is-O_TSLL (read var2 var1))))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main11 var1 var0) (not (is-O_TSLL (read var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main11 var1 var0) (and (is-O_TSLL (read var1 var0)) (not (is-O_TSLL (read var1 (opt (getTSLL (read var1 var0)))))))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main11 var1 var0) (and (and (is-O_TSLL (read var1 var0)) (is-O_TSLL (read var1 (opt (getTSLL (read var1 var0)))))) (not (is-O_TSLL (read var1 (opt (getTSLL (read var1 var0)))))))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main13 var1 var0) (not (is-O_TSLL (read var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main13 var1 var0) (and (is-O_TSLL (read var1 var0)) (not (is-O_TSLL (read var1 var0))))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main16 var1 var0) (not (is-O_TSLL (read var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main16 var1 var0) (and (is-O_TSLL (read var1 var0)) (not (is-O_TSLL (read var1 var0))))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main14 var1 var0) (not (is-O_TSLL (read var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main14 var1 var0) (and (is-O_TSLL (read var1 var0)) (not (is-O_TSLL (read var1 var0))))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main17 var1 var0) (not (is-O_TSLL (read var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main17 var1 var0) (and (is-O_TSLL (read var1 var0)) (not (is-O_TSLL (read var1 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main23 var3 var2 var1 var0) (not (is-O_TSLL (read var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main23 var3 var2 var1 var0) (and (is-O_TSLL (read var3 var1)) (not (is-O_TSLL (read var3 var1))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main22 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main22 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (not (is-O_TSLL (read var2 (next (getTSLL (read var2 var0)))))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main22 var2 var1 var0) (and (and (is-O_TSLL (read var2 var0)) (is-O_TSLL (read var2 (next (getTSLL (read var2 var0)))))) (not (is-O_TSLL (read var2 (next (getTSLL (read var2 var0)))))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main24 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main25 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main25 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (not (is-O_TSLL (read var2 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main28 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main28 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (not (is-O_TSLL (read var2 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main33 var3 var2 var1 var0) (not (is-O_TSLL (read var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main33 var3 var2 var1 var0) (and (is-O_TSLL (read var3 var1)) (not (is-O_TSLL (read var3 var1))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main32 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main32 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (not (is-O_TSLL (read var2 (opt (getTSLL (read var2 var0)))))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main32 var2 var1 var0) (and (and (is-O_TSLL (read var2 var0)) (is-O_TSLL (read var2 (opt (getTSLL (read var2 var0)))))) (not (is-O_TSLL (read var2 (opt (getTSLL (read var2 var0)))))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main34 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main34 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (not (is-O_TSLL (read var2 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main37 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main37 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (not (is-O_TSLL (read var2 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main35 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main35 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (not (is-O_TSLL (read var2 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main38 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main38 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (not (is-O_TSLL (read var2 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main41 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main46 var3 var2 var1 var0) (and (= var0 2) (not (is-O_TSLL (read var3 var1))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main48 var3 var2 var1 var0) (and (not (= var0 0)) (not (is-O_TSLL (read var3 var1))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main48 var3 var2 var1 var0) (and (and (not (= var0 0)) (is-O_TSLL (read var3 var1))) (not (is-O_TSLL (read var3 (opt (getTSLL (read var3 var1)))))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main50 var3 var2 var1 var0) (and (= var0 0) (not (is-O_TSLL (read var3 var1))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (inv_main44 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main42 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main58 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main59 var2 var1 var0) (not (is-O_TSLL (read var2 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main62 var2 var1 var0) (not (is-O_TSLL (read var2 var1)))))))
(check-sat)
