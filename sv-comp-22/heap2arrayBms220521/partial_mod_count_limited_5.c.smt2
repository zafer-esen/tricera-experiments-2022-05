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
(declare-fun inv_main17 (Heap Int Int Int Int AddrRange Int Int) Bool)
(declare-fun inv_main20 (Heap Int Int Int Int AddrRange Int Int) Bool)
(declare-fun inv_main21 (Heap Int Int Int Int AddrRange Int Int) Bool)
(declare-fun inv_main29 (Heap Int Int Int Int AddrRange Int Int) Bool)
(declare-fun inv_main3 (Heap Int Int Int Int AddrRange) Bool)
(declare-fun inv_main31 (Heap Int Int Int Int AddrRange Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Heap)) (or (not (and (= var3 emptyHeap) (= var2 1000))) (inv_main3 (newBatchHeap (batchAllocHeap emptyHeap (O_Int var1) var2)) var2 var0 0 0 (AddrRange (ite (<= 0 (+ var2 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var2)))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 Int) (var9 Int)) (or (or (not (and (and (inv_main21 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (readHeap var7 (nthAddrRange var2 var5)))) (is-O_Int (readHeap var7 (nthAddrRange var2 var5))))) (inv_main20 (writeHeap var7 (nthAddrRange var2 var5) (O_Int var8)) var6 var5 var4 var3 var2 var1 var0)) (not (and (and (and (and (or (not (<= 0 (+ (* (- 1) var8) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var5) (* (- 1) 1)))) (or (not (<= 0 (+ var8 (* (- 1) 1)))) (<= 0 (+ var5 (* (- 1) 1))))) (or (and (<= 0 var0) (<= 0 (+ (+ (* 1 var8) var0) (* (- 1) 1)))) (and (not (<= 0 var0)) (<= 0 (+ (+ (* 1 var8) (* (- 1) var0)) (* (- 1) 1)))))) (or (and (<= 0 var0) (<= 0 (+ (+ (* (- 1) var8) var0) (* (- 1) 1)))) (and (not (<= 0 var0)) (<= 0 (+ (+ (* (- 1) var8) (* (- 1) var0)) (* (- 1) 1)))))) (= var5 (+ (* var9 var0) var8)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 AddrRange) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Heap) (var16 Int)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main17 var15 var14 var13 var12 var11 var10 var9 var8) (= var0 var8)) (= var5 var9)) (= var1 var10)) (= var4 var11)) (= var2 var12)) (= var7 var13)) (= var6 var14)) (= var3 (writeHeap var15 (nthAddrRange var10 var13) (O_Int (+ var13 1))))) (is-O_Int (readHeap var15 (nthAddrRange var10 var13)))) (is-O_Int (readHeap var15 (nthAddrRange var10 var13)))) (or (not (or (not (and (and (and (or (not (<= 0 (+ (+ (* (- 2) var16) var6) (* (- 1) 1)))) (<= 0 (+ var6 (* (- 1) 1)))) (<= 0 (+ (+ (* 1 (+ var6 (* (- 2) var16))) 2) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) (+ var6 (* (- 2) var16))) 2) (* (- 1) 1)))) (or (not (<= 0 (+ (* (- 1) (+ var6 (* (- 2) var16))) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var6) (* (- 1) 1)))))) (<= 0 (+ (+ (* (- 1) var16) var7) (* (- 1) 1))))) (not (<= 0 (+ (+ (* (- 1) var4) var5) (* (- 1) 1))))))) (inv_main20 var3 var6 var7 var2 var4 var1 var5 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 AddrRange) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Heap) (var16 Int)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main17 var15 var14 var13 var12 var11 var10 var9 var8) (= var0 var8)) (= var5 var9)) (= var1 var10)) (= var4 var11)) (= var2 var12)) (= var7 var13)) (= var6 var14)) (= var3 (writeHeap var15 (nthAddrRange var10 var13) (O_Int (+ var13 1))))) (is-O_Int (readHeap var15 (nthAddrRange var10 var13)))) (is-O_Int (readHeap var15 (nthAddrRange var10 var13)))) (<= 0 (+ (+ (* (- 1) var4) var5) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) var16) var7) (* (- 1) 1)))) (or (not (<= 0 (+ (* (- 1) (+ var6 (* (- 2) var16))) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var6) (* (- 1) 1))))) (or (not (<= 0 (+ (+ (* (- 2) var16) var6) (* (- 1) 1)))) (<= 0 (+ var6 (* (- 1) 1))))) (<= 0 (+ (+ (* 1 (+ var6 (* (- 2) var16))) 2) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) (+ var6 (* (- 2) var16))) 2) (* (- 1) 1))))) (inv_main21 var3 var6 var7 var2 var4 var1 var5 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (inv_main20 var16 var15 var14 var13 var12 var11 var10 var9) (= var6 (getInt (readHeap var16 (nthAddrRange var11 var14))))) (= var0 var9)) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var7 var14)) (= var8 var15)) (= var5 var16)) (is-O_Int (readHeap var16 (nthAddrRange var11 var14)))) (= var6 0)) (<= 0 (+ (+ (* (- 1) (+ var7 1)) var8) (* (- 1) 1))))) (inv_main17 var5 var8 (+ var7 1) var4 (+ var3 1) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (inv_main20 var16 var15 var14 var13 var12 var11 var10 var9) (= var6 (getInt (readHeap var16 (nthAddrRange var11 var14))))) (= var0 var9)) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var7 var14)) (= var8 var15)) (= var5 var16)) (is-O_Int (readHeap var16 (nthAddrRange var11 var14)))) (not (= var6 0))) (<= 0 (+ (+ (* (- 1) (+ var7 1)) var8) (* (- 1) 1))))) (inv_main17 var5 var8 (+ var7 1) var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 AddrRange) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Heap) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (inv_main3 var15 var14 var13 var12 var11 var10) (or (and (and (and (and (and (and (and (and (<= 0 (+ (+ (* (- 1) var7) var16) (* (- 1) 1))) (or (not (<= 0 (+ (* (- 1) var18) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var19) (* (- 1) 1))))) (or (not (<= 0 (+ var18 (* (- 1) 1)))) (<= 0 (+ var19 (* (- 1) 1))))) (or (and (<= 0 var17) (<= 0 (+ (+ (* 1 var18) var17) (* (- 1) 1)))) (and (not (<= 0 var17)) (<= 0 (+ (+ (* 1 var18) (* (- 1) var17)) (* (- 1) 1)))))) (or (and (<= 0 var17) (<= 0 (+ (+ (* (- 1) var18) var17) (* (- 1) 1)))) (and (not (<= 0 var17)) (<= 0 (+ (+ (* (- 1) var18) (* (- 1) var17)) (* (- 1) 1)))))) (= var17 5)) (= var18 (+ var19 (* (* (- 1) var17) var16)))) (= var19 var14)) (= var8 1)) (and (not (or (not (and (and (and (and (and (and (or (not (<= 0 (+ var22 (* (- 1) 1)))) (<= 0 (+ var23 (* (- 1) 1)))) (or (and (<= 0 var21) (<= 0 (+ (+ (* 1 var22) var21) (* (- 1) 1)))) (and (not (<= 0 var21)) (<= 0 (+ (+ (* 1 var22) (* (- 1) var21)) (* (- 1) 1)))))) (or (and (<= 0 var21) (<= 0 (+ (+ (* (- 1) var22) var21) (* (- 1) 1)))) (and (not (<= 0 var21)) (<= 0 (+ (+ (* (- 1) var22) (* (- 1) var21)) (* (- 1) 1)))))) (= var21 5)) (= var22 (+ var23 (* (* (- 1) var21) var20)))) (= var23 var14)) (or (not (<= 0 (+ (* (- 1) var22) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var23) (* (- 1) 1)))))) (<= 0 (+ (+ (* (- 1) var7) var20) (* (- 1) 1))))) (= var8 0)))) (= var0 5)) (= var1 var7)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var9 var14)) (= var6 var15)) (<= 0 (+ var7 (* (- 1) 1)))) (not (= var8 0))) (<= 0 (+ var9 (* (- 1) 1))))) (inv_main17 var6 var9 0 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main31 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ (* (- 1) (+ var5 1)) var6) (* (- 1) 1))))) (inv_main29 var7 var6 (+ var5 1) var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main20 var16 var15 var14 var13 var12 var11 var10 var9) (= var6 (getInt (readHeap var16 (nthAddrRange var11 var14))))) (= var0 var9)) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var7 var14)) (= var8 var15)) (= var5 var16)) (is-O_Int (readHeap var16 (nthAddrRange var11 var14)))) (= var6 0)) (not (<= 0 (+ (+ (* (- 1) (+ var7 1)) var8) (* (- 1) 1))))) (<= 0 (+ var8 (* (- 1) 1))))) (inv_main29 var5 var8 0 var4 (+ var3 1) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main20 var16 var15 var14 var13 var12 var11 var10 var9) (= var6 (getInt (readHeap var16 (nthAddrRange var11 var14))))) (= var0 var9)) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var7 var14)) (= var8 var15)) (= var5 var16)) (is-O_Int (readHeap var16 (nthAddrRange var11 var14)))) (not (= var6 0))) (not (<= 0 (+ (+ (* (- 1) (+ var7 1)) var8) (* (- 1) 1))))) (<= 0 (+ var8 (* (- 1) 1))))) (inv_main29 var5 var8 0 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 AddrRange) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Heap) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main3 var15 var14 var13 var12 var11 var10) (or (and (and (and (and (and (and (and (and (<= 0 (+ (+ (* (- 1) var7) var16) (* (- 1) 1))) (or (not (<= 0 (+ (* (- 1) var18) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var19) (* (- 1) 1))))) (or (not (<= 0 (+ var18 (* (- 1) 1)))) (<= 0 (+ var19 (* (- 1) 1))))) (or (and (<= 0 var17) (<= 0 (+ (+ (* 1 var18) var17) (* (- 1) 1)))) (and (not (<= 0 var17)) (<= 0 (+ (+ (* 1 var18) (* (- 1) var17)) (* (- 1) 1)))))) (or (and (<= 0 var17) (<= 0 (+ (+ (* (- 1) var18) var17) (* (- 1) 1)))) (and (not (<= 0 var17)) (<= 0 (+ (+ (* (- 1) var18) (* (- 1) var17)) (* (- 1) 1)))))) (= var17 5)) (= var18 (+ var19 (* (* (- 1) var17) var16)))) (= var19 var14)) (= var8 1)) (and (not (or (not (and (and (and (and (and (and (or (not (<= 0 (+ var22 (* (- 1) 1)))) (<= 0 (+ var23 (* (- 1) 1)))) (or (and (<= 0 var21) (<= 0 (+ (+ (* 1 var22) var21) (* (- 1) 1)))) (and (not (<= 0 var21)) (<= 0 (+ (+ (* 1 var22) (* (- 1) var21)) (* (- 1) 1)))))) (or (and (<= 0 var21) (<= 0 (+ (+ (* (- 1) var22) var21) (* (- 1) 1)))) (and (not (<= 0 var21)) (<= 0 (+ (+ (* (- 1) var22) (* (- 1) var21)) (* (- 1) 1)))))) (= var21 5)) (= var22 (+ var23 (* (* (- 1) var21) var20)))) (= var23 var14)) (or (not (<= 0 (+ (* (- 1) var22) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var23) (* (- 1) 1)))))) (<= 0 (+ (+ (* (- 1) var7) var20) (* (- 1) 1))))) (= var8 0)))) (= var0 5)) (= var1 var7)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var9 var14)) (= var6 var15)) (<= 0 (+ var7 (* (- 1) 1)))) (not (= var8 0))) (not (<= 0 (+ var9 (* (- 1) 1))))) (<= 0 (+ var9 (* (- 1) 1))))) (inv_main29 var6 var9 0 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main29 var16 var15 var14 var13 var12 var11 var10 var9) (= var8 (getInt (readHeap var16 (nthAddrRange var11 var14))))) (= var0 var9)) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var5 var14)) (= var6 var15)) (= var7 var16)) (is-O_Int (readHeap var16 (nthAddrRange var11 var14)))) (= var8 0))) (inv_main31 var7 var6 var5 (+ var4 1) var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main29 var16 var15 var14 var13 var12 var11 var10 var9) (= var8 (getInt (readHeap var16 (nthAddrRange var11 var14))))) (= var0 var9)) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var5 var14)) (= var6 var15)) (= var7 var16)) (is-O_Int (readHeap var16 (nthAddrRange var11 var14)))) (not (= var8 0)))) (inv_main31 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main17 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var7 (nthAddrRange var2 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (and (inv_main17 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var2 (nthAddrRange var2 var5)))) (is-O_Int (readHeap var7 (nthAddrRange var2 var5)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (and (inv_main17 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var7 (nthAddrRange var2 var5))))) (is-O_Int (readHeap var7 (nthAddrRange var2 var5)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main21 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var7 (nthAddrRange var2 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (and (inv_main21 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var2 (nthAddrRange var2 var5)))) (is-O_Int (readHeap var7 (nthAddrRange var2 var5)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (and (inv_main21 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var7 (nthAddrRange var2 var5))))) (is-O_Int (readHeap var7 (nthAddrRange var2 var5)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main20 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var7 (nthAddrRange var2 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (and (inv_main20 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var2 (nthAddrRange var2 var5)))) (is-O_Int (readHeap var7 (nthAddrRange var2 var5)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main29 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var7 (nthAddrRange var2 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (and (inv_main29 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var2 (nthAddrRange var2 var5)))) (is-O_Int (readHeap var7 (nthAddrRange var2 var5)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (not (and (inv_main31 var7 var6 var5 var4 var3 var2 var1 var0) (not (or (not (and (and (and (and (and (and (or (not (<= 0 (+ var10 (* (- 1) 1)))) (<= 0 (+ var11 (* (- 1) 1)))) (or (and (<= 0 var9) (<= 0 (+ (+ (* 1 var10) var9) (* (- 1) 1)))) (and (not (<= 0 var9)) (<= 0 (+ (+ (* 1 var10) (* (- 1) var9)) (* (- 1) 1)))))) (or (and (<= 0 var9) (<= 0 (+ (+ (* (- 1) var10) var9) (* (- 1) 1)))) (and (not (<= 0 var9)) (<= 0 (+ (+ (* (- 1) var10) (* (- 1) var9)) (* (- 1) 1)))))) (= var9 (* 2 var0))) (= var10 (+ var11 (* (* (- 1) var9) var8)))) (= var11 var6)) (or (not (<= 0 (+ (* (- 1) var10) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var11) (* (- 1) 1)))))) (<= 0 (+ (+ (* (- 1) var4) var8) (* (- 1) 1)))))))))
(check-sat)
