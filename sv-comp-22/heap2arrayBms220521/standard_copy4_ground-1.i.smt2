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

(declare-datatypes ((HeapObject 0))
                   (((O_Int (getInt Int)) (O_UInt (getUInt Int)) (O_Addr (getAddr Addr)) (defObj))))
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
(declare-fun inv_main13 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main17 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main19 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main22 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main24 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main27 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main29 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main32 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main34 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main38 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main8 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int) Bool)
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Int) (var7 Heap) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 Int) (var13 Heap) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 Int) (var18 Heap) (var19 AddrRange) (var20 AddrRange) (var21 Int) (var22 Heap) (var23 AddrRange) (var24 Int) (var25 Heap) (var26 Heap)) (or (not (and (and (batchAllocHeapPostHeap emptyHeap var13 (O_Int var12) 100000) (and (batchAllocHeapPostHeap emptyHeap var18 (O_Int var17) 100000) (and (batchAllocHeapPostHeap emptyHeap var22 (O_Int var21) 100000) (and (batchAllocHeapPostHeap emptyHeap var25 (O_Int var24) 100000) (batchAllocHeapPostHeap emptyHeap var7 (O_Int var6) 100000))))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var8 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000)) (= var9 var14)) (= var10 var15)) (= var11 var16)) true) (= var14 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) (= var15 var19)) (= var16 var20)) true) (= var19 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) (= var20 var23)) true) (= var23 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) true) (= var26 emptyHeap)) (= var1 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) (= var2 var8)) (= var3 var9)) (= var4 var10)) (= var5 var11)) true))) (inv_main8 var7 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Int) (var7 Heap) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 Int) (var13 Heap) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 Int) (var18 Heap) (var19 AddrRange) (var20 AddrRange) (var21 Int) (var22 Heap) (var23 AddrRange) (var24 Int) (var25 Heap) (var26 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var8 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000)) (= var9 var14)) (= var10 var15)) (= var11 var16)) true) (= var14 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) (= var15 var19)) (= var16 var20)) true) (= var19 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) (= var20 var23)) true) (= var23 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) true) (= var26 emptyHeap)) (= var1 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) (= var2 var8)) (= var3 var9)) (= var4 var10)) (= var5 var11)) true)) (batchAllocHeap emptyHeap emptyHeap (O_Int var12) 100000 100000))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Int) (var7 Heap) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 Int) (var13 Heap) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 Int) (var18 Heap) (var19 AddrRange) (var20 AddrRange) (var21 Int) (var22 Heap) (var23 AddrRange) (var24 Int) (var25 Heap) (var26 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var8 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000)) (= var9 var14)) (= var10 var15)) (= var11 var16)) true) (= var14 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) (= var15 var19)) (= var16 var20)) true) (= var19 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) (= var20 var23)) true) (= var23 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) true) (= var26 emptyHeap)) (= var1 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) (= var2 var8)) (= var3 var9)) (= var4 var10)) (= var5 var11)) true)) (batchAllocHeap emptyHeap emptyHeap (O_Int var17) 100000 100000))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Int) (var7 Heap) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 Int) (var13 Heap) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 Int) (var18 Heap) (var19 AddrRange) (var20 AddrRange) (var21 Int) (var22 Heap) (var23 AddrRange) (var24 Int) (var25 Heap) (var26 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var8 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000)) (= var9 var14)) (= var10 var15)) (= var11 var16)) true) (= var14 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) (= var15 var19)) (= var16 var20)) true) (= var19 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) (= var20 var23)) true) (= var23 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) true) (= var26 emptyHeap)) (= var1 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) (= var2 var8)) (= var3 var9)) (= var4 var10)) (= var5 var11)) true)) (batchAllocHeap emptyHeap emptyHeap (O_Int var21) 100000 100000))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Int) (var7 Heap) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 Int) (var13 Heap) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 Int) (var18 Heap) (var19 AddrRange) (var20 AddrRange) (var21 Int) (var22 Heap) (var23 AddrRange) (var24 Int) (var25 Heap) (var26 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var8 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000)) (= var9 var14)) (= var10 var15)) (= var11 var16)) true) (= var14 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) (= var15 var19)) (= var16 var20)) true) (= var19 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) (= var20 var23)) true) (= var23 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) true) (= var26 emptyHeap)) (= var1 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) (= var2 var8)) (= var3 var9)) (= var4 var10)) (= var5 var11)) true)) (batchAllocHeap emptyHeap emptyHeap (O_Int var24) 100000 100000))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Int) (var7 Heap) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 Int) (var13 Heap) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 Int) (var18 Heap) (var19 AddrRange) (var20 AddrRange) (var21 Int) (var22 Heap) (var23 AddrRange) (var24 Int) (var25 Heap) (var26 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= var8 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000)) (= var9 var14)) (= var10 var15)) (= var11 var16)) true) (= var14 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) (= var15 var19)) (= var16 var20)) true) (= var19 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) (= var20 var23)) true) (= var23 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) true) (= var26 emptyHeap)) (= var1 (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000))) (= var2 var8)) (= var3 var9)) (= var4 var10)) (= var5 var11)) true)) (batchAllocHeap emptyHeap emptyHeap (O_Int var6) 100000 100000))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (or (not (and (and (and (inv_main38 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (readHeap var8 (nthAddrRange var3 var0)))) (is-O_Int (readHeap var8 (nthAddrRange var7 var0)))) (<= 0 (+ (+ (* (- 1) (+ var0 1)) 100000) (* (- 1) 1))))) (inv_main38 var8 var7 var6 var5 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main34 var16 var15 var14 var13 var12 var11 var10 var9 var8) (= var7 var9)) (= var0 var10)) (= var1 var11)) (= var2 var12)) (= var3 var13)) (= var4 var14)) (= var5 var15)) (= var6 (writeHeap var16 (nthAddrRange var11 var9) (O_Int var8)))) (is-O_Int (readHeap var16 (nthAddrRange var11 var9)))) (is-O_Int (readHeap var16 (nthAddrRange var11 var9)))) (not (<= 0 (+ (+ (* (- 1) (+ var7 1)) 100000) (* (- 1) 1)))))) (inv_main38 var6 var5 var4 var3 var2 var1 var0 (+ var7 1) 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (or (not (and (inv_main17 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (readHeap var7 (nthAddrRange var6 var0))))) (inv_main19 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (readHeap var7 (nthAddrRange var6 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (or (not (and (inv_main27 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (readHeap var7 (nthAddrRange var4 var0))))) (inv_main29 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (readHeap var7 (nthAddrRange var4 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main34 var16 var15 var14 var13 var12 var11 var10 var9 var8) (= var7 var9)) (= var0 var10)) (= var1 var11)) (= var2 var12)) (= var3 var13)) (= var4 var14)) (= var5 var15)) (= var6 (writeHeap var16 (nthAddrRange var11 var9) (O_Int var8)))) (is-O_Int (readHeap var16 (nthAddrRange var11 var9)))) (is-O_Int (readHeap var16 (nthAddrRange var11 var9)))) (<= 0 (+ (+ (* (- 1) (+ var7 1)) 100000) (* (- 1) 1))))) (inv_main32 var6 var5 var4 var3 var2 var1 var0 (+ var7 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main29 var16 var15 var14 var13 var12 var11 var10 var9 var8) (= var7 var9)) (= var0 var10)) (= var1 var11)) (= var2 var12)) (= var3 var13)) (= var4 var14)) (= var5 var15)) (= var6 (writeHeap var16 (nthAddrRange var12 var9) (O_Int var8)))) (is-O_Int (readHeap var16 (nthAddrRange var12 var9)))) (is-O_Int (readHeap var16 (nthAddrRange var12 var9)))) (not (<= 0 (+ (+ (* (- 1) (+ var7 1)) 100000) (* (- 1) 1)))))) (inv_main32 var6 var5 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (or (not (and (inv_main32 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (readHeap var7 (nthAddrRange var3 var0))))) (inv_main34 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (readHeap var7 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main24 var16 var15 var14 var13 var12 var11 var10 var9 var8) (= var7 var9)) (= var0 var10)) (= var1 var11)) (= var2 var12)) (= var3 var13)) (= var4 var14)) (= var5 var15)) (= var6 (writeHeap var16 (nthAddrRange var13 var9) (O_Int var8)))) (is-O_Int (readHeap var16 (nthAddrRange var13 var9)))) (is-O_Int (readHeap var16 (nthAddrRange var13 var9)))) (<= 0 (+ (+ (* (- 1) (+ var7 1)) 100000) (* (- 1) 1))))) (inv_main22 var6 var5 var4 var3 var2 var1 var0 (+ var7 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main19 var16 var15 var14 var13 var12 var11 var10 var9 var8) (= var7 var9)) (= var0 var10)) (= var1 var11)) (= var2 var12)) (= var3 var13)) (= var4 var14)) (= var5 var15)) (= var6 (writeHeap var16 (nthAddrRange var14 var9) (O_Int var8)))) (is-O_Int (readHeap var16 (nthAddrRange var14 var9)))) (is-O_Int (readHeap var16 (nthAddrRange var14 var9)))) (not (<= 0 (+ (+ (* (- 1) (+ var7 1)) 100000) (* (- 1) 1)))))) (inv_main22 var6 var5 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (or (not (inv_main8 var6 var5 var4 var3 var2 var1 var0)) (inv_main13 var6 var5 var4 var3 var2 var1 0))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main13 var14 var13 var12 var11 var10 var9 var8) (= var7 var8)) (= var0 var9)) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var6 (writeHeap var14 (nthAddrRange var13 var8) (O_Int var5)))) (is-O_Int (readHeap var14 (nthAddrRange var13 var8)))) (is-O_Int (readHeap var14 (nthAddrRange var13 var8)))) (<= 0 (+ (+ (* (- 1) (+ var7 1)) 100000) (* (- 1) 1))))) (inv_main13 var6 var4 var3 var2 var1 var0 (+ var7 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (or (not (and (inv_main22 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (readHeap var7 (nthAddrRange var5 var0))))) (inv_main24 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (readHeap var7 (nthAddrRange var5 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main29 var16 var15 var14 var13 var12 var11 var10 var9 var8) (= var7 var9)) (= var0 var10)) (= var1 var11)) (= var2 var12)) (= var3 var13)) (= var4 var14)) (= var5 var15)) (= var6 (writeHeap var16 (nthAddrRange var12 var9) (O_Int var8)))) (is-O_Int (readHeap var16 (nthAddrRange var12 var9)))) (is-O_Int (readHeap var16 (nthAddrRange var12 var9)))) (<= 0 (+ (+ (* (- 1) (+ var7 1)) 100000) (* (- 1) 1))))) (inv_main27 var6 var5 var4 var3 var2 var1 var0 (+ var7 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main24 var16 var15 var14 var13 var12 var11 var10 var9 var8) (= var7 var9)) (= var0 var10)) (= var1 var11)) (= var2 var12)) (= var3 var13)) (= var4 var14)) (= var5 var15)) (= var6 (writeHeap var16 (nthAddrRange var13 var9) (O_Int var8)))) (is-O_Int (readHeap var16 (nthAddrRange var13 var9)))) (is-O_Int (readHeap var16 (nthAddrRange var13 var9)))) (not (<= 0 (+ (+ (* (- 1) (+ var7 1)) 100000) (* (- 1) 1)))))) (inv_main27 var6 var5 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main19 var16 var15 var14 var13 var12 var11 var10 var9 var8) (= var7 var9)) (= var0 var10)) (= var1 var11)) (= var2 var12)) (= var3 var13)) (= var4 var14)) (= var5 var15)) (= var6 (writeHeap var16 (nthAddrRange var14 var9) (O_Int var8)))) (is-O_Int (readHeap var16 (nthAddrRange var14 var9)))) (is-O_Int (readHeap var16 (nthAddrRange var14 var9)))) (<= 0 (+ (+ (* (- 1) (+ var7 1)) 100000) (* (- 1) 1))))) (inv_main17 var6 var5 var4 var3 var2 var1 var0 (+ var7 1)))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main13 var14 var13 var12 var11 var10 var9 var8) (= var7 var8)) (= var0 var9)) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var6 (writeHeap var14 (nthAddrRange var13 var8) (O_Int var5)))) (is-O_Int (readHeap var14 (nthAddrRange var13 var8)))) (is-O_Int (readHeap var14 (nthAddrRange var13 var8)))) (not (<= 0 (+ (+ (* (- 1) (+ var7 1)) 100000) (* (- 1) 1)))))) (inv_main17 var6 var4 var3 var2 var1 var0 (+ var7 1) 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main13 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (and (inv_main13 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var5 (nthAddrRange var5 var0)))) (is-O_Int (readHeap var6 (nthAddrRange var5 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (and (inv_main13 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var5 var0))))) (is-O_Int (readHeap var6 (nthAddrRange var5 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main17 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var7 (nthAddrRange var6 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (and (inv_main17 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var6 (nthAddrRange var6 var0)))) (is-O_Int (readHeap var7 (nthAddrRange var6 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main19 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var6 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (and (inv_main19 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var6 (nthAddrRange var6 var1)))) (is-O_Int (readHeap var8 (nthAddrRange var6 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (and (inv_main19 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var6 var1))))) (is-O_Int (readHeap var8 (nthAddrRange var6 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main22 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var7 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (and (inv_main22 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var5 (nthAddrRange var5 var0)))) (is-O_Int (readHeap var7 (nthAddrRange var5 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main24 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var5 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (and (inv_main24 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var5 (nthAddrRange var5 var1)))) (is-O_Int (readHeap var8 (nthAddrRange var5 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (and (inv_main24 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var5 var1))))) (is-O_Int (readHeap var8 (nthAddrRange var5 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main27 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var7 (nthAddrRange var4 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (and (inv_main27 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var4 (nthAddrRange var4 var0)))) (is-O_Int (readHeap var7 (nthAddrRange var4 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main29 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var4 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (and (inv_main29 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var4 (nthAddrRange var4 var1)))) (is-O_Int (readHeap var8 (nthAddrRange var4 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (and (inv_main29 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var4 var1))))) (is-O_Int (readHeap var8 (nthAddrRange var4 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main32 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var7 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (and (inv_main32 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var3 (nthAddrRange var3 var0)))) (is-O_Int (readHeap var7 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main34 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (and (inv_main34 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var3 (nthAddrRange var3 var1)))) (is-O_Int (readHeap var8 (nthAddrRange var3 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (and (inv_main34 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var3 var1))))) (is-O_Int (readHeap var8 (nthAddrRange var3 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main38 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var7 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main38 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var7 (nthAddrRange var7 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main38 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main38 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var3 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main38 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var7 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (and (inv_main38 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var7 (nthAddrRange var7 var0)))) (is-O_Int (readHeap var8 (nthAddrRange var7 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (and (inv_main38 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var3 var0))))) (is-O_Int (readHeap var8 (nthAddrRange var7 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (and (and (inv_main38 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var3 (nthAddrRange var3 var0)))) (is-O_Int (readHeap var8 (nthAddrRange var3 var0)))) (is-O_Int (readHeap var8 (nthAddrRange var7 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (and (and (inv_main38 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (= (getInt (readHeap var8 (nthAddrRange var7 var0))) (getInt (readHeap var8 (nthAddrRange var3 var0)))))) (is-O_Int (readHeap var8 (nthAddrRange var3 var0)))) (is-O_Int (readHeap var8 (nthAddrRange var7 var0)))))))
(check-sat)