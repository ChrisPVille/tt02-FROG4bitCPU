#!/bin/sh
iverilog -gspecify -gstrict-ca-eval -Wall -Winfloop -D__SIM__ -o frog \
    frog_tb.v \
    ../src/frog.v \
    && ./frog -fst && gtkwave frog.vcd
