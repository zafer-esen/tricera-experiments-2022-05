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
(declare-fun inv_main20 (Heap Int AddrRange AddrRange Int Int Int Int Int Int) Bool)
(declare-fun inv_main22 (Heap Int AddrRange AddrRange Int Int Int Int Int Int) Bool)
(declare-fun inv_main27 (Heap Int AddrRange AddrRange Int Int Int Int Int Int) Bool)
(declare-fun inv_main36 (Heap Int AddrRange AddrRange Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main38 (Heap Int AddrRange AddrRange Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main40 (Heap Int AddrRange AddrRange Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main45 (Heap Int AddrRange AddrRange Int Int Int Int Int Int) Bool)
(declare-fun inv_main47 (Heap Int AddrRange AddrRange Int Int Int Int Int Int) Bool)
(declare-fun inv_main49 (Heap Int AddrRange AddrRange Int Int Int Int Int Int) Bool)
(assert (inv_main2 emptyHeap 0))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 Int) (var11 Heap) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 AddrRange) (var21 AddrRange) (var22 Int) (var23 Heap) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 AddrRange) (var31 AddrRange) (var32 Int) (var33 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main47 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24) (= var0 (* var12 var12))) (= var1 var13)) (= var2 var14)) (= var3 var15)) (= var4 var16)) (= var5 var17)) (= var6 var18)) (= var7 var19)) (= var8 var20)) (= var9 var21)) (= var10 var22)) (= var11 var23)) (= var12 (getInt (readHeap var33 (nthAddrRange var31 var29))))) (= var13 var27)) (= var14 var24)) (= var15 var25)) (= var16 var26)) (= var17 var27)) (= var18 var28)) (= var19 var29)) (= var20 var30)) (= var21 var31)) (= var22 var32)) (= var23 var33)) (is-O_Int (readHeap var33 (nthAddrRange var31 var29))))) (inv_main49 var11 var10 var9 var8 var7 var6 (+ var1 var0) var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 AddrRange) (var18 Int) (var19 Int) (var20 Heap) (var21 Heap) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 AddrRange) (var32 AddrRange) (var33 Int) (var34 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main40 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24) (= var0 var25)) (= var1 var26)) (= var6 var27)) (= var8 var28)) (= var10 var29)) (= var12 var30)) (= var14 var31)) (= var16 var32)) (= var18 var33)) (= var20 (writeHeap var34 (nthAddrRange var31 (+ (+ (* (- 1) 1) var24) (* (- 1) var25))) (O_Int (+ var2 (* var29 var25)))))) (is-O_Int (readHeap var34 (nthAddrRange var31 (+ (+ (* (- 1) 1) var24) (* (- 1) var25)))))) (is-O_Int (readHeap var34 (nthAddrRange var31 (+ (+ (* (- 1) 1) var24) (* (- 1) var25)))))) (not (= var4 0))) (or (and (<= 0 (+ (+ (* (- 1) var22) var18) (* (- 1) 1))) (= var23 1)) (and (not (<= 0 (+ (+ (* (- 1) var22) var18) (* (- 1) 1)))) (= var23 0)))) (= var3 var22)) (= var5 var4)) (= var7 var6)) (= var9 var8)) (= var11 var10)) (= var13 var12)) (= var15 var14)) (= var17 var16)) (= var19 var18)) (= var21 var20)) (<= 0 var22)) (not (= var23 0)))) (inv_main27 var21 var19 var17 var15 var13 var11 var9 var7 var5 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 Int) (var17 Int) (var18 Heap) (var19 Heap) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 AddrRange) (var29 AddrRange) (var30 Int) (var31 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main22 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22) (= var0 var22)) (= var2 var23)) (= var4 var24)) (= var6 var25)) (= var8 var26)) (= var10 var27)) (= var12 var28)) (= var14 var29)) (= var16 var30)) (= var18 (writeHeap var31 (nthAddrRange var28 var27) (O_Int 0)))) (is-O_Int (readHeap var31 (nthAddrRange var28 var27)))) (is-O_Int (readHeap var31 (nthAddrRange var28 var27)))) (not (<= 0 (+ (+ (* (- 1) (+ var10 1)) var16) (* (- 1) 1))))) (or (and (<= 0 (+ (+ (* (- 1) var20) var16) (* (- 1) 1))) (= var21 1)) (and (not (<= 0 (+ (+ (* (- 1) var20) var16) (* (- 1) 1)))) (= var21 0)))) (= var1 var20)) (= var3 var2)) (= var5 var4)) (= var7 var6)) (= var9 var8)) (= var11 (+ var10 1))) (= var13 var12)) (= var15 var14)) (= var17 var16)) (= var19 var18)) (<= 0 var20)) (not (= var21 0)))) (inv_main27 var19 var17 var15 var13 var11 var9 var7 var5 var3 var1))))
(assert (forall ((var0 Int) (var1 Heap) (var2 Int) (var3 Int) (var4 Int) (var5 Heap) (var6 AddrRange) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 AddrRange) (var17 AddrRange) (var18 AddrRange) (var19 AddrRange) (var20 Int) (var21 Int) (var22 Heap) (var23 Heap) (var24 Int) (var25 Int) (var26 Int) (var27 Heap)) (or (not (and (and (batchAllocHeapPostHeap emptyHeap var5 (O_Int var4) var3) (batchAllocHeapPostHeap emptyHeap var22 (O_Int var8) var7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main2 var27 var26) (or (and (<= 0 (+ var0 (* (- 1) 1))) (= var2 1)) (and (not (<= 0 (+ var0 (* (- 1) 1)))) (= var2 0)))) (= var3 var0)) (= var1 var27)) (not (= var2 0))) (= var6 (AddrRange (ite (<= 0 (+ var3 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var3))) (= var7 var3)) true) (= var16 (AddrRange (ite (<= 0 (+ var7 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var7))) (= var18 var6)) (= var20 var7)) true) (not (<= 0 (+ var20 (* (- 1) 1))))) (or (and (<= 0 (+ (+ (* (- 1) var24) var20) (* (- 1) 1))) (= var25 1)) (and (not (<= 0 (+ (+ (* (- 1) var24) var20) (* (- 1) 1)))) (= var25 0)))) (= var9 var24)) (= var11 var10)) (= var12 0)) (= var13 0)) (= var14 (* (- 1) 1))) (= var15 0)) (= var17 var16)) (= var19 var18)) (= var21 var20)) (= var23 var22)) (<= 0 var24)) (not (= var25 0))))) (inv_main27 var23 var21 var19 var17 var15 var14 var13 var12 var11 var9))))
(assert (forall ((var0 Int) (var1 Heap) (var2 Int) (var3 Int) (var4 Int) (var5 Heap) (var6 AddrRange) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 AddrRange) (var17 AddrRange) (var18 AddrRange) (var19 AddrRange) (var20 Int) (var21 Int) (var22 Heap) (var23 Heap) (var24 Int) (var25 Int) (var26 Int) (var27 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main2 var27 var26) (or (and (<= 0 (+ var0 (* (- 1) 1))) (= var2 1)) (and (not (<= 0 (+ var0 (* (- 1) 1)))) (= var2 0)))) (= var3 var0)) (= var1 var27)) (not (= var2 0))) (= var6 (AddrRange (ite (<= 0 (+ var3 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var3))) (= var7 var3)) true) (= var16 (AddrRange (ite (<= 0 (+ var7 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var7))) (= var18 var6)) (= var20 var7)) true) (not (<= 0 (+ var20 (* (- 1) 1))))) (or (and (<= 0 (+ (+ (* (- 1) var24) var20) (* (- 1) 1))) (= var25 1)) (and (not (<= 0 (+ (+ (* (- 1) var24) var20) (* (- 1) 1)))) (= var25 0)))) (= var9 var24)) (= var11 var10)) (= var12 0)) (= var13 0)) (= var14 (* (- 1) 1))) (= var15 0)) (= var17 var16)) (= var19 var18)) (= var21 var20)) (= var23 var22)) (<= 0 var24)) (not (= var25 0)))) (batchAllocHeap emptyHeap emptyHeap (O_Int var4) var3 var3))))
(assert (forall ((var0 Int) (var1 Heap) (var2 Int) (var3 Int) (var4 Int) (var5 Heap) (var6 AddrRange) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 AddrRange) (var17 AddrRange) (var18 AddrRange) (var19 AddrRange) (var20 Int) (var21 Int) (var22 Heap) (var23 Heap) (var24 Int) (var25 Int) (var26 Int) (var27 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main2 var27 var26) (or (and (<= 0 (+ var0 (* (- 1) 1))) (= var2 1)) (and (not (<= 0 (+ var0 (* (- 1) 1)))) (= var2 0)))) (= var3 var0)) (= var1 var27)) (not (= var2 0))) (= var6 (AddrRange (ite (<= 0 (+ var3 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var3))) (= var7 var3)) true) (= var16 (AddrRange (ite (<= 0 (+ var7 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var7))) (= var18 var6)) (= var20 var7)) true) (not (<= 0 (+ var20 (* (- 1) 1))))) (or (and (<= 0 (+ (+ (* (- 1) var24) var20) (* (- 1) 1))) (= var25 1)) (and (not (<= 0 (+ (+ (* (- 1) var24) var20) (* (- 1) 1)))) (= var25 0)))) (= var9 var24)) (= var11 var10)) (= var12 0)) (= var13 0)) (= var14 (* (- 1) 1))) (= var15 0)) (= var17 var16)) (= var19 var18)) (= var21 var20)) (= var23 var22)) (<= 0 var24)) (not (= var25 0)))) (batchAllocHeap emptyHeap emptyHeap (O_Int var8) var7 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (or (not (and (and (inv_main20 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (readHeap var9 (nthAddrRange var7 var5)))) (is-O_Int (readHeap var9 (nthAddrRange var7 var5))))) (inv_main22 (writeHeap var9 (nthAddrRange var7 var5) (O_Int 0)) var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 AddrRange) (var20 AddrRange) (var21 Int) (var22 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main40 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12) (= var0 var13)) (= var1 var14)) (= var2 var15)) (= var3 var16)) (= var4 var17)) (= var5 var18)) (= var6 var19)) (= var7 var20)) (= var11 var21)) (= var9 (writeHeap var22 (nthAddrRange var19 (+ (+ (* (- 1) 1) var12) (* (- 1) var13))) (O_Int (+ var8 (* var17 var13)))))) (is-O_Int (readHeap var22 (nthAddrRange var19 (+ (+ (* (- 1) 1) var12) (* (- 1) var13)))))) (is-O_Int (readHeap var22 (nthAddrRange var19 (+ (+ (* (- 1) 1) var12) (* (- 1) var13)))))) (= var10 0)) (<= 0 (+ var11 (* (- 1) 1))))) (inv_main47 var9 var11 var7 var6 0 var4 var3 var2 var10 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Heap) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 AddrRange) (var19 AddrRange) (var20 Int) (var21 Heap) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 AddrRange) (var31 AddrRange) (var32 Int) (var33 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main49 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24) (= var0 (* var10 var10))) (= var1 var11)) (= var2 var12)) (= var3 var13)) (= var4 var14)) (= var5 var15)) (= var6 var16)) (= var22 var17)) (= var7 var18)) (= var8 var19)) (= var23 var20)) (= var9 var21)) (= var10 (getInt (readHeap var33 (nthAddrRange var30 var29))))) (= var11 var26)) (= var12 var24)) (= var13 var25)) (= var14 var26)) (= var15 var27)) (= var16 var28)) (= var17 var29)) (= var18 var30)) (= var19 var31)) (= var20 var32)) (= var21 var33)) (is-O_Int (readHeap var33 (nthAddrRange var30 var29)))) (<= 0 (+ (+ (* (- 1) (+ var22 1)) var23) (* (- 1) 1))))) (inv_main47 var9 var23 var8 var7 (+ var22 1) var6 var5 (+ var1 var0) var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (or (not (and (inv_main27 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (readHeap var9 (nthAddrRange var7 var0))))) (inv_main36 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (readHeap var9 (nthAddrRange var7 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 AddrRange) (var19 AddrRange) (var20 Int) (var21 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (inv_main38 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11) (= var0 (getInt (readHeap var21 (nthAddrRange var18 (+ (+ (* (- 1) 1) var11) (* (- 1) var12))))))) (= var1 var12)) (= var2 var13)) (= var3 var14)) (= var4 var15)) (= var5 var16)) (= var6 var17)) (= var7 var18)) (= var8 var19)) (= var9 var20)) (= var10 var21)) (is-O_Int (readHeap var21 (nthAddrRange var18 (+ (+ (* (- 1) 1) var11) (* (- 1) var12))))))) (inv_main40 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 AddrRange) (var18 AddrRange) (var19 Int) (var20 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (inv_main36 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10) (= var0 var11)) (= var1 var12)) (= var2 var13)) (= var3 var14)) (= var4 var15)) (= var5 var16)) (= var6 var17)) (= var7 var18)) (= var8 var19)) (= var9 (writeHeap var20 (nthAddrRange var18 var11) (O_Int (+ var10 (* (* var15 var11) var15)))))) (is-O_Int (readHeap var20 (nthAddrRange var18 var11)))) (is-O_Int (readHeap var20 (nthAddrRange var18 var11))))) (inv_main38 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 Heap) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 AddrRange) (var17 AddrRange) (var18 Int) (var19 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main22 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10) (= var0 var10)) (= var1 var11)) (= var2 var12)) (= var3 var13)) (= var4 var14)) (= var8 var15)) (= var5 var16)) (= var6 var17)) (= var9 var18)) (= var7 (writeHeap var19 (nthAddrRange var16 var15) (O_Int 0)))) (is-O_Int (readHeap var19 (nthAddrRange var16 var15)))) (is-O_Int (readHeap var19 (nthAddrRange var16 var15)))) (<= 0 (+ (+ (* (- 1) (+ var8 1)) var9) (* (- 1) 1))))) (inv_main20 var7 var9 var6 var5 (+ var8 1) var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 Int) (var12 Int) (var13 Heap) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (and (batchAllocHeapPostHeap emptyHeap var7 (O_Int var6) var5) (batchAllocHeapPostHeap emptyHeap var13 (O_Int var12) var11)) (and (and (and (and (and (and (and (and (and (and (and (and (inv_main2 var16 var15) (or (and (<= 0 (+ var2 (* (- 1) 1))) (= var4 1)) (and (not (<= 0 (+ var2 (* (- 1) 1)))) (= var4 0)))) (= var5 var2)) (= var3 var16)) (not (= var4 0))) (= var9 (AddrRange (ite (<= 0 (+ var5 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var5))) (= var11 var5)) true) (= var8 (AddrRange (ite (<= 0 (+ var11 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var11))) (= var10 var9)) (= var14 var11)) true) (<= 0 (+ var14 (* (- 1) 1)))))) (inv_main20 var13 var14 var10 var8 0 (* (- 1) 1) 0 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 Int) (var12 Int) (var13 Heap) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (inv_main2 var16 var15) (or (and (<= 0 (+ var2 (* (- 1) 1))) (= var4 1)) (and (not (<= 0 (+ var2 (* (- 1) 1)))) (= var4 0)))) (= var5 var2)) (= var3 var16)) (not (= var4 0))) (= var9 (AddrRange (ite (<= 0 (+ var5 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var5))) (= var11 var5)) true) (= var8 (AddrRange (ite (<= 0 (+ var11 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var11))) (= var10 var9)) (= var14 var11)) true) (<= 0 (+ var14 (* (- 1) 1))))) (batchAllocHeap emptyHeap emptyHeap (O_Int var6) var5 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 Int) (var12 Int) (var13 Heap) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (inv_main2 var16 var15) (or (and (<= 0 (+ var2 (* (- 1) 1))) (= var4 1)) (and (not (<= 0 (+ var2 (* (- 1) 1)))) (= var4 0)))) (= var5 var2)) (= var3 var16)) (not (= var4 0))) (= var9 (AddrRange (ite (<= 0 (+ var5 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var5))) (= var11 var5)) true) (= var8 (AddrRange (ite (<= 0 (+ var11 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var11))) (= var10 var9)) (= var14 var11)) true) (<= 0 (+ var14 (* (- 1) 1))))) (batchAllocHeap emptyHeap emptyHeap (O_Int var12) var11 var11))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 AddrRange) (var20 AddrRange) (var21 Int) (var22 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main40 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12) (= var0 var13)) (= var1 var14)) (= var2 var15)) (= var3 var16)) (= var4 var17)) (= var5 var18)) (= var6 var19)) (= var7 var20)) (= var11 var21)) (= var9 (writeHeap var22 (nthAddrRange var19 (+ (+ (* (- 1) 1) var12) (* (- 1) var13))) (O_Int (+ var8 (* var17 var13)))))) (is-O_Int (readHeap var22 (nthAddrRange var19 (+ (+ (* (- 1) 1) var12) (* (- 1) var13)))))) (is-O_Int (readHeap var22 (nthAddrRange var19 (+ (+ (* (- 1) 1) var12) (* (- 1) var13)))))) (= var10 0)) (not (<= 0 (+ var11 (* (- 1) 1)))))) (inv_main45 var9 var11 var7 var6 0 var4 var3 var2 var10 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Heap) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 AddrRange) (var19 AddrRange) (var20 Int) (var21 Heap) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 AddrRange) (var31 AddrRange) (var32 Int) (var33 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main49 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24) (= var0 (* var10 var10))) (= var1 var11)) (= var2 var12)) (= var3 var13)) (= var4 var14)) (= var5 var15)) (= var6 var16)) (= var22 var17)) (= var7 var18)) (= var8 var19)) (= var23 var20)) (= var9 var21)) (= var10 (getInt (readHeap var33 (nthAddrRange var30 var29))))) (= var11 var26)) (= var12 var24)) (= var13 var25)) (= var14 var26)) (= var15 var27)) (= var16 var28)) (= var17 var29)) (= var18 var30)) (= var19 var31)) (= var20 var32)) (= var21 var33)) (is-O_Int (readHeap var33 (nthAddrRange var30 var29)))) (not (<= 0 (+ (+ (* (- 1) (+ var22 1)) var23) (* (- 1) 1)))))) (inv_main45 var9 var23 var8 var7 (+ var22 1) var6 var5 (+ var1 var0) var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (inv_main20 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var9 (nthAddrRange var7 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (and (inv_main20 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var7 (nthAddrRange var7 var5)))) (is-O_Int (readHeap var9 (nthAddrRange var7 var5)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (and (inv_main20 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var9 (nthAddrRange var7 var5))))) (is-O_Int (readHeap var9 (nthAddrRange var7 var5)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (inv_main22 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var9 (nthAddrRange var6 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (and (inv_main22 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var6 (nthAddrRange var6 var5)))) (is-O_Int (readHeap var9 (nthAddrRange var6 var5)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (and (inv_main22 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var9 (nthAddrRange var6 var5))))) (is-O_Int (readHeap var9 (nthAddrRange var6 var5)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (inv_main27 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var9 (nthAddrRange var7 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (and (inv_main27 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var7 (nthAddrRange var7 var0)))) (is-O_Int (readHeap var9 (nthAddrRange var7 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (inv_main36 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var10 (nthAddrRange var8 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (and (inv_main36 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var8 (nthAddrRange var8 var1)))) (is-O_Int (readHeap var10 (nthAddrRange var8 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (and (inv_main36 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var10 (nthAddrRange var8 var1))))) (is-O_Int (readHeap var10 (nthAddrRange var8 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (inv_main38 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var10 (nthAddrRange var7 (+ (+ (* (- 1) 1) var0) (* (- 1) var1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (and (inv_main38 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var7 (nthAddrRange var7 (+ (+ (* (- 1) 1) var0) (* (- 1) var1)))))) (is-O_Int (readHeap var10 (nthAddrRange var7 (+ (+ (* (- 1) 1) var0) (* (- 1) var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (inv_main40 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var10 (nthAddrRange var7 (+ (+ (* (- 1) 1) var0) (* (- 1) var1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (and (inv_main40 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var7 (nthAddrRange var7 (+ (+ (* (- 1) 1) var0) (* (- 1) var1)))))) (is-O_Int (readHeap var10 (nthAddrRange var7 (+ (+ (* (- 1) 1) var0) (* (- 1) var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Heap)) (not (and (and (inv_main40 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var10 (nthAddrRange var7 (+ (+ (* (- 1) 1) var0) (* (- 1) var1))))))) (is-O_Int (readHeap var10 (nthAddrRange var7 (+ (+ (* (- 1) 1) var0) (* (- 1) var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (inv_main47 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var9 (nthAddrRange var7 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (and (inv_main47 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var7 (nthAddrRange var7 var5)))) (is-O_Int (readHeap var9 (nthAddrRange var7 var5)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (inv_main49 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var9 (nthAddrRange var6 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (and (inv_main49 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var6 (nthAddrRange var6 var5)))) (is-O_Int (readHeap var9 (nthAddrRange var6 var5)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (not (and (inv_main45 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var3 var2))))))
(check-sat)
