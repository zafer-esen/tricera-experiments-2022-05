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
                   ((TSLL (next Addr) (prev Addr) (data Int)))))
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
(declare-fun inv_main12 (Heap Addr Addr Int) Bool)
(declare-fun inv_main13 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main14 (Heap Addr Addr Int) Bool)
(declare-fun inv_main15 (Heap Addr Addr Int) Bool)
(declare-fun inv_main2 (Heap) Bool)
(declare-fun inv_main22 (Heap Addr Addr Int) Bool)
(declare-fun inv_main23 (Heap Addr Addr Int) Bool)
(declare-fun inv_main27 (Heap Addr Addr Int) Bool)
(declare-fun inv_main3 (Heap Addr) Bool)
(declare-fun inv_main30 (Heap Addr Addr Int) Bool)
(declare-fun inv_main31 (Heap Addr Addr Int) Bool)
(declare-fun inv_main32 (Heap Addr Addr Int) Bool)
(declare-fun inv_main33 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main38 (Heap Addr Addr Int) Bool)
(declare-fun inv_main4 (Heap Addr) Bool)
(declare-fun inv_main42 (Heap Addr Addr Int) Bool)
(declare-fun inv_main45 (Heap Addr Addr Int) Bool)
(declare-fun inv_main49 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main5 (Heap Addr) Bool)
(declare-fun inv_main50 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main51 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main52 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main54 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main55 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main57 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main58 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main59 (Heap Addr Addr Int Addr Addr) Bool)
(declare-fun inv_main61 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main62 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main63 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main66 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main70 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main74 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main76 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main8 (Heap Addr Addr Int) Bool)
(declare-fun inv_main81 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main82 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main86 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main90 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main92 (Heap Addr Addr Int Addr) Bool)
(declare-fun inv_main99 (Heap Addr Addr Int Addr) Bool)
(assert (inv_main2 emptyHeap))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (and (and (inv_main55 var4 var3 var2 var1 var0) (is-O_TSLL (readHeap var4 (next (getTSLL (readHeap var4 var2)))))) (is-O_TSLL (readHeap var4 (next (getTSLL (readHeap var4 var2)))))) (is-O_TSLL (readHeap var4 var2)))) (inv_main57 (writeHeap var4 (next (getTSLL (readHeap var4 var2))) (O_TSLL (TSLL (next (getTSLL (readHeap var4 (next (getTSLL (readHeap var4 var2)))))) var0 (data (getTSLL (readHeap var4 (next (getTSLL (readHeap var4 var2))))))))) var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Int) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Heap) (var11 Int) (var12 Addr) (var13 Int) (var14 Addr) (var15 Addr) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main61 var16 var15 var14 var13 var12) (or (and (not (= var5 1)) (= var11 1)) (and (= var5 1) (= var11 0)))) (= var0 var6)) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (= var5 (data (getTSLL (readHeap var16 var14))))) (= var6 var12)) (= var7 var13)) (= var8 var14)) (= var9 var15)) (= var10 var16)) (is-O_TSLL (readHeap var16 var14))) (not (= var14 nullAddr))) (not (= var11 0)))) (inv_main63 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Addr) (var5 Heap) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (inv_main74 var10 var9 var8 var7 var6) (= var0 (next (getTSLL (readHeap var10 var8))))) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 var9)) (= var5 var10)) (is-O_TSLL (readHeap var10 var8)))) (inv_main61 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Int) (var7 Addr) (var8 Addr) (var9 Heap)) (or (not (and (and (and (and (and (and (and (inv_main54 var9 var8 var7 var6 var5) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 (writeHeap var9 var7 (O_TSLL (TSLL var5 (prev (getTSLL (readHeap var9 var7))) (data (getTSLL (readHeap var9 var7)))))))) (is-O_TSLL (readHeap var9 var7))) (is-O_TSLL (readHeap var9 var7)))) (inv_main61 var4 var3 var3 0 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Int) (var7 Addr) (var8 Addr) (var9 Heap)) (or (not (and (and (and (and (and (and (and (inv_main58 var9 var8 var7 var6 var5) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 (writeHeap var9 var7 (O_TSLL (TSLL var5 (prev (getTSLL (readHeap var9 var7))) (data (getTSLL (readHeap var9 var7)))))))) (is-O_TSLL (readHeap var9 var7))) (is-O_TSLL (readHeap var9 var7)))) (inv_main61 var4 var3 var3 0 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (and (inv_main12 var3 var2 var1 var0) (is-O_TSLL (readHeap var3 (next (getTSLL (readHeap var3 var1)))))) (is-O_TSLL (readHeap var3 (next (getTSLL (readHeap var3 var1)))))) (is-O_TSLL (readHeap var3 var1)))) (inv_main14 (writeHeap var3 (next (getTSLL (readHeap var3 var1))) (O_TSLL (TSLL (next (getTSLL (readHeap var3 (next (getTSLL (readHeap var3 var1)))))) var1 (data (getTSLL (readHeap var3 (next (getTSLL (readHeap var3 var1))))))))) var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main62 var4 var3 var2 var1 var0) (not (= var2 nullAddr)))) (inv_main81 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Heap)) (or (not (and (and (inv_main4 var1 var0) (is-O_TSLL (readHeap var1 var0))) (is-O_TSLL (readHeap var1 var0)))) (inv_main5 (writeHeap var1 var0 (O_TSLL (TSLL (next (getTSLL (readHeap var1 var0))) nullAddr (data (getTSLL (readHeap var1 var0)))))) var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Int) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main82 var10 var9 var8 var7 var6) (= var4 (data (getTSLL (readHeap var10 var8))))) (= var0 var6)) (= var5 var7)) (= var1 var8)) (= var2 var9)) (= var3 var10)) (is-O_TSLL (readHeap var10 var8))) (= var4 1)) (not (= var5 1)))) (inv_main92 var3 var2 var1 var5 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (and (inv_main51 var4 var3 var2 var1 var0) (is-O_TSLL (readHeap var4 var0))) (is-O_TSLL (readHeap var4 var0)))) (inv_main52 (writeHeap var4 var0 (O_TSLL (TSLL (next (getTSLL (readHeap var4 var0))) var2 (data (getTSLL (readHeap var4 var0)))))) var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Int) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main66 var10 var9 var8 var7 var6) (= var5 (data (getTSLL (readHeap var10 var8))))) (= var0 var6)) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (is-O_TSLL (readHeap var10 var8))) (not (= var5 0)))) (inv_main70 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (inv_main38 var8 var7 var6 var5) (= var0 (next (getTSLL (readHeap var8 var6))))) (= var1 var5)) (= var2 var6)) (= var3 var7)) (= var4 var8)) (is-O_TSLL (readHeap var8 var6)))) (inv_main42 var4 var3 var0 var1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (inv_main14 var8 var7 var6 var5) (= var0 (next (getTSLL (readHeap var8 var6))))) (= var1 var5)) (= var2 var6)) (= var3 var7)) (= var4 var8)) (is-O_TSLL (readHeap var8 var6)))) (inv_main15 var4 var3 var0 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main30 var3 var2 var1 var0) (is-O_TSLL (readHeap var3 var1)))) (inv_main33 var3 var2 var1 var0 (next (getTSLL (readHeap var3 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (and (inv_main42 var8 var7 var6 var5) (= var4 (data (getTSLL (readHeap var8 var6))))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 var8)) (is-O_TSLL (readHeap var8 var6))) (= var4 1))) (inv_main45 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (inv_main32 var8 var7 var6 var5) (= var0 (next (getTSLL (readHeap var8 var6))))) (= var1 var5)) (= var2 var6)) (= var3 var7)) (= var4 var8)) (is-O_TSLL (readHeap var8 var6)))) (inv_main30 var4 var3 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (and (and (inv_main8 var4 var3 var2 var1) (not (= var1 0))) (= var0 0)) (not (= nullAddr var3)))) (inv_main30 var4 var3 var3 0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Addr) (var4 Addr) (var5 Heap) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (inv_main81 var10 var9 var8 var7 var6) (= var0 (data (getTSLL (readHeap var10 var8))))) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 var9)) (= var5 var10)) (is-O_TSLL (readHeap var10 var8)))) (inv_main82 var5 var4 var3 var0 var1))))
(assert (forall ((var0 Addr) (var1 Heap)) (or (not (and (and (inv_main3 var1 var0) (is-O_TSLL (readHeap var1 var0))) (is-O_TSLL (readHeap var1 var0)))) (inv_main4 (writeHeap var1 var0 (O_TSLL (TSLL nullAddr (prev (getTSLL (readHeap var1 var0))) (data (getTSLL (readHeap var1 var0)))))) var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main52 var10 var9 var8 var7 var6) (= var5 (next (getTSLL (readHeap var10 var8))))) (= var0 var6)) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (is-O_TSLL (readHeap var10 var8))) (not (= var5 nullAddr)))) (inv_main55 var4 var3 var2 var1 var0))))
(assert (forall ((var0 TSLL) (var1 Heap)) (or (not (inv_main2 var1)) (inv_main3 (newHeap (allocHeap var1 (O_TSLL var0))) (newAddr (allocHeap var1 (O_TSLL var0)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap) (var9 Int) (var10 Addr) (var11 Int) (var12 Addr) (var13 Addr) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main33 var14 var13 var12 var11 var10) (or (and (= var4 0) (= var9 1)) (and (not (= var4 0)) (= var9 0)))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 (data (getTSLL (readHeap var14 (next (getTSLL (readHeap var14 var12)))))))) (= var5 var11)) (= var6 var12)) (= var7 var13)) (= var8 var14)) (is-O_TSLL (readHeap var14 (next (getTSLL (readHeap var14 var12)))))) (is-O_TSLL (readHeap var14 var12))) (not (= var10 nullAddr))) (not (= var9 0)))) (inv_main32 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Addr) (var5 Heap) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (inv_main90 var10 var9 var8 var7 var6) (= var0 (next (getTSLL (readHeap var10 var8))))) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 var9)) (= var5 var10)) (is-O_TSLL (readHeap var10 var8)))) (inv_main62 var5 var4 var0 var2 var1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main61 var4 var3 var2 var1 var0) (= var2 nullAddr))) (inv_main62 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Int) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Heap) (var11 Int) (var12 Addr) (var13 Int) (var14 Addr) (var15 Addr) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main61 var16 var15 var14 var13 var12) (or (and (not (= var5 1)) (= var11 1)) (and (= var5 1) (= var11 0)))) (= var0 var6)) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (= var5 (data (getTSLL (readHeap var16 var14))))) (= var6 var12)) (= var7 var13)) (= var8 var14)) (= var9 var15)) (= var10 var16)) (is-O_TSLL (readHeap var16 var14))) (not (= var14 nullAddr))) (= var11 0))) (inv_main62 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Int) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main82 var10 var9 var8 var7 var6) (= var4 (data (getTSLL (readHeap var10 var8))))) (= var0 var6)) (= var5 var7)) (= var1 var8)) (= var2 var9)) (= var3 var10)) (is-O_TSLL (readHeap var10 var8))) (= var4 1)) (= var5 1))) (inv_main90 var3 var2 var1 var5 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (and (and (inv_main8 var4 var3 var2 var1) (not (= var1 0))) (= var0 0)) (= nullAddr var3))) (inv_main27 var4 var3 var3 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Int) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main15 var8 var7 var6 var5) (= var4 var5)) (= var0 var6)) (= var1 var7)) (= var2 (writeHeap var8 var6 (O_TSLL (TSLL nullAddr (prev (getTSLL (readHeap var8 var6))) (data (getTSLL (readHeap var8 var6)))))))) (is-O_TSLL (readHeap var8 var6))) (is-O_TSLL (readHeap var8 var6))) (= var3 0)) (= var4 0))) (inv_main23 var2 var1 var0 var4))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main52 var10 var9 var8 var7 var6) (= var5 (next (getTSLL (readHeap var10 var8))))) (= var0 var6)) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (is-O_TSLL (readHeap var10 var8))) (= var5 nullAddr))) (inv_main54 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main57 var4 var3 var2 var1 var0) (is-O_TSLL (readHeap var4 var2)))) (inv_main59 var4 var3 var2 var1 var0 (next (getTSLL (readHeap var4 var2)))))))
(assert (forall ((var0 TSLL) (var1 Int) (var2 Int) (var3 Addr) (var4 Addr) (var5 Heap)) (or (not (and (inv_main8 var5 var4 var3 var2) (or (not (= var1 0)) (= var2 0)))) (inv_main13 (newHeap (allocHeap var5 (O_TSLL var0))) var4 var3 var2 (newAddr (allocHeap var5 (O_TSLL var0)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Int) (var6 Int) (var7 Addr) (var8 Addr) (var9 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main31 var9 var8 var7 var6) (= var4 (next (getTSLL (readHeap var9 var7))))) (= var0 var6)) (= var1 var7)) (= var2 var8)) (= var3 var9)) (is-O_TSLL (readHeap var9 var7))) (not (= var4 nullAddr))) (not (= var5 0)))) (inv_main38 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (and (inv_main49 var4 var3 var2 var1 var0) (is-O_TSLL (readHeap var4 var0))) (is-O_TSLL (readHeap var4 var0)))) (inv_main50 (writeHeap var4 var0 (O_TSLL (TSLL (next (getTSLL (readHeap var4 var0))) (prev (getTSLL (readHeap var4 var0))) 1))) var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (and (inv_main62 var4 var3 var2 var1 var0) (= var2 nullAddr)) (not (= var3 nullAddr)))) (inv_main99 var4 var3 var3 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Int) (var7 Addr) (var8 Addr) (var9 Heap) (var10 Addr) (var11 Addr) (var12 Int) (var13 Addr) (var14 Addr) (var15 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main99 var15 var14 var13 var12 var11) (= var0 var5)) (= var1 var6)) (= var10 var4)) (= var2 var8)) (= var3 (writeHeap var9 var8 defObj))) (= var4 (next (getTSLL (readHeap var15 var13))))) (= var5 var11)) (= var6 var12)) (= var7 var13)) (= var8 var14)) (= var9 var15)) (is-O_TSLL (readHeap var15 var13))) (not (= var10 nullAddr)))) (inv_main99 var3 var10 var10 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Int) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main66 var10 var9 var8 var7 var6) (= var4 (data (getTSLL (readHeap var10 var8))))) (= var0 var6)) (= var5 var7)) (= var1 var8)) (= var2 var9)) (= var3 var10)) (is-O_TSLL (readHeap var10 var8))) (= var4 0)) (= var5 0))) (inv_main74 var3 var2 var1 var5 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main33 var4 var3 var2 var1 var0) (= var0 nullAddr))) (inv_main31 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap) (var9 Int) (var10 Addr) (var11 Int) (var12 Addr) (var13 Addr) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main33 var14 var13 var12 var11 var10) (or (and (= var4 0) (= var9 1)) (and (not (= var4 0)) (= var9 0)))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 (data (getTSLL (readHeap var14 (next (getTSLL (readHeap var14 var12)))))))) (= var5 var11)) (= var6 var12)) (= var7 var13)) (= var8 var14)) (is-O_TSLL (readHeap var14 (next (getTSLL (readHeap var14 var12)))))) (is-O_TSLL (readHeap var14 var12))) (not (= var10 nullAddr))) (= var9 0))) (inv_main31 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (and (inv_main42 var8 var7 var6 var5) (= var4 (data (getTSLL (readHeap var8 var6))))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 var8)) (is-O_TSLL (readHeap var8 var6))) (not (= var4 1)))) (inv_main31 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Int) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main66 var10 var9 var8 var7 var6) (= var4 (data (getTSLL (readHeap var10 var8))))) (= var0 var6)) (= var5 var7)) (= var1 var8)) (= var2 var9)) (= var3 var10)) (is-O_TSLL (readHeap var10 var8))) (= var4 0)) (not (= var5 0)))) (inv_main76 var3 var2 var1 var5 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (and (inv_main15 var8 var7 var6 var5) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 (writeHeap var8 var6 (O_TSLL (TSLL nullAddr (prev (getTSLL (readHeap var8 var6))) (data (getTSLL (readHeap var8 var6)))))))) (is-O_TSLL (readHeap var8 var6))) (is-O_TSLL (readHeap var8 var6))) (not (= var4 0)))) (inv_main22 var3 var2 var1 1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Int) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main15 var8 var7 var6 var5) (= var4 var5)) (= var0 var6)) (= var1 var7)) (= var2 (writeHeap var8 var6 (O_TSLL (TSLL nullAddr (prev (getTSLL (readHeap var8 var6))) (data (getTSLL (readHeap var8 var6)))))))) (is-O_TSLL (readHeap var8 var6))) (is-O_TSLL (readHeap var8 var6))) (= var3 0)) (not (= var4 0)))) (inv_main22 var2 var1 var0 var4))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (and (inv_main13 var4 var3 var2 var1 var0) (is-O_TSLL (readHeap var4 var2))) (is-O_TSLL (readHeap var4 var2)))) (inv_main12 (writeHeap var4 var2 (O_TSLL (TSLL var0 (prev (getTSLL (readHeap var4 var2))) (data (getTSLL (readHeap var4 var2)))))) var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main22 var3 var2 var1 var0) (is-O_TSLL (readHeap var3 var1))) (is-O_TSLL (readHeap var3 var1)))) (inv_main8 (writeHeap var3 var1 (O_TSLL (TSLL (next (getTSLL (readHeap var3 var1))) (prev (getTSLL (readHeap var3 var1))) 1))) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main23 var3 var2 var1 var0) (is-O_TSLL (readHeap var3 var1))) (is-O_TSLL (readHeap var3 var1)))) (inv_main8 (writeHeap var3 var1 (O_TSLL (TSLL (next (getTSLL (readHeap var3 var1))) (prev (getTSLL (readHeap var3 var1))) 0))) var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Heap)) (or (not (and (and (and (and (inv_main5 var3 var2) (= var0 var2)) (= var1 (writeHeap var3 var2 (O_TSLL (TSLL (next (getTSLL (readHeap var3 var2))) (prev (getTSLL (readHeap var3 var2))) 0))))) (is-O_TSLL (readHeap var3 var2))) (is-O_TSLL (readHeap var3 var2)))) (inv_main8 var1 var0 var0 0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (and (inv_main50 var4 var3 var2 var1 var0) (is-O_TSLL (readHeap var4 var0))) (is-O_TSLL (readHeap var4 var0)))) (inv_main51 (writeHeap var4 var0 (O_TSLL (TSLL nullAddr (prev (getTSLL (readHeap var4 var0))) (data (getTSLL (readHeap var4 var0)))))) var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Addr) (var5 Heap)) (or (not (and (and (inv_main59 var5 var4 var3 var2 var1 var0) (is-O_TSLL (readHeap var5 var1))) (is-O_TSLL (readHeap var5 var1)))) (inv_main58 (writeHeap var5 var1 (O_TSLL (TSLL var0 (prev (getTSLL (readHeap var5 var1))) (data (getTSLL (readHeap var5 var1)))))) var4 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Int) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main82 var10 var9 var8 var7 var6) (= var5 (data (getTSLL (readHeap var10 var8))))) (= var0 var6)) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (is-O_TSLL (readHeap var10 var8))) (not (= var5 1)))) (inv_main86 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Addr) (var4 Addr) (var5 Heap) (var6 Addr) (var7 Int) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (inv_main63 var10 var9 var8 var7 var6) (= var0 (data (getTSLL (readHeap var10 var8))))) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 var9)) (= var5 var10)) (is-O_TSLL (readHeap var10 var8)))) (inv_main66 var5 var4 var3 var0 var1))))
(assert (forall ((var0 TSLL) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Int) (var7 Addr) (var8 Addr) (var9 Heap)) (or (not (and (and (and (and (and (and (and (inv_main31 var9 var8 var7 var6) (= var5 (next (getTSLL (readHeap var9 var7))))) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 var9)) (is-O_TSLL (readHeap var9 var7))) (= var5 nullAddr))) (inv_main49 (newHeap (allocHeap var4 (O_TSLL var0))) var3 var2 var1 (newAddr (allocHeap var4 (O_TSLL var0)))))))
(assert (forall ((var0 TSLL) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main31 var10 var9 var8 var7) (= var5 (next (getTSLL (readHeap var10 var8))))) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (is-O_TSLL (readHeap var10 var8))) (not (= var5 nullAddr))) (= var6 0))) (inv_main49 (newHeap (allocHeap var4 (O_TSLL var0))) var3 var2 var1 (newAddr (allocHeap var4 (O_TSLL var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main3 var1 var0) (not (is-O_TSLL (readHeap var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (and (inv_main3 var1 var0) (not (is-O_TSLL (readHeap var1 var0)))) (is-O_TSLL (readHeap var1 var0))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main4 var1 var0) (not (is-O_TSLL (readHeap var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (and (inv_main4 var1 var0) (not (is-O_TSLL (readHeap var1 var0)))) (is-O_TSLL (readHeap var1 var0))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main5 var1 var0) (not (is-O_TSLL (readHeap var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (and (inv_main5 var1 var0) (not (is-O_TSLL (readHeap var1 var0)))) (is-O_TSLL (readHeap var1 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main13 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main13 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))) (is-O_TSLL (readHeap var4 var2))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main12 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (inv_main12 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 (next (getTSLL (readHeap var3 var1))))))) (is-O_TSLL (readHeap var3 var1))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (and (inv_main12 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 (next (getTSLL (readHeap var3 var1))))))) (is-O_TSLL (readHeap var3 (next (getTSLL (readHeap var3 var1)))))) (is-O_TSLL (readHeap var3 var1))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main14 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main15 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (inv_main15 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 var1)))) (is-O_TSLL (readHeap var3 var1))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main22 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (inv_main22 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 var1)))) (is-O_TSLL (readHeap var3 var1))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main23 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (inv_main23 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 var1)))) (is-O_TSLL (readHeap var3 var1))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (inv_main27 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main30 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main33 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))) (not (= var0 nullAddr))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (and (inv_main33 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 (next (getTSLL (readHeap var4 var2))))))) (is-O_TSLL (readHeap var4 var2))) (not (= var0 nullAddr))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main32 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main31 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main38 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main42 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var3 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (inv_main45 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main49 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main49 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var0)))) (is-O_TSLL (readHeap var4 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main50 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main50 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var0)))) (is-O_TSLL (readHeap var4 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main51 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main51 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var0)))) (is-O_TSLL (readHeap var4 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main52 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main54 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main54 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))) (is-O_TSLL (readHeap var4 var2))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main55 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main55 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 (next (getTSLL (readHeap var4 var2))))))) (is-O_TSLL (readHeap var4 var2))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (and (inv_main55 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 (next (getTSLL (readHeap var4 var2))))))) (is-O_TSLL (readHeap var4 (next (getTSLL (readHeap var4 var2)))))) (is-O_TSLL (readHeap var4 var2))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main57 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Addr) (var5 Heap)) (not (and (inv_main59 var5 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var5 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Addr) (var5 Heap)) (not (and (and (inv_main59 var5 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var5 var1)))) (is-O_TSLL (readHeap var5 var1))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main58 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main58 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))) (is-O_TSLL (readHeap var4 var2))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main61 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))) (not (= var2 nullAddr))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main63 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main66 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (inv_main70 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (inv_main76 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main74 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main81 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main82 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (inv_main86 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (inv_main92 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main90 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main99 var4 var3 var2 var1 var0) (not (is-O_TSLL (readHeap var4 var2)))))))
(check-sat)
