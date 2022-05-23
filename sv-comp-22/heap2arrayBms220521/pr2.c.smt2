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
(declare-fun inv_main2 (Heap Int) Bool)
(declare-fun inv_main26 (Heap Int Int Int AddrRange Int Int) Bool)
(declare-fun inv_main31 (Heap Int Int Int AddrRange Int Int) Bool)
(declare-fun inv_main32 (Heap Int Int Int AddrRange Int Int) Bool)
(declare-fun inv_main33 (Heap Int Int Int AddrRange Int Int) Bool)
(declare-fun inv_main34 (Heap Int Int Int AddrRange Int Int) Bool)
(declare-fun inv_main36 (Heap Int Int Int AddrRange Int Int) Bool)
(declare-fun inv_main39 (Heap Int Int Int AddrRange Int Int Int) Bool)
(assert (inv_main2 emptyHeap 0))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main31 var13 var12 var11 var10 var9 var8 var7) (= var6 var7)) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var5 var11)) (= var3 var12)) (= var4 (writeHeap var13 (nthAddrRange var9 (+ (* 2 var10) (* (- 1) 2))) (O_Int var8)))) (is-O_Int (readHeap var13 (nthAddrRange var9 (+ (* 2 var10) (* (- 1) 2)))))) (is-O_Int (readHeap var13 (nthAddrRange var9 (+ (* 2 var10) (* (- 1) 2)))))) (<= 0 (+ var6 (* (- 1) var5))))) (inv_main33 var4 var3 var5 var2 var1 var0 var6))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main32 var13 var12 var11 var10 var9 var8 var7) (= var6 var7)) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var5 var11)) (= var3 var12)) (= var4 (writeHeap var13 (nthAddrRange var9 (+ (* 2 var10) (* (- 1) 2))) (O_Int 0)))) (is-O_Int (readHeap var13 (nthAddrRange var9 (+ (* 2 var10) (* (- 1) 2)))))) (is-O_Int (readHeap var13 (nthAddrRange var9 (+ (* 2 var10) (* (- 1) 2)))))) (<= 0 (+ var6 (* (- 1) var5))))) (inv_main33 var4 var3 var5 var2 var1 var0 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int)) (or (not (and (and (and (and (and (and (inv_main26 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ var7 (* (- 1) var3)))) (or (not (<= 0 (+ (* (- 1) (+ var5 (* (- 2) var7))) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var5) (* (- 1) 1))))) (or (not (<= 0 (+ (+ (* (- 2) var7) var5) (* (- 1) 1)))) (<= 0 (+ var5 (* (- 1) 1))))) (<= 0 (+ (+ (* 1 (+ var5 (* (- 2) var7))) 2) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) (+ var5 (* (- 2) var7))) 2) (* (- 1) 1)))) (<= 0 (+ var1 (* (- 1) var4))))) (inv_main31 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int)) (or (not (and (and (and (and (and (and (inv_main26 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ var7 (* (- 1) var3)))) (or (not (<= 0 (+ (* (- 1) (+ var5 (* (- 2) var7))) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var5) (* (- 1) 1))))) (or (not (<= 0 (+ (+ (* (- 2) var7) var5) (* (- 1) 1)))) (<= 0 (+ var5 (* (- 1) 1))))) (<= 0 (+ (+ (* 1 (+ var5 (* (- 2) var7))) 2) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) (+ var5 (* (- 2) var7))) 2) (* (- 1) 1)))) (not (<= 0 (+ var1 (* (- 1) var4)))))) (inv_main32 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int)) (or (not (and (and (inv_main26 var6 var5 var4 var3 var2 var1 var0) (not (or (not (and (and (and (or (not (<= 0 (+ (+ (* (- 2) var7) var5) (* (- 1) 1)))) (<= 0 (+ var5 (* (- 1) 1)))) (<= 0 (+ (+ (* 1 (+ var5 (* (- 2) var7))) 2) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) (+ var5 (* (- 2) var7))) 2) (* (- 1) 1)))) (or (not (<= 0 (+ (* (- 1) (+ var5 (* (- 2) var7))) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var5) (* (- 1) 1)))))) (<= 0 (+ var7 (* (- 1) var3)))))) (<= 0 (+ var5 (* (- 1) 1))))) (inv_main36 var6 var5 var4 0 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main39 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ (* (- 1) (+ var4 1)) var6) (* (- 1) 1))))) (inv_main36 var7 var6 var5 (+ var4 1) var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main33 var13 var12 var11 var10 var9 var8 var7) (= var0 var7)) (= var1 var8)) (= var2 var9)) (= var3 var10)) (= var4 var11)) (= var5 var12)) (= var6 (writeHeap var13 (nthAddrRange var9 (+ (* 2 var10) (* (- 1) 1))) (O_Int var7)))) (is-O_Int (readHeap var13 (nthAddrRange var9 (+ (* 2 var10) (* (- 1) 1)))))) (is-O_Int (readHeap var13 (nthAddrRange var9 (+ (* 2 var10) (* (- 1) 1))))))) (inv_main26 var6 var5 var4 (+ var3 1) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main34 var13 var12 var11 var10 var9 var8 var7) (= var0 var7)) (= var1 var8)) (= var2 var9)) (= var3 var10)) (= var4 var11)) (= var5 var12)) (= var6 (writeHeap var13 (nthAddrRange var9 (+ (* 2 var10) (* (- 1) 1))) (O_Int 0)))) (is-O_Int (readHeap var13 (nthAddrRange var9 (+ (* 2 var10) (* (- 1) 1)))))) (is-O_Int (readHeap var13 (nthAddrRange var9 (+ (* 2 var10) (* (- 1) 1))))))) (inv_main26 var6 var5 var4 (+ var3 1) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Heap) (var15 Heap) (var16 Int) (var17 Int) (var18 Heap) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int)) (or (not (and (batchAllocHeapPostHeap emptyHeap var14 (O_Int var3) var2) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main2 var18 var17) (<= 0 (+ (+ (* (- 1) 1) var2) (* (- 1) 1)))) (= var6 (AddrRange (ite (<= 0 (+ var2 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var2))) (= var8 var0)) (= var10 var1)) (= var12 var2)) true) (= var23 0)) (= var12 (+ (* 2 var24) var23))) (or (not (<= 0 (+ (* (- 1) var23) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var12) (* (- 1) 1))))) (or (not (<= 0 (+ var23 (* (- 1) 1)))) (<= 0 (+ var12 (* (- 1) 1))))) (<= 0 (+ (+ (* 1 var23) 2) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) var23) 2) (* (- 1) 1)))) (or (and (and (and (and (and (and (= var19 0) (= var12 (+ (* 2 var20) var19))) (or (not (<= 0 (+ (* (- 1) var19) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var12) (* (- 1) 1))))) (or (not (<= 0 (+ var19 (* (- 1) 1)))) (<= 0 (+ var12 (* (- 1) 1))))) (<= 0 (+ (+ (* 1 var19) 2) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) var19) 2) (* (- 1) 1)))) (= var16 1)) (and (not (or (not (and (and (and (and (or (not (<= 0 (+ (* (- 1) var21) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var12) (* (- 1) 1)))) (or (not (<= 0 (+ var21 (* (- 1) 1)))) (<= 0 (+ var12 (* (- 1) 1))))) (<= 0 (+ (+ (* 1 var21) 2) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) var21) 2) (* (- 1) 1)))) (= var12 (+ (* 2 var22) var21)))) (= var21 0))) (= var16 0)))) (= var4 1)) (= var5 3)) (= var7 var6)) (= var9 var8)) (= var11 var10)) (= var13 var12)) (= var15 var14)) (not (= var16 0))))) (inv_main26 var15 var13 var11 1 var7 var5 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Heap) (var15 Heap) (var16 Int) (var17 Int) (var18 Heap) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main2 var18 var17) (<= 0 (+ (+ (* (- 1) 1) var2) (* (- 1) 1)))) (= var6 (AddrRange (ite (<= 0 (+ var2 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var2))) (= var8 var0)) (= var10 var1)) (= var12 var2)) true) (= var23 0)) (= var12 (+ (* 2 var24) var23))) (or (not (<= 0 (+ (* (- 1) var23) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var12) (* (- 1) 1))))) (or (not (<= 0 (+ var23 (* (- 1) 1)))) (<= 0 (+ var12 (* (- 1) 1))))) (<= 0 (+ (+ (* 1 var23) 2) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) var23) 2) (* (- 1) 1)))) (or (and (and (and (and (and (and (= var19 0) (= var12 (+ (* 2 var20) var19))) (or (not (<= 0 (+ (* (- 1) var19) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var12) (* (- 1) 1))))) (or (not (<= 0 (+ var19 (* (- 1) 1)))) (<= 0 (+ var12 (* (- 1) 1))))) (<= 0 (+ (+ (* 1 var19) 2) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) var19) 2) (* (- 1) 1)))) (= var16 1)) (and (not (or (not (and (and (and (and (or (not (<= 0 (+ (* (- 1) var21) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var12) (* (- 1) 1)))) (or (not (<= 0 (+ var21 (* (- 1) 1)))) (<= 0 (+ var12 (* (- 1) 1))))) (<= 0 (+ (+ (* 1 var21) 2) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) var21) 2) (* (- 1) 1)))) (= var12 (+ (* 2 var22) var21)))) (= var21 0))) (= var16 0)))) (= var4 1)) (= var5 3)) (= var7 var6)) (= var9 var8)) (= var11 var10)) (= var13 var12)) (= var15 var14)) (not (= var16 0)))) (batchAllocHeap emptyHeap emptyHeap (O_Int var3) var2 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 Int) (var9 Int) (var10 AddrRange) (var11 Int) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main36 var14 var13 var12 var11 var10 var9 var8) (or (and (= (getInt (readHeap var14 (nthAddrRange var10 var11))) 0) (= var0 1)) (and (not (= (getInt (readHeap var14 (nthAddrRange var10 var11))) 0)) (= var0 0)))) (= var1 var8)) (= var2 var9)) (= var3 var10)) (= var4 var11)) (= var5 var12)) (= var6 var13)) (= var7 var14)) (is-O_Int (readHeap var14 (nthAddrRange var10 var11)))) (not (<= 0 (+ (getInt (readHeap var14 (nthAddrRange var10 var11))) (* (- 1) var12))))) (is-O_Int (readHeap var14 (nthAddrRange var10 var11))))) (inv_main39 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (and (inv_main36 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ (getInt (readHeap var6 (nthAddrRange var2 var3))) (* (- 1) var4)))) (is-O_Int (readHeap var6 (nthAddrRange var2 var3))))) (inv_main39 var6 var5 var4 var3 var2 var1 var0 1))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main31 var13 var12 var11 var10 var9 var8 var7) (= var6 var7)) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var5 var11)) (= var3 var12)) (= var4 (writeHeap var13 (nthAddrRange var9 (+ (* 2 var10) (* (- 1) 2))) (O_Int var8)))) (is-O_Int (readHeap var13 (nthAddrRange var9 (+ (* 2 var10) (* (- 1) 2)))))) (is-O_Int (readHeap var13 (nthAddrRange var9 (+ (* 2 var10) (* (- 1) 2)))))) (not (<= 0 (+ var6 (* (- 1) var5)))))) (inv_main34 var4 var3 var5 var2 var1 var0 var6))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main32 var13 var12 var11 var10 var9 var8 var7) (= var6 var7)) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var5 var11)) (= var3 var12)) (= var4 (writeHeap var13 (nthAddrRange var9 (+ (* 2 var10) (* (- 1) 2))) (O_Int 0)))) (is-O_Int (readHeap var13 (nthAddrRange var9 (+ (* 2 var10) (* (- 1) 2)))))) (is-O_Int (readHeap var13 (nthAddrRange var9 (+ (* 2 var10) (* (- 1) 2)))))) (not (<= 0 (+ var6 (* (- 1) var5)))))) (inv_main34 var4 var3 var5 var2 var1 var0 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main31 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 2))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main31 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var2 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 2)))))) (is-O_Int (readHeap var6 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 2)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main31 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 2))))))) (is-O_Int (readHeap var6 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 2)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main32 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 2))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main32 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var2 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 2)))))) (is-O_Int (readHeap var6 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 2)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main32 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 2))))))) (is-O_Int (readHeap var6 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 2)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main33 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main33 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var2 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 1)))))) (is-O_Int (readHeap var6 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main33 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 1))))))) (is-O_Int (readHeap var6 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main34 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main34 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var2 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 1)))))) (is-O_Int (readHeap var6 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main34 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 1))))))) (is-O_Int (readHeap var6 (nthAddrRange var2 (+ (* 2 var3) (* (- 1) 1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main36 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var2 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main36 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var2 (nthAddrRange var2 var3)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main36 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var2 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main36 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var2 (nthAddrRange var2 var3)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main36 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var2 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main36 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var2 (nthAddrRange var2 var3)))) (is-O_Int (readHeap var6 (nthAddrRange var2 var3)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (and (inv_main36 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var2 var3))))) (not (<= 0 (+ (getInt (readHeap var6 (nthAddrRange var2 var3))) (* (- 1) var4))))) (is-O_Int (readHeap var6 (nthAddrRange var2 var3)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (and (and (inv_main36 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var2 (nthAddrRange var2 var3)))) (is-O_Int (readHeap var6 (nthAddrRange var2 var3)))) (not (<= 0 (+ (getInt (readHeap var6 (nthAddrRange var2 var3))) (* (- 1) var4))))) (is-O_Int (readHeap var6 (nthAddrRange var2 var3)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main39 var7 var6 var5 var4 var3 var2 var1 var0) (= var0 0)))))
(check-sat)
