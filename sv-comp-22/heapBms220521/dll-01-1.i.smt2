(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
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
   (TSLL (next Addr) (prev Addr) (inner Addr))
  )
))
(declare-fun inv_main101 (Heap Addr Addr) Bool)
(declare-fun inv_main104 (Heap Addr Addr) Bool)
(declare-fun inv_main107 (Heap Addr Addr) Bool)
(declare-fun inv_main109 (Heap Addr Addr) Bool)
(declare-fun inv_main11 (Heap Addr) Bool)
(declare-fun inv_main112 (Heap Addr Addr) Bool)
(declare-fun inv_main114 (Heap Addr Addr) Bool)
(declare-fun inv_main119 (Heap Addr Addr) Bool)
(declare-fun inv_main12 (Heap Addr) Bool)
(declare-fun inv_main15 (Heap Addr) Bool)
(declare-fun inv_main16 (Heap Addr Addr) Bool)
(declare-fun inv_main17 (Heap Addr) Bool)
(declare-fun inv_main2 (Heap) Bool)
(declare-fun inv_main20 (Heap Addr) Bool)
(declare-fun inv_main22 (Heap Addr Addr) Bool)
(declare-fun inv_main27 (Heap Addr Addr) Bool)
(declare-fun inv_main3 (Heap Addr) Bool)
(declare-fun inv_main31 (Heap Addr Addr) Bool)
(declare-fun inv_main32 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main33 (Heap Addr Addr) Bool)
(declare-fun inv_main34 (Heap Addr Addr) Bool)
(declare-fun inv_main39 (Heap Addr Addr) Bool)
(declare-fun inv_main4 (Heap Addr) Bool)
(declare-fun inv_main44 (Heap Addr Addr) Bool)
(declare-fun inv_main47 (Heap Addr Addr) Bool)
(declare-fun inv_main48 (Heap Addr Addr) Bool)
(declare-fun inv_main51 (Heap Addr Addr) Bool)
(declare-fun inv_main52 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main53 (Heap Addr Addr) Bool)
(declare-fun inv_main56 (Heap Addr Addr) Bool)
(declare-fun inv_main58 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main66 (Heap Addr Addr) Bool)
(declare-fun inv_main71 (Heap Addr Addr Int) Bool)
(declare-fun inv_main72 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main78 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main8 (Heap Addr) Bool)
(declare-fun inv_main80 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main83 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main85 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main88 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main90 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main94 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main96 (Heap Addr Addr Int Addr) Bool)
(assert (inv_main2 emptyHeap))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Int) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (inv_main27 var6 var5 var4) (and (= nullAddr var3) (and (= var2 0) (and (and (= var1 var6) (= var3 var5)) (= var0 nullAddr)))))) (inv_main66 var1 var3 var3))))
(assert (forall ((var0 TSLL) (var1 Heap)) (or (not (inv_main2 var1)) (inv_main3 (newHeap (alloc var1 (O_TSLL var0))) (newAddr (alloc var1 (O_TSLL var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main78 var4 var3 var2 var1 var0) (and (is-O_TSLL (read var4 var0)) (not (= nullAddr (inner (getTSLL (read var4 var0)))))))) (inv_main85 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Heap)) (or (not (and (inv_main3 var1 var0) (and (is-O_TSLL (read var1 var0)) (is-O_TSLL (read var1 var0))))) (inv_main4 (write var1 var0 (O_TSLL (TSLL nullAddr (prev (getTSLL (read var1 var0))) (inner (getTSLL (read var1 var0)))))) var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (inv_main94 var10 var9 var8 var7 var6) (and (not (= nullAddr var5)) (and (is-O_TSLL (read var10 var8)) (and (and (and (and (and (= var4 var10) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 var6)) (= var5 (next (getTSLL (read var10 var8))))))))) (inv_main71 var4 var3 var5 0))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Int) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (inv_main27 var6 var5 var4) (and (not (= nullAddr var3)) (and (not (= nullAddr var3)) (and (= var2 0) (and (and (= var1 var6) (= var3 var5)) (= var0 nullAddr))))))) (inv_main71 var1 var3 var3 0))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Heap)) (or (not (and (inv_main104 var9 var8 var7) (and (not (= nullAddr var6)) (and (and (is-O_TSLL (read var9 var8)) (and (and (and (= var5 var9) (= var4 var8)) (= var3 var7)) (= var2 (next (getTSLL (read var9 var8)))))) (and (and (= var1 (write var5 var4 defObj)) (= var0 var4)) (= var6 var2)))))) (inv_main101 var1 var6 var6))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (inv_main94 var10 var9 var8 var7 var6) (and (not (= nullAddr var5)) (and (= nullAddr var4) (and (is-O_TSLL (read var10 var8)) (and (and (and (and (and (= var3 var10) (= var5 var9)) (= var2 var8)) (= var1 var7)) (= var0 var6)) (= var4 (next (getTSLL (read var10 var8)))))))))) (inv_main101 var3 var5 var4))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Int) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (inv_main27 var6 var5 var4) (and (not (= nullAddr var3)) (and (= nullAddr var3) (and (not (= nullAddr var3)) (and (= var2 0) (and (and (= var1 var6) (= var3 var5)) (= var0 nullAddr)))))))) (inv_main101 var1 var3 var3))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main107 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (not (= nullAddr (inner (getTSLL (read var2 var0)))))))) (inv_main114 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main112 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (not (= nullAddr (next (getTSLL (read var2 var0)))))))) (inv_main119 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (inv_main33 var6 var5 var4) (and (is-O_TSLL (read var6 var4)) (and (and (and (= var3 var6) (= var2 var5)) (= var1 var4)) (= var0 (next (getTSLL (read var6 var4)))))))) (inv_main34 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main16 var2 var1 var0) (and (is-O_TSLL (read var2 var1)) (is-O_TSLL (read var2 var1))))) (inv_main15 (write var2 var1 (O_TSLL (TSLL (next (getTSLL (read var2 var1))) (prev (getTSLL (read var2 var1))) var0))) var1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main72 var4 var3 var2 var1 var0) (and (<= 0 (+ 1 (* (- 1) var1))) (= nullAddr var0)))) (inv_main94 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Heap) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main4 var3 var2) (and (and (= var1 nullAddr) (and (is-O_TSLL (read var3 var2)) (is-O_TSLL (read var3 var2)))) (and (= var0 (write var3 var2 (O_TSLL (TSLL (next (getTSLL (read var3 var2))) nullAddr (inner (getTSLL (read var3 var2))))))) (= var1 var2))))) (inv_main8 var0 var1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main83 var4 var3 var2 var1 var0) (and (is-O_TSLL (read var4 var0)) (not (= nullAddr (next (getTSLL (read var4 var0)))))))) (inv_main88 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main51 var2 var1 var0) (and (and (is-O_TSLL (read var2 var0)) (is-O_TSLL (read var2 (inner (getTSLL (read var2 var0)))))) (is-O_TSLL (read var2 (inner (getTSLL (read var2 var0)))))))) (inv_main53 (write var2 (inner (getTSLL (read var2 var0))) (O_TSLL (TSLL nullAddr (prev (getTSLL (read var2 (inner (getTSLL (read var2 var0)))))) (inner (getTSLL (read var2 (inner (getTSLL (read var2 var0))))))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main58 var3 var2 var1 var0) (not (= var0 nullAddr)))) (inv_main27 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap) (var7 Int) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Heap)) (or (not (and (inv_main58 var11 var10 var9 var8) (and (and (not (= var7 0)) (and (and (= var8 nullAddr) (is-O_TSLL (read var11 var9))) (and (and (and (= var6 var11) (= var5 var10)) (= var4 var9)) (= var3 (inner (getTSLL (read var11 var9))))))) (and (and (and (= var2 var6) (= var1 var5)) (= var0 var4)) (or (and (= var3 nullAddr) (= var7 1)) (and (not (= var3 nullAddr)) (= var7 0))))))) (inv_main27 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main22 var2 var1 var0) (not (= var0 nullAddr)))) (inv_main27 var2 var1 var1))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (inv_main22 var8 var7 var6) (and (and (not (= var5 0)) (and (and (= var6 nullAddr) (is-O_TSLL (read var8 var7))) (and (and (= var4 var8) (= var3 var7)) (= var2 (inner (getTSLL (read var8 var7))))))) (and (and (= var1 var4) (= var0 var3)) (or (and (= var2 nullAddr) (= var5 1)) (and (not (= var2 nullAddr)) (= var5 0))))))) (inv_main27 var1 var0 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main31 var2 var1 var0) (and (and (is-O_TSLL (read var2 var0)) (is-O_TSLL (read var2 (next (getTSLL (read var2 var0)))))) (is-O_TSLL (read var2 (next (getTSLL (read var2 var0)))))))) (inv_main33 (write var2 (next (getTSLL (read var2 var0))) (O_TSLL (TSLL (next (getTSLL (read var2 (next (getTSLL (read var2 var0)))))) var0 (inner (getTSLL (read var2 (next (getTSLL (read var2 var0))))))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main78 var4 var3 var2 var1 var0) (and (is-O_TSLL (read var4 var0)) (= nullAddr (inner (getTSLL (read var4 var0))))))) (inv_main83 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Heap)) (or (not (and (inv_main11 var1 var0) (is-O_TSLL (read var1 var0)))) (inv_main22 var1 var0 (inner (getTSLL (read var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main72 var4 var3 var2 var1 var0) (and (= nullAddr var0) (and (= var1 0) (not (= nullAddr var0)))))) (inv_main80 var4 var3 var2 1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main72 var4 var3 var2 var1 var0) (and (= nullAddr var0) (and (not (= var1 0)) (not (= nullAddr var0)))))) (inv_main80 var4 var3 var2 2 var0))))
(assert (forall ((var0 TSLL) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Int) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (inv_main34 var7 var6 var5) (and (= var4 0) (and (not (= var3 nullAddr)) (and (and (not (= nullAddr var3)) (and (is-O_TSLL (read var7 var5)) (is-O_TSLL (read var7 var5)))) (and (and (= var2 (write var7 var5 (O_TSLL (TSLL nullAddr (prev (getTSLL (read var7 var5))) (inner (getTSLL (read var7 var5))))))) (= var1 var6)) (= var3 var5))))))) (inv_main52 (newHeap (alloc var2 (O_TSLL var0))) var1 var3 (newAddr (alloc var2 (O_TSLL var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (or (not (and (inv_main15 var1 var0) (and (and (is-O_TSLL (read var1 var0)) (is-O_TSLL (read var1 (inner (getTSLL (read var1 var0)))))) (is-O_TSLL (read var1 (inner (getTSLL (read var1 var0)))))))) (inv_main17 (write var1 (inner (getTSLL (read var1 var0))) (O_TSLL (TSLL nullAddr (prev (getTSLL (read var1 (inner (getTSLL (read var1 var0)))))) (inner (getTSLL (read var1 (inner (getTSLL (read var1 var0))))))))) var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main48 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (is-O_TSLL (read var2 var0))))) (inv_main47 (write var2 var0 (O_TSLL (TSLL (next (getTSLL (read var2 var0))) (prev (getTSLL (read var2 var0))) nullAddr))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main53 var2 var1 var0) (and (and (is-O_TSLL (read var2 var0)) (is-O_TSLL (read var2 (inner (getTSLL (read var2 var0)))))) (is-O_TSLL (read var2 (inner (getTSLL (read var2 var0)))))))) (inv_main47 (write var2 (inner (getTSLL (read var2 var0))) (O_TSLL (TSLL (next (getTSLL (read var2 (inner (getTSLL (read var2 var0)))))) (prev (getTSLL (read var2 (inner (getTSLL (read var2 var0)))))) nullAddr))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Int) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (inv_main34 var6 var5 var4) (and (not (= var3 0)) (and (not (= var2 nullAddr)) (and (and (not (= nullAddr var2)) (and (is-O_TSLL (read var6 var4)) (is-O_TSLL (read var6 var4)))) (and (and (= var1 (write var6 var4 (O_TSLL (TSLL nullAddr (prev (getTSLL (read var6 var4))) (inner (getTSLL (read var6 var4))))))) (= var0 var5)) (= var2 var4))))))) (inv_main48 var1 var0 var2))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main72 var4 var3 var2 var1 var0) (and (not (= nullAddr var0)) (and (= var1 0) (not (= nullAddr var0)))))) (inv_main78 var4 var3 var2 1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main72 var4 var3 var2 var1 var0) (and (not (= nullAddr var0)) (and (not (= var1 0)) (not (= nullAddr var0)))))) (inv_main78 var4 var3 var2 2 var0))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (inv_main22 var8 var7 var6) (and (and (= var5 0) (and (and (= var6 nullAddr) (is-O_TSLL (read var8 var7))) (and (and (= var4 var8) (= var3 var7)) (= var2 (inner (getTSLL (read var8 var7))))))) (and (and (= var1 var4) (= var0 var3)) (or (and (= var2 nullAddr) (= var5 1)) (and (not (= var2 nullAddr)) (= var5 0))))))) (inv_main20 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main32 var3 var2 var1 var0) (and (is-O_TSLL (read var3 var1)) (is-O_TSLL (read var3 var1))))) (inv_main31 (write var3 var1 (O_TSLL (TSLL var0 (prev (getTSLL (read var3 var1))) (inner (getTSLL (read var3 var1)))))) var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (inv_main101 var6 var5 var4) (and (= nullAddr var3) (and (is-O_TSLL (read var6 var5)) (and (and (and (= var2 var6) (= var1 var5)) (= var0 var4)) (= var3 (inner (getTSLL (read var6 var5))))))))) (inv_main104 var2 var1 var3))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Heap)) (or (not (and (inv_main112 var5 var4 var3) (and (and (is-O_TSLL (read var5 var3)) (= nullAddr (next (getTSLL (read var5 var3))))) (and (and (= var2 (write var5 var3 defObj)) (= var1 var4)) (= var0 var3))))) (inv_main104 var2 var1 nullAddr))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap)) (or (not (and (inv_main34 var5 var4 var3) (and (= var2 nullAddr) (and (and (not (= nullAddr var2)) (and (is-O_TSLL (read var5 var3)) (is-O_TSLL (read var5 var3)))) (and (and (= var1 (write var5 var3 (O_TSLL (TSLL nullAddr (prev (getTSLL (read var5 var3))) (inner (getTSLL (read var5 var3))))))) (= var0 var4)) (= var2 var3)))))) (inv_main44 var1 var0 var2))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap)) (or (not (and (inv_main34 var5 var4 var3) (and (and (= nullAddr var2) (and (is-O_TSLL (read var5 var3)) (is-O_TSLL (read var5 var3)))) (and (and (= var1 (write var5 var3 (O_TSLL (TSLL nullAddr (prev (getTSLL (read var5 var3))) (inner (getTSLL (read var5 var3))))))) (= var0 var4)) (= var2 var3))))) (inv_main39 var1 var0 var2))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main71 var3 var2 var1 var0) (is-O_TSLL (read var3 var1)))) (inv_main72 var3 var2 var1 var0 (inner (getTSLL (read var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Addr) (var5 Heap) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (inv_main88 var10 var9 var8 var7 var6) (and (is-O_TSLL (read var10 var6)) (and (and (and (and (and (= var5 var10) (= var4 var9)) (= var3 var8)) (= var2 var7)) (= var1 var6)) (= var0 (inner (getTSLL (read var10 var6)))))))) (inv_main72 var5 var4 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main52 var3 var2 var1 var0) (and (is-O_TSLL (read var3 var1)) (is-O_TSLL (read var3 var1))))) (inv_main51 (write var3 var1 (O_TSLL (TSLL (next (getTSLL (read var3 var1))) (prev (getTSLL (read var3 var1))) var0))) var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap) (var7 Int) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Heap)) (or (not (and (inv_main58 var11 var10 var9 var8) (and (and (= var7 0) (and (and (= var8 nullAddr) (is-O_TSLL (read var11 var9))) (and (and (and (= var6 var11) (= var5 var10)) (= var4 var9)) (= var3 (inner (getTSLL (read var11 var9))))))) (and (and (and (= var2 var6) (= var1 var5)) (= var0 var4)) (or (and (= var3 nullAddr) (= var7 1)) (and (not (= var3 nullAddr)) (= var7 0))))))) (inv_main56 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main83 var4 var3 var2 var1 var0) (and (is-O_TSLL (read var4 var0)) (= nullAddr (next (getTSLL (read var4 var0))))))) (inv_main90 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Heap) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap)) (or (not (and (inv_main4 var4 var3) (and (not (= var2 0)) (and (and (not (= var1 nullAddr)) (and (is-O_TSLL (read var4 var3)) (is-O_TSLL (read var4 var3)))) (and (= var0 (write var4 var3 (O_TSLL (TSLL (next (getTSLL (read var4 var3))) nullAddr (inner (getTSLL (read var4 var3))))))) (= var1 var3)))))) (inv_main12 var0 var1))))
(assert (forall ((var0 TSLL) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main27 var4 var3 var2) (not (= var1 0)))) (inv_main32 (newHeap (alloc var4 (O_TSLL var0))) var3 var2 (newAddr (alloc var4 (O_TSLL var0)))))))
(assert (forall ((var0 TSLL) (var1 Heap) (var2 Addr) (var3 Int) (var4 Addr) (var5 Heap)) (or (not (and (inv_main4 var5 var4) (and (= var3 0) (and (and (not (= var2 nullAddr)) (and (is-O_TSLL (read var5 var4)) (is-O_TSLL (read var5 var4)))) (and (= var1 (write var5 var4 (O_TSLL (TSLL (next (getTSLL (read var5 var4))) nullAddr (inner (getTSLL (read var5 var4))))))) (= var2 var4)))))) (inv_main16 (newHeap (alloc var1 (O_TSLL var0))) var2 (newAddr (alloc var1 (O_TSLL var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (or (not (and (inv_main12 var1 var0) (and (is-O_TSLL (read var1 var0)) (is-O_TSLL (read var1 var0))))) (inv_main11 (write var1 var0 (O_TSLL (TSLL (next (getTSLL (read var1 var0))) (prev (getTSLL (read var1 var0))) nullAddr))) var0))))
(assert (forall ((var0 Addr) (var1 Heap)) (or (not (and (inv_main17 var1 var0) (and (and (is-O_TSLL (read var1 var0)) (is-O_TSLL (read var1 (inner (getTSLL (read var1 var0)))))) (is-O_TSLL (read var1 (inner (getTSLL (read var1 var0)))))))) (inv_main11 (write var1 (inner (getTSLL (read var1 var0))) (O_TSLL (TSLL (next (getTSLL (read var1 (inner (getTSLL (read var1 var0)))))) (prev (getTSLL (read var1 (inner (getTSLL (read var1 var0)))))) nullAddr))) var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (inv_main101 var6 var5 var4) (and (not (= nullAddr var3)) (and (not (= nullAddr var3)) (and (is-O_TSLL (read var6 var5)) (and (and (and (= var2 var6) (= var1 var5)) (= var0 var4)) (= var3 (inner (getTSLL (read var6 var5)))))))))) (inv_main107 var2 var1 var3))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main107 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (= nullAddr (inner (getTSLL (read var2 var0))))))) (inv_main112 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main47 var2 var1 var0) (is-O_TSLL (read var2 var0)))) (inv_main58 var2 var1 var0 (inner (getTSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main72 var4 var3 var2 var1 var0) (and (not (<= 0 (+ 1 (* (- 1) var1)))) (= nullAddr var0)))) (inv_main96 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (inv_main101 var6 var5 var4) (and (= nullAddr var3) (and (not (= nullAddr var3)) (and (is-O_TSLL (read var6 var5)) (and (and (and (= var2 var6) (= var1 var5)) (= var0 var4)) (= var3 (inner (getTSLL (read var6 var5)))))))))) (inv_main109 var2 var1 var3))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main3 var1 var0) (not (is-O_TSLL (read var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main3 var1 var0) (and (is-O_TSLL (read var1 var0)) (not (is-O_TSLL (read var1 var0))))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main4 var1 var0) (not (is-O_TSLL (read var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main4 var1 var0) (and (is-O_TSLL (read var1 var0)) (not (is-O_TSLL (read var1 var0))))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (inv_main8 var1 var0))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main12 var1 var0) (not (is-O_TSLL (read var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main12 var1 var0) (and (is-O_TSLL (read var1 var0)) (not (is-O_TSLL (read var1 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main16 var2 var1 var0) (not (is-O_TSLL (read var2 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main16 var2 var1 var0) (and (is-O_TSLL (read var2 var1)) (not (is-O_TSLL (read var2 var1))))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main15 var1 var0) (not (is-O_TSLL (read var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main15 var1 var0) (and (is-O_TSLL (read var1 var0)) (not (is-O_TSLL (read var1 (inner (getTSLL (read var1 var0)))))))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main15 var1 var0) (and (and (is-O_TSLL (read var1 var0)) (is-O_TSLL (read var1 (inner (getTSLL (read var1 var0)))))) (not (is-O_TSLL (read var1 (inner (getTSLL (read var1 var0)))))))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main17 var1 var0) (not (is-O_TSLL (read var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main17 var1 var0) (and (is-O_TSLL (read var1 var0)) (not (is-O_TSLL (read var1 (inner (getTSLL (read var1 var0)))))))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main17 var1 var0) (and (and (is-O_TSLL (read var1 var0)) (is-O_TSLL (read var1 (inner (getTSLL (read var1 var0)))))) (not (is-O_TSLL (read var1 (inner (getTSLL (read var1 var0)))))))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main11 var1 var0) (not (is-O_TSLL (read var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main22 var2 var1 var0) (and (= var0 nullAddr) (not (is-O_TSLL (read var2 var1))))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (inv_main20 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main32 var3 var2 var1 var0) (not (is-O_TSLL (read var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main32 var3 var2 var1 var0) (and (is-O_TSLL (read var3 var1)) (not (is-O_TSLL (read var3 var1))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main31 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main31 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (not (is-O_TSLL (read var2 (next (getTSLL (read var2 var0)))))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main31 var2 var1 var0) (and (and (is-O_TSLL (read var2 var0)) (is-O_TSLL (read var2 (next (getTSLL (read var2 var0)))))) (not (is-O_TSLL (read var2 (next (getTSLL (read var2 var0)))))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main33 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main34 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main34 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (not (is-O_TSLL (read var2 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (inv_main39 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (inv_main44 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main48 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main48 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (not (is-O_TSLL (read var2 var0))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main52 var3 var2 var1 var0) (not (is-O_TSLL (read var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main52 var3 var2 var1 var0) (and (is-O_TSLL (read var3 var1)) (not (is-O_TSLL (read var3 var1))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main51 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main51 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (not (is-O_TSLL (read var2 (inner (getTSLL (read var2 var0)))))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main51 var2 var1 var0) (and (and (is-O_TSLL (read var2 var0)) (is-O_TSLL (read var2 (inner (getTSLL (read var2 var0)))))) (not (is-O_TSLL (read var2 (inner (getTSLL (read var2 var0)))))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main53 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main53 var2 var1 var0) (and (is-O_TSLL (read var2 var0)) (not (is-O_TSLL (read var2 (inner (getTSLL (read var2 var0)))))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main53 var2 var1 var0) (and (and (is-O_TSLL (read var2 var0)) (is-O_TSLL (read var2 (inner (getTSLL (read var2 var0)))))) (not (is-O_TSLL (read var2 (inner (getTSLL (read var2 var0)))))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main47 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main58 var3 var2 var1 var0) (and (= var0 nullAddr) (not (is-O_TSLL (read var3 var1))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (inv_main56 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (inv_main66 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main71 var3 var2 var1 var0) (not (is-O_TSLL (read var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (inv_main80 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main78 var4 var3 var2 var1 var0) (not (is-O_TSLL (read var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (inv_main85 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main83 var4 var3 var2 var1 var0) (not (is-O_TSLL (read var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (inv_main90 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main88 var4 var3 var2 var1 var0) (not (is-O_TSLL (read var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (inv_main96 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main94 var4 var3 var2 var1 var0) (not (is-O_TSLL (read var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main101 var2 var1 var0) (not (is-O_TSLL (read var2 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (inv_main109 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main107 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (inv_main114 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main112 var2 var1 var0) (not (is-O_TSLL (read var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (inv_main119 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main104 var2 var1 var0) (not (is-O_TSLL (read var2 var1)))))))
(check-sat)