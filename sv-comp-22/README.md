This directory contains all benchmarks (excluding SV-Comp sources) and the scripts used to produce the results.
- `nonHeapBms220521` contains all non-heap benchmarks (smt2). 
- `heapBms220521` contains all heap-theory benchmarks (smt2).
- `heap2arrayBms220521` contains all heap2array encoded benchmarks (smt2).

Additional files in this directory:
- `nonHeapSMT` contains a list of all non-heap SMT files (input to Eldarica and Z3/Spacer),
- `nonHeapCPA` contains a list of all non-heap `.c` and `.i` files (input to a tool like CPAchecker),
- `heap` contains a list of all heap SMT files under the `heapBms220521` and ``heap2arrayBms220521` directories.

The source benchmarks from SV-Comp 2022 (`.c` and `.i` files together with their accompanying `.yml` files) are not provided in this repository due to licensing reasons, but the file names are listed by `nonHeapCPA` and the files themselves are freely available for download: https://zenodo.org/record/5831003/export/hx
