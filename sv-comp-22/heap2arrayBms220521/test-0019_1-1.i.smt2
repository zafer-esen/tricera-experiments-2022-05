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

(declare-datatypes ((HeapObject 0) (TData 0))
                   (((O_Int (getInt Int)) (O_UInt (getUInt Int)) (O_Addr (getAddr Addr)) (O_TData (getTData TData)) (defObj))
                   ((TData (lo Addr) (hi Addr)))))
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
(declare-fun inv_main0 (Heap Int) Bool)
(declare-fun inv_main10 (Heap TData Int) Bool)
(declare-fun inv_main12 (Heap TData Int) Bool)
(declare-fun inv_main19 (Heap TData Int Addr Addr) Bool)
(declare-fun inv_main23 (Heap TData Int Addr Addr Int) Bool)
(declare-fun inv_main3 (Heap TData) Bool)
(assert (forall ((var0 TData) (var1 Heap)) (or (not (= var1 emptyHeap)) (inv_main3 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 TData) (var4 TData) (var5 Heap) (var6 Heap) (var7 Int) (var8 TData) (var9 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main12 var9 var8 var7) (= var0 var7)) (= var3 var8)) (= var5 (writeHeap var9 (hi var8) (O_Int 8)))) (is-O_Int (readHeap var9 (hi var8)))) (is-O_Int (readHeap var9 (hi var8)))) (= var1 (lo var3))) (= var2 1)) (= var4 var3)) (= var6 var5))) (inv_main19 var6 var4 var2 var1 (hi var4)))))
(assert (forall ((var0 Addr) (var1 Int) (var2 TData) (var3 Int) (var4 Heap) (var5 Addr) (var6 Int) (var7 Int) (var8 TData) (var9 TData) (var10 Int) (var11 Heap) (var12 Heap) (var13 TData) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main3 var14 var13) (= var6 var1)) (= var8 (TData var0 (hi var2)))) (= var11 var4)) (= var0 (newAddr (allocHeap var14 (O_Int var3))))) (= var1 1)) (= var2 var13)) (= var4 (newHeap (allocHeap var14 (O_Int var3))))) (= var5 (newAddr (allocHeap var11 (O_Int var10))))) (= var7 var6)) (= var9 var8)) (= var12 (newHeap (allocHeap var11 (O_Int var10)))))) (inv_main10 var12 (TData (lo var9) var5) var7))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 TData) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Int) (var8 TData) (var9 Heap) (var10 Int) (var11 Addr) (var12 Addr) (var13 Int) (var14 TData) (var15 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (inv_main23 var15 var14 var13 var12 var11 var10) (not (<= 0 (+ var10 (* (- 1) (getInt (readHeap var15 var11))))))) (is-O_Int (readHeap var15 var11))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 (TData (lo var8) nullAddr))) (= var4 var9)) (= var5 var11)) (= var6 var12)) (= var7 var13)) (= var8 (TData nullAddr (hi var14)))) (= var9 var15))) (inv_main0 var4 0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 TData) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Int) (var8 TData) (var9 Heap) (var10 Addr) (var11 Addr) (var12 Addr) (var13 Addr) (var14 Int) (var15 Int) (var16 TData) (var17 TData) (var18 Heap) (var19 Heap) (var20 Int) (var21 Addr) (var22 Addr) (var23 Int) (var24 TData) (var25 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main23 var25 var24 var23 var22 var21 var20) (= var10 var0)) (= var12 var1)) (= var14 var2)) (= var16 var3)) (= var18 (writeHeap var4 var0 defObj))) (= var0 var21)) (= var1 var22)) (= var2 var23)) (= var3 var24)) (= var4 (writeHeap var25 var22 defObj))) (<= 0 (+ var20 (* (- 1) (getInt (readHeap var25 var21)))))) (is-O_Int (readHeap var25 var21))) (= var5 var11)) (= var6 var13)) (= var7 var15)) (= var8 (TData (lo var17) nullAddr))) (= var9 var19)) (= var11 var10)) (= var13 var12)) (= var15 var14)) (= var17 (TData nullAddr (hi var16)))) (= var19 var18))) (inv_main0 var9 0))))
(assert (forall ((var0 Int) (var1 TData) (var2 Heap)) (or (not (and (and (inv_main10 var2 var1 var0) (is-O_Int (readHeap var2 (lo var1)))) (is-O_Int (readHeap var2 (lo var1))))) (inv_main12 (writeHeap var2 (lo var1) (O_Int 4)) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 TData) (var4 Heap)) (or (not (and (inv_main19 var4 var3 var2 var1 var0) (is-O_Int (readHeap var4 var1)))) (inv_main23 var4 var3 var2 var1 var0 (getInt (readHeap var4 var1))))))
(assert (forall ((var0 Int) (var1 TData) (var2 Heap)) (not (and (inv_main10 var2 var1 var0) (not (is-O_Int (readHeap var2 (lo var1))))))))
(assert (forall ((var0 Int) (var1 TData) (var2 Heap)) (not (and (and (inv_main10 var2 var1 var0) (not (is-O_Int (readHeap var2 (lo var1))))) (is-O_Int (readHeap var2 (lo var1)))))))
(assert (forall ((var0 Int) (var1 TData) (var2 Heap)) (not (and (inv_main12 var2 var1 var0) (not (is-O_Int (readHeap var2 (hi var1))))))))
(assert (forall ((var0 Int) (var1 TData) (var2 Heap)) (not (and (and (inv_main12 var2 var1 var0) (not (is-O_Int (readHeap var2 (hi var1))))) (is-O_Int (readHeap var2 (hi var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 TData) (var4 Heap)) (not (and (inv_main19 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var4 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 TData) (var5 Heap)) (not (and (inv_main23 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var5 var1)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Heap)) (not (and (inv_main0 var2 var1) (not (= (readHeap var2 var0) defObj))))))
(check-sat)
