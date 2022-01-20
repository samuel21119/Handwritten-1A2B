-makelib ies_lib/xpm -sv \
  "F:/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "F:/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../handwritten-1a2b.gen/sources_1/ip/blk_mem_gen_layer1_128bit/sim/blk_mem_gen_layer1_128bit.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

