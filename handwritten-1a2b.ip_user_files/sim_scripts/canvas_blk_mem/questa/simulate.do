onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib canvas_blk_mem_opt

do {wave.do}

view wave
view structure
view signals

do {canvas_blk_mem.udo}

run -all

quit -force
