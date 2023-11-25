add wave X
add wave Y
add wave reset
add wave max_occupancy
add wave count_reg
add wave Z

force max_occupancy 000100
force reset 1
run

force reset 0
force X 0
force Y 0
run

force X 1
force Y 0
run

force X 0
force Y 0
run

force X 1
force Y 1
run

force X 0
force Y 0
run

force X 1
force Y 0
run

force X 0
force Y 0
run

force X 0
force Y 1
run

force X 0
force Y 0
run

force X 1
force Y 0
run 

force X 0
force Y 0
run

force X 1
force Y 0
run

force X 0
force Y 0
run

force X 1
force Y 0
run
