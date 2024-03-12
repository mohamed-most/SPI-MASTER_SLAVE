vlib work
vlog RAM.v SPI.v SPI_wrapper.v SPI_wrapper_tb.v RAM_TB.v  
vsim -voptargs=+acc work.SPI_Wrapper_tb
add wave *
run -all
after 10000
quit -sim