## Constraints file for 4-bit ALU on Basys 3 Board

## Inputs (Switches)
set_property PACKAGE_PIN V17 [get_ports {a[0]}]  
set_property PACKAGE_PIN V16 [get_ports {a[1]}]  
set_property PACKAGE_PIN W16 [get_ports {a[2]}]  
set_property PACKAGE_PIN W17 [get_ports {a[3]}]  

set_property PACKAGE_PIN W15 [get_ports {b[0]}]  
set_property PACKAGE_PIN V15 [get_ports {b[1]}]  
set_property PACKAGE_PIN W14 [get_ports {b[2]}]  
set_property PACKAGE_PIN W13 [get_ports {b[3]}]  

set_property PACKAGE_PIN V2  [get_ports {opcode[0]}]  
set_property PACKAGE_PIN T3  [get_ports {opcode[1]}]  
set_property PACKAGE_PIN T2  [get_ports {opcode[2]}]  

## Outputs (LEDs for debugging)
set_property PACKAGE_PIN U16 [get_ports {result[0]}]  
set_property PACKAGE_PIN E19 [get_ports {result[1]}]  
set_property PACKAGE_PIN U19 [get_ports {result[2]}]  
set_property PACKAGE_PIN V19 [get_ports {result[3]}]  

## 7-Segment Display Connections
set_property PACKAGE_PIN U2 [get_ports {seg[0]}]  
set_property PACKAGE_PIN U4 [get_ports {seg[1]}]  
set_property PACKAGE_PIN V4 [get_ports {seg[2]}]  
set_property PACKAGE_PIN V5 [get_ports {seg[3]}]  
set_property PACKAGE_PIN U5 [get_ports {seg[4]}]  
set_property PACKAGE_PIN V6 [get_ports {seg[5]}]  
set_property PACKAGE_PIN W6 [get_ports {seg[6]}]  

## Enable one 7-segment display (only using one for now)
set_property PACKAGE_PIN U7 [get_ports {an[0]}]  

## **Set I/O Standard to LVCMOS33**
set_property IOSTANDARD LVCMOS33 [get_ports {a[*] b[*] opcode[*] result[*] seg[*] an[*]}]

## Set I/O standard for zero_flag
set_property IOSTANDARD LVCMOS33 [get_ports {zero_flag}]

## Assign a pin for zero_flag (replace <unused_pin> with an actual unused pin on your board)
set_property PACKAGE_PIN R2 [get_ports {zero_flag}]

## Configuration properties (optional)
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]