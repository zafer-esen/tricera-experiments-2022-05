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

(declare-datatypes ((HeapObject 0) (process_node 0))
                   (((O_Int (getInt Int)) (O_UInt (getUInt Int)) (O_Addr (getAddr Addr)) (O_process_node (getprocess_node process_node)) (defObj))
                   ((process_node (process_id Int) (time_to_wait Int) (next Addr)))))
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
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main42 var14 var13 var12 var11 var10 var9 var8) (= var7 (next (getprocess_node (readHeap var14 var10))))) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var6 var14)) (is-O_process_node (readHeap var14 var10))) (not (= var7 nullAddr)))) (inv_main31 var6 var5 var4 var3 var7 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Addr) (var10 Addr) (var11 Heap) (var12 Heap) (var13 Addr) (var14 Int) (var15 Addr) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main4 var16 var15 var14) (not (= var0 0))) (not (<= 0 (+ (+ (* (- 1) var14) 1000) (* (- 1) 1))))) (<= 0 (+ (+ (* (- 1) 1) var14) (* (- 1) 1)))) (= var2 nullAddr)) (= var4 var15)) (= var5 1)) (= var7 var14)) (= var9 var15)) (= var11 var16)) (= var1 nullAddr)) (= var3 var2)) (= var13 var4)) (= var6 var5)) (= var8 var7)) (= var10 var9)) (= var12 var11)) (not (= var13 nullAddr)))) (inv_main31 var12 var10 var8 var6 var13 var3 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Addr) (var11 Addr) (var12 Heap) (var13 Heap) (var14 Addr) (var15 Int) (var16 Addr) (var17 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main4 var17 var16 var15) (not (= var0 0))) (<= 0 (+ (+ (* (- 1) var15) 1000) (* (- 1) 1)))) (= var1 0)) (<= 0 (+ (+ (* (- 1) 1) var15) (* (- 1) 1)))) (= var3 nullAddr)) (= var5 var16)) (= var6 1)) (= var8 var15)) (= var10 var16)) (= var12 var17)) (= var2 nullAddr)) (= var4 var3)) (= var14 var5)) (= var7 var6)) (= var9 var8)) (= var11 var10)) (= var13 var12)) (not (= var14 nullAddr)))) (inv_main31 var13 var11 var9 var7 var14 var4 var2))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap)) (or (not (inv_main56 var4 var3 var2 var1 var0)) (inv_main55 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap) (var5 Int) (var6 Addr) (var7 Addr) (var8 Int) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main54 var10 var9 var8 var7 var6) (= var5 (time_to_wait (getprocess_node (readHeap var10 var6))))) (= var0 var6)) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (is-O_process_node (readHeap var10 var6))) (<= 0 (+ var5 (* (- 1) 1))))) (inv_main55 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap) (var5 Int) (var6 Addr) (var7 Addr) (var8 Int) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main54 var10 var9 var8 var7 var6) (= var5 (time_to_wait (getprocess_node (readHeap var10 var6))))) (= var0 var6)) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (is-O_process_node (readHeap var10 var6))) (not (<= 0 (+ var5 (* (- 1) 1)))))) (inv_main56 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main42 var14 var13 var12 var11 var10 var9 var8) (= var7 (next (getprocess_node (readHeap var14 var10))))) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var6 var14)) (is-O_process_node (readHeap var14 var10))) (= var7 nullAddr))) (inv_main45 var6 var5 (+ var4 (* (- 1) 1)) var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Addr) (var10 Addr) (var11 Heap) (var12 Heap) (var13 Addr) (var14 Int) (var15 Addr) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main4 var16 var15 var14) (not (= var0 0))) (not (<= 0 (+ (+ (* (- 1) var14) 1000) (* (- 1) 1))))) (<= 0 (+ (+ (* (- 1) 1) var14) (* (- 1) 1)))) (= var2 nullAddr)) (= var4 var15)) (= var5 1)) (= var7 var14)) (= var9 var15)) (= var11 var16)) (= var1 nullAddr)) (= var3 var2)) (= var13 var4)) (= var6 var5)) (= var8 var7)) (= var10 var9)) (= var12 var11)) (= var13 nullAddr))) (inv_main45 var12 var10 (+ var8 (* (- 1) 1)) var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Addr) (var11 Addr) (var12 Heap) (var13 Heap) (var14 Addr) (var15 Int) (var16 Addr) (var17 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main4 var17 var16 var15) (not (= var0 0))) (<= 0 (+ (+ (* (- 1) var15) 1000) (* (- 1) 1)))) (= var1 0)) (<= 0 (+ (+ (* (- 1) 1) var15) (* (- 1) 1)))) (= var3 nullAddr)) (= var5 var16)) (= var6 1)) (= var8 var15)) (= var10 var16)) (= var12 var17)) (= var2 nullAddr)) (= var4 var3)) (= var14 var5)) (= var7 var6)) (= var9 var8)) (= var11 var10)) (= var13 var12)) (= var14 nullAddr))) (inv_main45 var13 var11 (+ var9 (* (- 1) 1)) var2))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap) (var7 Int) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main31 var14 var13 var12 var11 var10 var9 var8) (= var7 (time_to_wait (getprocess_node (readHeap var14 var10))))) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var6 var14)) (is-O_process_node (readHeap var14 var10))) (not (= var7 1)))) (inv_main34 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Heap) (var6 Int) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main31 var14 var13 var12 var11 var10 var9 var8) (= var6 (time_to_wait (getprocess_node (readHeap var14 var10))))) (= var0 var8)) (= var7 var9)) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var5 var14)) (is-O_process_node (readHeap var14 var10))) (= var6 1)) (= var7 nullAddr))) (inv_main37 var5 var4 var3 var2 var1 var7 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Int) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main55 var10 var9 var8 var7 var6) (= var5 (next (getprocess_node (readHeap var10 var6))))) (= var0 var6)) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (is-O_process_node (readHeap var10 var6))) (not (= var5 nullAddr)))) (inv_main54 var4 var3 var2 var1 var5))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Heap)) (or (not (and (inv_main7 var2 var1 var0) (not (= var1 nullAddr)))) (inv_main54 var2 var1 var0 var1 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Heap)) (or (not (and (and (inv_main16 var5 var4 var3 var2 var1) (is-O_process_node (readHeap var5 var1))) (is-O_process_node (readHeap var5 var1)))) (inv_main15 (writeHeap var5 var1 (O_process_node (process_node var0 (time_to_wait (getprocess_node (readHeap var5 var1))) (next (getprocess_node (readHeap var5 var1)))))) var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap) (var7 Int) (var8 Addr) (var9 Addr) (var10 Int) (var11 Int) (var12 Addr) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main18 var13 var12 var11 var10 var9 var8 var7) (= var0 var7)) (= var1 var8)) (= var2 var9)) (= var3 var10)) (= var4 var11)) (= var5 var12)) (= var6 (writeHeap var13 var8 (O_process_node (process_node (process_id (getprocess_node (readHeap var13 var8))) (time_to_wait (getprocess_node (readHeap var13 var8))) var12))))) (is-O_process_node (readHeap var13 var8))) (is-O_process_node (readHeap var13 var8)))) (inv_main7 var6 var1 var4))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Int) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (inv_main45 var8 var7 var6 var5) (= var0 (process_id (getprocess_node (readHeap var8 var5))))) (= var1 var5)) (= var2 var6)) (= var3 var7)) (= var4 var8)) (is-O_process_node (readHeap var8 var5)))) (inv_main7 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Heap)) (or (not (and (and (and (inv_main4 var3 var2 var1) (not (= var0 0))) (not (<= 0 (+ (+ (* (- 1) var1) 1000) (* (- 1) 1))))) (not (<= 0 (+ (+ (* (- 1) 1) var1) (* (- 1) 1)))))) (inv_main7 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Addr) (var4 Heap)) (or (not (and (and (and (and (inv_main4 var4 var3 var2) (not (= var0 0))) (<= 0 (+ (+ (* (- 1) var2) 1000) (* (- 1) 1)))) (= var1 0)) (not (<= 0 (+ (+ (* (- 1) 1) var2) (* (- 1) 1)))))) (inv_main7 var4 var3 var2))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main40 var14 var13 var12 var11 var10 var9 var8 var7) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var6 (writeHeap var14 var9 (O_process_node (process_node (process_id (getprocess_node (readHeap var14 var9))) (time_to_wait (getprocess_node (readHeap var14 var9))) var7))))) (is-O_process_node (readHeap var14 var9))) (is-O_process_node (readHeap var14 var9)))) (inv_main42 var6 var5 var4 var3 var2 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap) (var7 Int) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main41 var14 var13 var12 var11 var10 var9 var8 var7) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var6 (writeHeap var14 var10 (O_process_node (process_node (process_id (getprocess_node (readHeap var14 var10))) (+ var7 (* (- 1) 1)) (next (getprocess_node (readHeap var14 var10)))))))) (is-O_process_node (readHeap var14 var10)))) (inv_main42 var6 var5 var4 var3 var2 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Addr) (var7 Heap) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main37 var14 var13 var12 var11 var10 var9 var8) (= var0 (next (getprocess_node (readHeap var14 var10))))) (= var1 var8)) (= var2 var9)) (= var3 var10)) (= var4 var11)) (= var5 var12)) (= var6 var13)) (= var7 var14)) (is-O_process_node (readHeap var14 var10)))) (inv_main42 var7 var0 var5 var4 var3 var3 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Int) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main55 var10 var9 var8 var7 var6) (= var5 (next (getprocess_node (readHeap var10 var6))))) (= var0 var6)) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (is-O_process_node (readHeap var10 var6))) (= var5 nullAddr))) (inv_main4 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Heap)) (or (not (and (inv_main7 var2 var1 var0) (= var1 nullAddr))) (inv_main4 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Heap) (var2 Heap)) (or (not (and (and (inv_main2 var2) (= var0 nullAddr)) (= var1 var2))) (inv_main4 var1 var0 1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Heap) (var6 Int) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main31 var14 var13 var12 var11 var10 var9 var8) (= var6 (time_to_wait (getprocess_node (readHeap var14 var10))))) (= var0 var8)) (= var7 var9)) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var5 var14)) (is-O_process_node (readHeap var14 var10))) (= var6 1)) (not (= var7 nullAddr)))) (inv_main38 var5 var4 var3 var2 var1 var7 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Addr) (var7 process_node) (var8 Heap) (var9 Int) (var10 Addr) (var11 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main4 var11 var10 var9) (not (= var0 0))) (<= 0 (+ (+ (* (- 1) var9) 1000) (* (- 1) 1)))) (not (= var1 0))) (= var2 (newAddr (allocHeap var11 (O_process_node var7))))) (= var4 var3)) (= var5 var9)) (= var6 var10)) (= var8 (newHeap (allocHeap var11 (O_process_node var7)))))) (inv_main16 var8 var6 var5 var4 var2))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 Heap)) (or (not (and (and (and (and (and (and (and (inv_main15 var9 var8 var7 var6 var5) (= var0 var5)) (= var1 var6)) (= var2 (+ var7 1))) (= var3 var8)) (= var4 (writeHeap var9 var5 (O_process_node (process_node (process_id (getprocess_node (readHeap var9 var5))) var7 (next (getprocess_node (readHeap var9 var5)))))))) (is-O_process_node (readHeap var9 var5))) (is-O_process_node (readHeap var9 var5)))) (inv_main18 var4 var3 var2 var1 var0 var0 1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (or (not (and (inv_main38 var6 var5 var4 var3 var2 var1 var0) (is-O_process_node (readHeap var6 var2)))) (inv_main40 var6 var5 var4 var3 var2 var1 var0 (next (getprocess_node (readHeap var6 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (or (not (and (inv_main34 var6 var5 var4 var3 var2 var1 var0) (is-O_process_node (readHeap var6 var2)))) (inv_main41 var6 var5 var4 var3 var2 var1 var0 (time_to_wait (getprocess_node (readHeap var6 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Heap)) (not (and (inv_main16 var4 var3 var2 var1 var0) (not (is-O_process_node (readHeap var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Heap)) (not (and (and (inv_main16 var4 var3 var2 var1 var0) (not (is-O_process_node (readHeap var4 var0)))) (is-O_process_node (readHeap var4 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Heap)) (not (and (inv_main15 var4 var3 var2 var1 var0) (not (is-O_process_node (readHeap var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Heap)) (not (and (and (inv_main15 var4 var3 var2 var1 var0) (not (is-O_process_node (readHeap var4 var0)))) (is-O_process_node (readHeap var4 var0))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (not (is-O_process_node (readHeap var6 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (not (is-O_process_node (readHeap var6 var1)))) (is-O_process_node (readHeap var6 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main31 var6 var5 var4 var3 var2 var1 var0) (not (is-O_process_node (readHeap var6 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main37 var6 var5 var4 var3 var2 var1 var0) (not (is-O_process_node (readHeap var6 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main38 var6 var5 var4 var3 var2 var1 var0) (not (is-O_process_node (readHeap var6 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (inv_main40 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_process_node (readHeap var7 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (and (inv_main40 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_process_node (readHeap var7 var2)))) (is-O_process_node (readHeap var7 var2))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main34 var6 var5 var4 var3 var2 var1 var0) (not (is-O_process_node (readHeap var6 var2)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (inv_main41 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_process_node (readHeap var7 var3)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Heap)) (not (and (inv_main42 var6 var5 var4 var3 var2 var1 var0) (not (is-O_process_node (readHeap var6 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Heap)) (not (and (inv_main45 var3 var2 var1 var0) (not (is-O_process_node (readHeap var3 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap)) (not (and (inv_main54 var4 var3 var2 var1 var0) (not (is-O_process_node (readHeap var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap)) (not (inv_main56 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Heap)) (not (and (inv_main55 var4 var3 var2 var1 var0) (not (is-O_process_node (readHeap var4 var0)))))))
(check-sat)
