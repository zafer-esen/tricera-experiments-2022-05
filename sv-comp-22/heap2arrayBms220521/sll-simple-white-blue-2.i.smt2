(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
;===============================================================================
; Encoding of Heap sorts and operations
;-------------------------------------------------------------------------------
(define-sort Addr() Int)
(declare-datatypes ((AddrRange 0))
                   (((AddrRange (AddrRangeStart Addr) (AddrRangeSize Int)))))

(declare-datatypes ((HeapObject 0) (TSLL 0))
                   (((O_Int (getInt Int)) (O_UInt (getUInt Int)) (O_Addr (getAddr Addr)) (O_TSLL (getTSLL TSLL)) (defObj))
                   ((TSLL (next Addr) (data Int)))))
(declare-datatypes ((BatchAllocResHeap 0) (AllocResHeap 0) (Heap 0))
                   (((BatchAllocResHeap   (newBatchHeap Heap) (newAddrRange AddrRange)))
                   ((AllocResHeap   (newHeap Heap) (newAddr Addr)))
                    ((HeapCtor (HeapSize Int)
                               (HeapContents (Array Addr HeapObject))))))
(define-fun nullAddr  () Addr 0)
(define-fun validHeap     ((h Heap) (p Addr)) Bool
  (and (>= (HeapSize h) p) (> p 0)))
(define-fun emptyHeap () Heap (
  HeapCtor 0 (( as const (Array Addr HeapObject)) defObj)))
(define-fun readHeap ((h Heap) (p Addr)) HeapObject
  (ite (validHeap h p)
       (select (HeapContents h) p)
       defObj))
(define-fun writeHeap ((h Heap) (p Addr) (o HeapObject)) Heap
  (ite (validHeap h p)
       (HeapCtor (HeapSize h) (store (HeapContents h) p o))
       h))
(define-fun allocHeap   ((h Heap) (o HeapObject)) AllocResHeap
  (AllocResHeap (HeapCtor (+ 1 (HeapSize h))
                    (store (HeapContents h) (+ 1 (HeapSize h)) o))
          (+ 1 (HeapSize h))))
(define-fun Heap-eq     ((h1 Heap) (h2 Heap)) Bool
  (forall ((p Addr))
          (and (= (validHeap h1 p) (validHeap h2 p))
               (= (readHeap h1 p) (readHeap h2 p)))))
(define-fun nthAddrRange((ar AddrRange) (n Int)) Addr
  (ite (and (>= n 0) (< n (AddrRangeSize ar)))
       (+ (AddrRangeStart ar) n)
       nullAddr))
(define-fun withinHeap ((ar AddrRange ) (p Addr)) Bool
  (and (>= p (AddrRangeStart ar)) (< p (+ (AddrRangeStart ar) (AddrRangeSize ar)))))

(declare-fun batchAllocHeap     (Heap Heap HeapObject Int Int) Bool)
(declare-fun batchAllocPostHeap (Heap Heap HeapObject Int) Bool)

(assert (forall ((h1 Heap) (h2 Heap) (o HeapObject) (n1 Int) (n2 Int))
                (=> (and (> n2 0) (batchAllocHeap h1 h2 o n1 n2))
                   (batchAllocHeap h1 (newHeap (allocHeap h2 o)) o n1 (- n2 1)))))
(assert (forall ((h1 Heap) (h2 Heap) (o HeapObject) (n1 Int) (n2 Int))
                (=> (and (<= n2 0) (batchAllocHeap h1 h2 o n1 n2))
                   (batchAllocPostHeap h1 h2 o n1))))

(declare-fun batchWriteHeap     (Heap Heap Addr Addr HeapObject Int Int) Bool)
(declare-fun batchWritePostHeap (Heap Heap Addr HeapObject Int) Bool)

(assert (forall ((h1 Heap) (h2 Heap) (a1 Addr) (a2 Addr) (o HeapObject) (n1 Int) (n2 Int))
                (=> (and (> n2 0) (batchWriteHeap h1 h2 a1 a2 o n1 n2))
                   (batchWriteHeap h1 (writeHeap h2 a2 o) a1 (+ a2 1) o n1 (- n2 1)))))
(assert (forall ((h1 Heap) (h2 Heap) (a1 Addr) (a2 Addr) (o HeapObject) (n1 Int) (n2 Int))
                (=> (and (<= n2 0) (batchWriteHeap h1 h2 a1 a2 o n1 n2))
                   (batchWritePostHeap h1 h2 a1 o n1))))

;===============================================================================
(declare-fun inv_main10 (Heap Addr Addr) Bool)
(declare-fun inv_main11 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main12 (Heap Addr Addr) Bool)
(declare-fun inv_main14 (Heap Addr Addr) Bool)
(declare-fun inv_main19 (Heap Addr Addr) Bool)
(declare-fun inv_main2 (Heap) Bool)
(declare-fun inv_main21 (Heap Addr Addr) Bool)
(declare-fun inv_main23 (Heap Addr Addr) Bool)
(declare-fun inv_main24 (Heap Addr Addr) Bool)
(declare-fun inv_main26 (Heap Addr Addr) Bool)
(declare-fun inv_main3 (Heap Addr) Bool)
(declare-fun inv_main32 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main33 (Heap Addr Addr Addr Addr) Bool)
(declare-fun inv_main34 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main35 (Heap Addr Addr) Bool)
(declare-fun inv_main36 (Heap Addr Addr) Bool)
(declare-fun inv_main37 (Heap Addr Addr) Bool)
(declare-fun inv_main4 (Heap Addr) Bool)
(declare-fun inv_main43 (Heap Addr Addr) Bool)
(declare-fun inv_main44 (Heap Addr Addr) Bool)
(declare-fun inv_main49 (Heap Addr Addr) Bool)
(declare-fun inv_main56 (Heap Addr Addr) Bool)
(declare-fun inv_main6 (Heap Addr Addr) Bool)
(assert (inv_main2 emptyHeap))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (inv_main26 var6 var5 var4) (= var0 (next (getTSLL (readHeap var6 var4))))) (= var1 var4)) (= var2 var5)) (= var3 var6)) (is-O_TSLL (readHeap var6 var4)))) (inv_main23 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (and (inv_main6 var4 var3 var2) (= var0 0)) (= var1 0))) (inv_main23 var4 var3 var3))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (inv_main14 var2 var1 var0) (is-O_TSLL (readHeap var2 var0))) (is-O_TSLL (readHeap var2 var0)))) (inv_main6 (writeHeap var2 var0 (O_TSLL (TSLL nullAddr (data (getTSLL (readHeap var2 var0)))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Heap)) (or (not (and (and (and (and (inv_main4 var3 var2) (= var0 var2)) (= var1 (writeHeap var3 var2 (O_TSLL (TSLL (next (getTSLL (readHeap var3 var2))) 0))))) (is-O_TSLL (readHeap var3 var2))) (is-O_TSLL (readHeap var3 var2)))) (inv_main6 var1 var0 var0))))
(assert (forall ((var0 TSLL) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main6 var4 var3 var2) (not (= var1 0)))) (inv_main11 (newHeap (allocHeap var4 (O_TSLL var0))) var3 var2 (newAddr (allocHeap var4 (O_TSLL var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (inv_main35 var6 var5 var4) (= var3 (data (getTSLL (readHeap var6 var4))))) (= var0 var4)) (= var1 var5)) (= var2 var6)) (is-O_TSLL (readHeap var6 var4))) (not (= var3 1)))) (inv_main37 var2 var1 var0))))
(assert (forall ((var0 TSLL) (var1 Heap)) (or (not (inv_main2 var1)) (inv_main3 (newHeap (allocHeap var1 (O_TSLL var0))) (newAddr (allocHeap var1 (O_TSLL var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (inv_main23 var2 var1 var0) (= (next (getTSLL (readHeap var2 var0))) nullAddr)) (is-O_TSLL (readHeap var2 var0)))) (inv_main24 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (and (inv_main23 var3 var2 var1) (not (= (next (getTSLL (readHeap var3 var1))) nullAddr))) (is-O_TSLL (readHeap var3 var1))) (not (= var0 0)))) (inv_main24 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (inv_main37 var6 var5 var4) (= var0 (next (getTSLL (readHeap var6 var4))))) (= var1 var4)) (= var2 var5)) (= var3 var6)) (is-O_TSLL (readHeap var6 var4)))) (inv_main35 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (inv_main34 var6 var5 var4 var3) (= var0 var4)) (= var1 var5)) (= var2 (writeHeap var6 (next (getTSLL (readHeap var6 var4))) (O_TSLL (TSLL var3 (data (getTSLL (readHeap var6 (next (getTSLL (readHeap var6 var4))))))))))) (is-O_TSLL (readHeap var6 (next (getTSLL (readHeap var6 var4)))))) (is-O_TSLL (readHeap var6 (next (getTSLL (readHeap var6 var4)))))) (is-O_TSLL (readHeap var6 var4)))) (inv_main35 var2 var1 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Heap)) (or (not (and (and (and (and (and (inv_main21 var5 var4 var3) (= var0 var3)) (= var1 var4)) (= var2 (writeHeap var5 var3 (O_TSLL (TSLL var4 (data (getTSLL (readHeap var5 var3)))))))) (is-O_TSLL (readHeap var5 var3))) (is-O_TSLL (readHeap var5 var3)))) (inv_main35 var2 var0 var0))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main56 var9 var8 var7) (= var6 var2)) (= var0 var4)) (= var1 (writeHeap var5 var4 defObj))) (= var2 (next (getTSLL (readHeap var9 var7))))) (= var3 var7)) (= var4 var8)) (= var5 var9)) (is-O_TSLL (readHeap var9 var7))) (not (= var6 nullAddr)))) (inv_main56 var1 var6 var6))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (and (inv_main36 var6 var5 var4) (= var2 (next (getTSLL (readHeap var6 var4))))) (= var0 var4)) (= var3 var5)) (= var1 var6)) (is-O_TSLL (readHeap var6 var4))) (= var2 nullAddr)) (not (= var3 nullAddr)))) (inv_main56 var1 var3 var3))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (and (inv_main44 var6 var5 var4) (= var2 (next (getTSLL (readHeap var6 var4))))) (= var0 var4)) (= var3 var5)) (= var1 var6)) (is-O_TSLL (readHeap var6 var4))) (= var2 nullAddr)) (not (= var3 nullAddr)))) (inv_main56 var1 var3 var3))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (and (inv_main32 var3 var2 var1 var0) (is-O_TSLL (readHeap var3 (next (getTSLL (readHeap var3 var1)))))) (is-O_TSLL (readHeap var3 (next (getTSLL (readHeap var3 var1)))))) (is-O_TSLL (readHeap var3 var1)))) (inv_main34 (writeHeap var3 (next (getTSLL (readHeap var3 var1))) (O_TSLL (TSLL (next (getTSLL (readHeap var3 (next (getTSLL (readHeap var3 var1)))))) 1))) var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (and (inv_main33 var4 var3 var2 var1 var0) (is-O_TSLL (readHeap var4 var2))) (is-O_TSLL (readHeap var4 var2)))) (inv_main32 (writeHeap var4 var2 (O_TSLL (TSLL var0 (data (getTSLL (readHeap var4 var2)))))) var3 var2 var1))))
(assert (forall ((var0 TSLL) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (and (and (and (and (inv_main24 var7 var6 var5) (= var1 (next (getTSLL (readHeap var7 var5))))) (= var2 var5)) (= var3 var6)) (= var4 var7)) (is-O_TSLL (readHeap var7 var5)))) (inv_main33 (newHeap (allocHeap var4 (O_TSLL var0))) var3 var2 var1 (newAddr (allocHeap var4 (O_TSLL var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (inv_main12 var2 var1 var0) (is-O_TSLL (readHeap var2 var0))) (is-O_TSLL (readHeap var2 var0)))) (inv_main14 (writeHeap var2 var0 (O_TSLL (TSLL (next (getTSLL (readHeap var2 var0))) 0))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main11 var3 var2 var1 var0) (is-O_TSLL (readHeap var3 var1))) (is-O_TSLL (readHeap var3 var1)))) (inv_main10 (writeHeap var3 var1 (O_TSLL (TSLL var0 (data (getTSLL (readHeap var3 var1)))))) var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (inv_main43 var6 var5 var4) (= var3 (data (getTSLL (readHeap var6 var4))))) (= var0 var4)) (= var1 var5)) (= var2 var6)) (is-O_TSLL (readHeap var6 var4))) (= var3 1))) (inv_main44 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (inv_main19 var2 var1 var0) (is-O_TSLL (readHeap var2 var0))) (is-O_TSLL (readHeap var2 var0)))) (inv_main21 (writeHeap var2 var0 (O_TSLL (TSLL (next (getTSLL (readHeap var2 var0))) 1))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (inv_main43 var6 var5 var4) (= var3 (data (getTSLL (readHeap var6 var4))))) (= var0 var4)) (= var1 var5)) (= var2 var6)) (is-O_TSLL (readHeap var6 var4))) (not (= var3 1)))) (inv_main49 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (inv_main35 var6 var5 var4) (= var3 (data (getTSLL (readHeap var6 var4))))) (= var0 var4)) (= var1 var5)) (= var2 var6)) (is-O_TSLL (readHeap var6 var4))) (= var3 1))) (inv_main36 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 TSLL) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Heap)) (or (not (and (and (and (and (and (and (inv_main6 var9 var8 var7) (= var0 0)) (not (= var1 0))) (= var2 (newAddr (allocHeap var9 (O_TSLL var5))))) (= var3 var7)) (= var4 var8)) (= var6 (newHeap (allocHeap var9 (O_TSLL var5)))))) (inv_main19 var6 var4 var2))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (inv_main10 var6 var5 var4) (= var0 (next (getTSLL (readHeap var6 var4))))) (= var1 var4)) (= var2 var5)) (= var3 var6)) (is-O_TSLL (readHeap var6 var4)))) (inv_main12 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Heap)) (or (not (and (and (inv_main3 var1 var0) (is-O_TSLL (readHeap var1 var0))) (is-O_TSLL (readHeap var1 var0)))) (inv_main4 (writeHeap var1 var0 (O_TSLL (TSLL nullAddr (data (getTSLL (readHeap var1 var0)))))) var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (and (inv_main23 var3 var2 var1) (not (= (next (getTSLL (readHeap var3 var1))) nullAddr))) (is-O_TSLL (readHeap var3 var1))) (= var0 0))) (inv_main26 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (inv_main36 var6 var5 var4) (= var3 (next (getTSLL (readHeap var6 var4))))) (= var0 var4)) (= var1 var5)) (= var2 var6)) (is-O_TSLL (readHeap var6 var4))) (not (= var3 nullAddr)))) (inv_main43 var2 var1 var3))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (inv_main44 var6 var5 var4) (= var3 (next (getTSLL (readHeap var6 var4))))) (= var0 var4)) (= var1 var5)) (= var2 var6)) (is-O_TSLL (readHeap var6 var4))) (not (= var3 nullAddr)))) (inv_main43 var2 var1 var3))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main3 var1 var0) (not (is-O_TSLL (readHeap var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (and (inv_main3 var1 var0) (not (is-O_TSLL (readHeap var1 var0)))) (is-O_TSLL (readHeap var1 var0))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main4 var1 var0) (not (is-O_TSLL (readHeap var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (and (inv_main4 var1 var0) (not (is-O_TSLL (readHeap var1 var0)))) (is-O_TSLL (readHeap var1 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main11 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (inv_main11 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 var1)))) (is-O_TSLL (readHeap var3 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main10 var2 var1 var0) (not (is-O_TSLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main12 var2 var1 var0) (not (is-O_TSLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main12 var2 var1 var0) (not (is-O_TSLL (readHeap var2 var0)))) (is-O_TSLL (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main14 var2 var1 var0) (not (is-O_TSLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main14 var2 var1 var0) (not (is-O_TSLL (readHeap var2 var0)))) (is-O_TSLL (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main19 var2 var1 var0) (not (is-O_TSLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main19 var2 var1 var0) (not (is-O_TSLL (readHeap var2 var0)))) (is-O_TSLL (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main21 var2 var1 var0) (not (is-O_TSLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main21 var2 var1 var0) (not (is-O_TSLL (readHeap var2 var0)))) (is-O_TSLL (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main23 var2 var1 var0) (not (is-O_TSLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main26 var2 var1 var0) (not (is-O_TSLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main24 var2 var1 var0) (not (is-O_TSLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main33 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main33 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))) (is-O_TSLL (readHeap var4 var2))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main32 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (inv_main32 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 (next (getTSLL (readHeap var3 var1))))))) (is-O_TSLL (readHeap var3 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (and (inv_main32 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 (next (getTSLL (readHeap var3 var1))))))) (is-O_TSLL (readHeap var3 (next (getTSLL (readHeap var3 var1)))))) (is-O_TSLL (readHeap var3 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main34 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (inv_main34 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 (next (getTSLL (readHeap var3 var1))))))) (is-O_TSLL (readHeap var3 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (and (inv_main34 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 (next (getTSLL (readHeap var3 var1))))))) (is-O_TSLL (readHeap var3 (next (getTSLL (readHeap var3 var1)))))) (is-O_TSLL (readHeap var3 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main35 var2 var1 var0) (not (is-O_TSLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main37 var2 var1 var0) (not (is-O_TSLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main36 var2 var1 var0) (not (is-O_TSLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main43 var2 var1 var0) (not (is-O_TSLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (inv_main49 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main44 var2 var1 var0) (not (is-O_TSLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main56 var2 var1 var0) (not (is-O_TSLL (readHeap var2 var0)))))))
(check-sat)