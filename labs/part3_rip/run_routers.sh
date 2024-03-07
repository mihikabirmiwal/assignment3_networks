#!/bin/bash

kathara exec r1 bash shared/compile_p4.sh

for i in $(seq 1 6); 
do
	kathara exec r${i} bash shared/run_router.sh &
done
for i in $(seq 1 6); 
do
	kathara exec r${i} bash shared/r${i}_run_controller.sh &
done
