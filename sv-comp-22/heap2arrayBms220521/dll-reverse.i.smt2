(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
;===============================================================================
; Encoding of Heap sorts and operations
;-------------------------------------------------------------------------------
(define-sort Addr() Int)
(declare-datatypes ((AddrRange 0))
                   (((AddrRange (AddrRangeStart Addr) (AddrRangeSize Int)))))

(declare-datatypes ((HeapObject 0) (TDLL 0))
                   (((O_Int (getInt Int)) (O_UInt (getUInt Int)) (O_Addr (getAddr Addr)) (O_TDLL (getTDLL TDLL)) (defObj))
                   ((TDLL (next Addr) (prev Addr) (data Int)))))
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
(declare-fun inv_main11 (Heap Addr Addr) Bool)
(declare-fun inv_main12 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main13 (Heap Addr Addr) Bool)
(declare-fun inv_main14 (Heap Addr Addr) Bool)
(declare-fun inv_main16 (Heap Addr Addr) Bool)
(declare-fun inv_main17 (Heap Addr Addr) Bool)
(declare-fun inv_main2 (Heap) Bool)
(declare-fun inv_main23 (Heap Addr Addr) Bool)
(declare-fun inv_main25 (Heap Addr Addr) Bool)
(declare-fun inv_main29 (Heap Addr Addr) Bool)
(declare-fun inv_main3 (Heap Addr) Bool)
(declare-fun inv_main31 (Heap Addr Addr) Bool)
(declare-fun inv_main34 (Heap Addr Addr) Bool)
(declare-fun inv_main37 (Heap Addr Addr) Bool)
(declare-fun inv_main39 (Heap Addr Addr) Bool)
(declare-fun inv_main4 (Heap Addr) Bool)
(declare-fun inv_main40 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main41 (Heap Addr Addr) Bool)
(declare-fun inv_main42 (Heap Addr Addr) Bool)
(declare-fun inv_main44 (Heap Addr Addr) Bool)
(declare-fun inv_main48 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main49 (Heap Addr Addr Addr Addr) Bool)
(declare-fun inv_main5 (Heap Addr) Bool)
(declare-fun inv_main50 (Heap Addr Addr Addr Addr) Bool)
(declare-fun inv_main54 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main56 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main60 (Heap Addr Addr Addr Int Int) Bool)
(declare-fun inv_main63 (Heap Addr Addr Addr Int Int) Bool)
(declare-fun inv_main65 (Heap Addr Addr Addr Int Int) Bool)
(declare-fun inv_main68 (Heap Addr Addr Addr Int Int) Bool)
(declare-fun inv_main69 (Heap Addr Addr Addr Int Int) Bool)
(declare-fun inv_main77 (Heap Addr Addr Addr) Bool)
(assert (inv_main2 emptyHeap))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main50 var9 var8 var7 var6 var5) (= var4 var5)) (= var0 var6)) (= var1 var7)) (= var2 var8)) (= var3 (writeHeap var9 var7 (O_TDLL (TDLL (next (getTDLL (readHeap var9 var7))) var5 (data (getTDLL (readHeap var9 var7)))))))) (is-O_TDLL (readHeap var9 var7))) (is-O_TDLL (readHeap var9 var7))) (not (= var4 nullAddr)))) (inv_main48 var3 var2 var4 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Heap) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main44 var9 var8 var7) (= var1 var7)) (= var3 var8)) (= var4 (writeHeap var9 var7 (O_TDLL (TDLL (next (getTDLL (readHeap var9 var7))) (prev (getTDLL (readHeap var9 var7))) 2))))) (is-O_TDLL (readHeap var9 var7))) (is-O_TDLL (readHeap var9 var7))) (= var0 nullAddr)) (= var2 var1)) (= var6 var3)) (= var5 var4)) (not (= var6 nullAddr)))) (inv_main48 var5 var6 var6 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Heap) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main37 var9 var8 var7) (= var1 var7)) (= var3 var8)) (= var4 (writeHeap var9 (next (getTDLL (readHeap var9 var7))) (O_TDLL (TDLL (next (getTDLL (readHeap var9 (next (getTDLL (readHeap var9 var7)))))) (prev (getTDLL (readHeap var9 (next (getTDLL (readHeap var9 var7)))))) 2))))) (is-O_TDLL (readHeap var9 (next (getTDLL (readHeap var9 var7)))))) (is-O_TDLL (readHeap var9 (next (getTDLL (readHeap var9 var7)))))) (is-O_TDLL (readHeap var9 var7))) (= var0 nullAddr)) (= var2 var1)) (= var6 var3)) (= var5 var4)) (not (= var6 nullAddr)))) (inv_main48 var5 var6 var6 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main63 var12 var11 var10 var9 var8 var7) (= var6 (data (getTDLL (readHeap var12 var10))))) (= var0 var7)) (= var1 var8)) (= var2 var9)) (= var3 var10)) (= var4 var11)) (= var5 var12)) (is-O_TDLL (readHeap var12 var10))) (= var6 2))) (inv_main69 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Heap)) (or (not (and (and (inv_main3 var1 var0) (is-O_TDLL (readHeap var1 var0))) (is-O_TDLL (readHeap var1 var0)))) (inv_main4 (writeHeap var1 var0 (O_TDLL (TDLL nullAddr (prev (getTDLL (readHeap var1 var0))) (data (getTDLL (readHeap var1 var0)))))) var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (inv_main34 var6 var5 var4) (= var3 (next (getTDLL (readHeap var6 var4))))) (= var0 var4)) (= var1 var5)) (= var2 var6)) (is-O_TDLL (readHeap var6 var4))) (not (= var3 nullAddr)))) (inv_main37 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Heap)) (or (not (and (and (inv_main4 var1 var0) (is-O_TDLL (readHeap var1 var0))) (is-O_TDLL (readHeap var1 var0)))) (inv_main5 (writeHeap var1 var0 (O_TDLL (TDLL (next (getTDLL (readHeap var1 var0))) nullAddr (data (getTDLL (readHeap var1 var0)))))) var0))))
(assert (forall ((var0 TDLL) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (and (and (and (and (and (inv_main16 var7 var6 var5) (= var1 var5)) (= var2 var6)) (= var3 (writeHeap var7 var5 (O_TDLL (TDLL (next (getTDLL (readHeap var7 var5))) (prev (getTDLL (readHeap var7 var5))) 0))))) (is-O_TDLL (readHeap var7 var5))) (is-O_TDLL (readHeap var7 var5))) (not (= var4 0)))) (inv_main12 (newHeap (allocHeap var3 (O_TDLL var0))) var2 var1 (newAddr (allocHeap var3 (O_TDLL var0)))))))
(assert (forall ((var0 TDLL) (var1 Addr) (var2 Heap) (var3 Int) (var4 Addr) (var5 Heap)) (or (not (and (and (and (and (and (inv_main5 var5 var4) (= var1 var4)) (= var2 (writeHeap var5 var4 (O_TDLL (TDLL (next (getTDLL (readHeap var5 var4))) (prev (getTDLL (readHeap var5 var4))) 0))))) (is-O_TDLL (readHeap var5 var4))) (is-O_TDLL (readHeap var5 var4))) (not (= var3 0)))) (inv_main12 (newHeap (allocHeap var2 (O_TDLL var0))) var1 var1 (newAddr (allocHeap var2 (O_TDLL var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main48 var3 var2 var1 var0) (is-O_TDLL (readHeap var3 var1)))) (inv_main49 var3 var2 var1 var0 (next (getTDLL (readHeap var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap) (var7 Int) (var8 Int) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main68 var12 var11 var10 var9 var8 var7) (= var0 (next (getTDLL (readHeap var12 var10))))) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (= var5 var11)) (= var6 var12)) (is-O_TDLL (readHeap var12 var10)))) (inv_main54 var6 var5 var0 var3))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main50 var9 var8 var7 var6 var5) (= var4 var5)) (= var0 var6)) (= var1 var7)) (= var2 var8)) (= var3 (writeHeap var9 var7 (O_TDLL (TDLL (next (getTDLL (readHeap var9 var7))) var5 (data (getTDLL (readHeap var9 var7)))))))) (is-O_TDLL (readHeap var9 var7))) (is-O_TDLL (readHeap var9 var7))) (= var4 nullAddr))) (inv_main54 var3 var1 var1 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Heap) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main44 var9 var8 var7) (= var1 var7)) (= var3 var8)) (= var4 (writeHeap var9 var7 (O_TDLL (TDLL (next (getTDLL (readHeap var9 var7))) (prev (getTDLL (readHeap var9 var7))) 2))))) (is-O_TDLL (readHeap var9 var7))) (is-O_TDLL (readHeap var9 var7))) (= var0 nullAddr)) (= var2 var1)) (= var6 var3)) (= var5 var4)) (= var6 nullAddr))) (inv_main54 var5 var0 var0 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Heap) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main37 var9 var8 var7) (= var1 var7)) (= var3 var8)) (= var4 (writeHeap var9 (next (getTDLL (readHeap var9 var7))) (O_TDLL (TDLL (next (getTDLL (readHeap var9 (next (getTDLL (readHeap var9 var7)))))) (prev (getTDLL (readHeap var9 (next (getTDLL (readHeap var9 var7)))))) 2))))) (is-O_TDLL (readHeap var9 (next (getTDLL (readHeap var9 var7)))))) (is-O_TDLL (readHeap var9 (next (getTDLL (readHeap var9 var7)))))) (is-O_TDLL (readHeap var9 var7))) (= var0 nullAddr)) (= var2 var1)) (= var6 var3)) (= var5 var4)) (= var6 nullAddr))) (inv_main54 var5 var0 var0 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main54 var3 var2 var1 var0) (= var1 nullAddr)) (not (= var2 nullAddr)))) (inv_main77 var3 var2 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Heap) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main77 var12 var11 var10 var9) (= var0 var4)) (= var8 var3)) (= var1 var6)) (= var2 (writeHeap var7 var6 defObj))) (= var3 (next (getTDLL (readHeap var12 var10))))) (= var4 var9)) (= var5 var10)) (= var6 var11)) (= var7 var12)) (is-O_TDLL (readHeap var12 var10))) (not (= var8 nullAddr)))) (inv_main77 var2 var8 var8 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (and (inv_main49 var4 var3 var2 var1 var0) (is-O_TDLL (readHeap var4 var2))) (is-O_TDLL (readHeap var4 var2)))) (inv_main50 (writeHeap var4 var2 (O_TDLL (TDLL var1 (prev (getTDLL (readHeap var4 var2))) (data (getTDLL (readHeap var4 var2)))))) var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Int) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main17 var7 var6 var5) (= var2 (next (getTDLL (readHeap var7 var5))))) (= var4 var5)) (= var0 var6)) (= var1 var7)) (is-O_TDLL (readHeap var7 var5))) (not (= var2 nullAddr))) (not (= var3 0))) (not (= var4 nullAddr)))) (inv_main23 var1 var0 var4))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (inv_main13 var6 var5 var4) (= var0 (next (getTDLL (readHeap var6 var4))))) (= var1 var4)) (= var2 var5)) (= var3 var6)) (is-O_TDLL (readHeap var6 var4)))) (inv_main14 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main60 var12 var11 var10 var9 var8 var7) (= var5 (data (getTDLL (readHeap var12 (next (getTDLL (readHeap var12 var10)))))))) (= var0 var7)) (= var6 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (is-O_TDLL (readHeap var12 (next (getTDLL (readHeap var12 var10)))))) (is-O_TDLL (readHeap var12 var10))) (or (not (= var6 2)) (= var5 1)))) (inv_main63 var4 var3 var2 var1 var6 var5))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main56 var8 var7 var6 var5) (= var4 (data (getTDLL (readHeap var8 var6))))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 var8)) (is-O_TDLL (readHeap var8 var6))) (not (= var4 2))) (not (= var4 2)))) (inv_main63 var3 var2 var1 var0 var4 0))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (and (inv_main17 var6 var5 var4) (= var2 (next (getTDLL (readHeap var6 var4))))) (= var3 var4)) (= var0 var5)) (= var1 var6)) (is-O_TDLL (readHeap var6 var4))) (= var2 nullAddr)) (= var3 nullAddr))) (inv_main31 var1 var0 var3))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Int) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main17 var7 var6 var5) (= var2 (next (getTDLL (readHeap var7 var5))))) (= var4 var5)) (= var0 var6)) (= var1 var7)) (is-O_TDLL (readHeap var7 var5))) (not (= var2 nullAddr))) (= var3 0)) (= var4 nullAddr))) (inv_main31 var1 var0 var4))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main60 var12 var11 var10 var9 var8 var7) (= var5 (data (getTDLL (readHeap var12 (next (getTDLL (readHeap var12 var10)))))))) (= var0 var7)) (= var6 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (is-O_TDLL (readHeap var12 (next (getTDLL (readHeap var12 var10)))))) (is-O_TDLL (readHeap var12 var10))) (not (= var5 1))) (= var6 2))) (inv_main65 var4 var3 var2 var1 var6 var5))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main56 var8 var7 var6 var5) (= var4 (data (getTDLL (readHeap var8 var6))))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 var8)) (is-O_TDLL (readHeap var8 var6))) (not (= var4 2))) (= var4 2))) (inv_main65 var3 var2 var1 var0 var4 0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (inv_main14 var2 var1 var0) (is-O_TDLL (readHeap var2 var0))) (is-O_TDLL (readHeap var2 var0)))) (inv_main16 (writeHeap var2 var0 (O_TDLL (TDLL nullAddr (prev (getTDLL (readHeap var2 var0))) (data (getTDLL (readHeap var2 var0)))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main12 var3 var2 var1 var0) (is-O_TDLL (readHeap var3 var1))) (is-O_TDLL (readHeap var3 var1)))) (inv_main11 (writeHeap var3 var1 (O_TDLL (TDLL var0 (prev (getTDLL (readHeap var3 var1))) (data (getTDLL (readHeap var3 var1)))))) var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (inv_main23 var6 var5 var4) (= var0 (next (getTDLL (readHeap var6 var4))))) (= var1 var4)) (= var2 var5)) (= var3 var6)) (is-O_TDLL (readHeap var6 var4)))) (inv_main17 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (inv_main16 var6 var5 var4) (= var0 var4)) (= var1 var5)) (= var2 (writeHeap var6 var4 (O_TDLL (TDLL (next (getTDLL (readHeap var6 var4))) (prev (getTDLL (readHeap var6 var4))) 0))))) (is-O_TDLL (readHeap var6 var4))) (is-O_TDLL (readHeap var6 var4))) (= var3 0))) (inv_main17 var2 var1 var1))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Int) (var3 Addr) (var4 Heap)) (or (not (and (and (and (and (and (inv_main5 var4 var3) (= var0 var3)) (= var1 (writeHeap var4 var3 (O_TDLL (TDLL (next (getTDLL (readHeap var4 var3))) (prev (getTDLL (readHeap var4 var3))) 0))))) (is-O_TDLL (readHeap var4 var3))) (is-O_TDLL (readHeap var4 var3))) (= var2 0))) (inv_main17 var1 var0 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (inv_main42 var2 var1 var0) (is-O_TDLL (readHeap var2 var0))) (is-O_TDLL (readHeap var2 var0)))) (inv_main44 (writeHeap var2 var0 (O_TDLL (TDLL nullAddr (prev (getTDLL (readHeap var2 var0))) (data (getTDLL (readHeap var2 var0)))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (and (inv_main39 var2 var1 var0) (is-O_TDLL (readHeap var2 (next (getTDLL (readHeap var2 var0)))))) (is-O_TDLL (readHeap var2 (next (getTDLL (readHeap var2 var0)))))) (is-O_TDLL (readHeap var2 var0)))) (inv_main41 (writeHeap var2 (next (getTDLL (readHeap var2 var0))) (O_TDLL (TDLL (next (getTDLL (readHeap var2 (next (getTDLL (readHeap var2 var0)))))) var0 (data (getTDLL (readHeap var2 (next (getTDLL (readHeap var2 var0))))))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (inv_main29 var2 var1 var0) (is-O_TDLL (readHeap var2 var0))) (is-O_TDLL (readHeap var2 var0)))) (inv_main34 (writeHeap var2 var0 (O_TDLL (TDLL (next (getTDLL (readHeap var2 var0))) (prev (getTDLL (readHeap var2 var0))) 1))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main40 var3 var2 var1 var0) (is-O_TDLL (readHeap var3 var1))) (is-O_TDLL (readHeap var3 var1)))) (inv_main39 (writeHeap var3 var1 (O_TDLL (TDLL var0 (prev (getTDLL (readHeap var3 var1))) (data (getTDLL (readHeap var3 var1)))))) var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (and (inv_main11 var2 var1 var0) (is-O_TDLL (readHeap var2 (next (getTDLL (readHeap var2 var0)))))) (is-O_TDLL (readHeap var2 (next (getTDLL (readHeap var2 var0)))))) (is-O_TDLL (readHeap var2 var0)))) (inv_main13 (writeHeap var2 (next (getTDLL (readHeap var2 var0))) (O_TDLL (TDLL (next (getTDLL (readHeap var2 (next (getTDLL (readHeap var2 var0)))))) var0 (data (getTDLL (readHeap var2 (next (getTDLL (readHeap var2 var0))))))))) var1 var0))))
(assert (forall ((var0 TDLL) (var1 Heap)) (or (not (inv_main2 var1)) (inv_main3 (newHeap (allocHeap var1 (O_TDLL var0))) (newAddr (allocHeap var1 (O_TDLL var0)))))))
(assert (forall ((var0 TDLL) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (and (and (and (and (and (inv_main34 var7 var6 var5) (= var4 (next (getTDLL (readHeap var7 var5))))) (= var1 var5)) (= var2 var6)) (= var3 var7)) (is-O_TDLL (readHeap var7 var5))) (= var4 nullAddr))) (inv_main40 (newHeap (allocHeap var3 (O_TDLL var0))) var2 var1 (newAddr (allocHeap var3 (O_TDLL var0)))))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Int) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main17 var7 var6 var5) (= var2 (next (getTDLL (readHeap var7 var5))))) (= var4 var5)) (= var0 var6)) (= var1 var7)) (is-O_TDLL (readHeap var7 var5))) (not (= var2 nullAddr))) (not (= var3 0))) (= var4 nullAddr))) (inv_main25 var1 var0 var4))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (inv_main41 var6 var5 var4) (= var0 (next (getTDLL (readHeap var6 var4))))) (= var1 var4)) (= var2 var5)) (= var3 var6)) (is-O_TDLL (readHeap var6 var4)))) (inv_main42 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main54 var3 var2 var1 var0) (not (= var1 nullAddr)))) (inv_main56 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (and (inv_main17 var6 var5 var4) (= var2 (next (getTDLL (readHeap var6 var4))))) (= var3 var4)) (= var0 var5)) (= var1 var6)) (is-O_TDLL (readHeap var6 var4))) (= var2 nullAddr)) (not (= var3 nullAddr)))) (inv_main29 var1 var0 var3))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Addr) (var3 Int) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main17 var7 var6 var5) (= var2 (next (getTDLL (readHeap var7 var5))))) (= var4 var5)) (= var0 var6)) (= var1 var7)) (is-O_TDLL (readHeap var7 var5))) (not (= var2 nullAddr))) (= var3 0)) (not (= var4 nullAddr)))) (inv_main29 var1 var0 var4))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (and (inv_main56 var8 var7 var6 var5) (= var4 (data (getTDLL (readHeap var8 var6))))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 var8)) (is-O_TDLL (readHeap var8 var6))) (= var4 2))) (inv_main60 var3 var2 var1 var0 var4 0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap) (var7 Int) (var8 Int) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main69 var12 var11 var10 var9 var8 var7) (= var0 (next (getTDLL (readHeap var12 var10))))) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (= var5 var11)) (= var6 var12)) (is-O_TDLL (readHeap var12 var10)))) (inv_main68 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main63 var12 var11 var10 var9 var8 var7) (= var6 (data (getTDLL (readHeap var12 var10))))) (= var0 var7)) (= var1 var8)) (= var2 var9)) (= var3 var10)) (= var4 var11)) (= var5 var12)) (is-O_TDLL (readHeap var12 var10))) (not (= var6 2)))) (inv_main68 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main3 var1 var0) (not (is-O_TDLL (readHeap var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (and (inv_main3 var1 var0) (not (is-O_TDLL (readHeap var1 var0)))) (is-O_TDLL (readHeap var1 var0))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main4 var1 var0) (not (is-O_TDLL (readHeap var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (and (inv_main4 var1 var0) (not (is-O_TDLL (readHeap var1 var0)))) (is-O_TDLL (readHeap var1 var0))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (inv_main5 var1 var0) (not (is-O_TDLL (readHeap var1 var0)))))))
(assert (forall ((var0 Addr) (var1 Heap)) (not (and (and (inv_main5 var1 var0) (not (is-O_TDLL (readHeap var1 var0)))) (is-O_TDLL (readHeap var1 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main12 var3 var2 var1 var0) (not (is-O_TDLL (readHeap var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (inv_main12 var3 var2 var1 var0) (not (is-O_TDLL (readHeap var3 var1)))) (is-O_TDLL (readHeap var3 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main11 var2 var1 var0) (not (is-O_TDLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main11 var2 var1 var0) (not (is-O_TDLL (readHeap var2 (next (getTDLL (readHeap var2 var0))))))) (is-O_TDLL (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (and (inv_main11 var2 var1 var0) (not (is-O_TDLL (readHeap var2 (next (getTDLL (readHeap var2 var0))))))) (is-O_TDLL (readHeap var2 (next (getTDLL (readHeap var2 var0)))))) (is-O_TDLL (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main13 var2 var1 var0) (not (is-O_TDLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main14 var2 var1 var0) (not (is-O_TDLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main14 var2 var1 var0) (not (is-O_TDLL (readHeap var2 var0)))) (is-O_TDLL (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main16 var2 var1 var0) (not (is-O_TDLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main16 var2 var1 var0) (not (is-O_TDLL (readHeap var2 var0)))) (is-O_TDLL (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main17 var2 var1 var0) (not (is-O_TDLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (inv_main25 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main23 var2 var1 var0) (not (is-O_TDLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (inv_main31 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main29 var2 var1 var0) (not (is-O_TDLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main29 var2 var1 var0) (not (is-O_TDLL (readHeap var2 var0)))) (is-O_TDLL (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main34 var2 var1 var0) (not (is-O_TDLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main40 var3 var2 var1 var0) (not (is-O_TDLL (readHeap var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (inv_main40 var3 var2 var1 var0) (not (is-O_TDLL (readHeap var3 var1)))) (is-O_TDLL (readHeap var3 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main39 var2 var1 var0) (not (is-O_TDLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main39 var2 var1 var0) (not (is-O_TDLL (readHeap var2 (next (getTDLL (readHeap var2 var0))))))) (is-O_TDLL (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (and (inv_main39 var2 var1 var0) (not (is-O_TDLL (readHeap var2 (next (getTDLL (readHeap var2 var0))))))) (is-O_TDLL (readHeap var2 (next (getTDLL (readHeap var2 var0)))))) (is-O_TDLL (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main41 var2 var1 var0) (not (is-O_TDLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main42 var2 var1 var0) (not (is-O_TDLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main42 var2 var1 var0) (not (is-O_TDLL (readHeap var2 var0)))) (is-O_TDLL (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main44 var2 var1 var0) (not (is-O_TDLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main44 var2 var1 var0) (not (is-O_TDLL (readHeap var2 var0)))) (is-O_TDLL (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main37 var2 var1 var0) (not (is-O_TDLL (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main37 var2 var1 var0) (not (is-O_TDLL (readHeap var2 (next (getTDLL (readHeap var2 var0))))))) (is-O_TDLL (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (and (inv_main37 var2 var1 var0) (not (is-O_TDLL (readHeap var2 (next (getTDLL (readHeap var2 var0))))))) (is-O_TDLL (readHeap var2 (next (getTDLL (readHeap var2 var0)))))) (is-O_TDLL (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main48 var3 var2 var1 var0) (not (is-O_TDLL (readHeap var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main49 var4 var3 var2 var1 var0) (not (is-O_TDLL (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main49 var4 var3 var2 var1 var0) (not (is-O_TDLL (readHeap var4 var2)))) (is-O_TDLL (readHeap var4 var2))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main50 var4 var3 var2 var1 var0) (not (is-O_TDLL (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main50 var4 var3 var2 var1 var0) (not (is-O_TDLL (readHeap var4 var2)))) (is-O_TDLL (readHeap var4 var2))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main56 var3 var2 var1 var0) (not (is-O_TDLL (readHeap var3 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap)) (not (and (inv_main60 var5 var4 var3 var2 var1 var0) (not (is-O_TDLL (readHeap var5 var3)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap)) (not (and (and (inv_main60 var5 var4 var3 var2 var1 var0) (not (is-O_TDLL (readHeap var5 (next (getTDLL (readHeap var5 var3))))))) (is-O_TDLL (readHeap var5 var3))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap)) (not (inv_main65 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap)) (not (and (inv_main63 var5 var4 var3 var2 var1 var0) (not (is-O_TDLL (readHeap var5 var3)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap)) (not (and (inv_main69 var5 var4 var3 var2 var1 var0) (not (is-O_TDLL (readHeap var5 var3)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap)) (not (and (inv_main68 var5 var4 var3 var2 var1 var0) (not (is-O_TDLL (readHeap var5 var3)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main77 var3 var2 var1 var0) (not (is-O_TDLL (readHeap var3 var1)))))))
(check-sat)