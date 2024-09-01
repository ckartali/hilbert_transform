create_clock -period 20.000 -name clk -waveform {0.000 10.000} [get_ports clk]
set_input_delay -clock [get_clocks clk] -min -add_delay 1.130 [get_ports {in[*]}]
set_input_delay -clock [get_clocks clk] -max -add_delay 2.140 [get_ports {in[*]}]
set_input_delay -clock [get_clocks clk] -min -add_delay 1.130 [get_ports rst]
set_input_delay -clock [get_clocks clk] -max -add_delay 2.140 [get_ports rst]
set_output_delay -clock [get_clocks clk] -min -add_delay 0.000 [get_ports {outi[*]}]
set_output_delay -clock [get_clocks clk] -max -add_delay 0.020 [get_ports {outi[*]}]
set_output_delay -clock [get_clocks clk] -min -add_delay 0.000 [get_ports {outr[*]}]
set_output_delay -clock [get_clocks clk] -max -add_delay 0.020 [get_ports {outr[*]}]
