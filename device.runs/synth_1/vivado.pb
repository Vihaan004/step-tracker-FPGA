
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:072

00:00:082	
506.2622	
197.992Z17-268h px� 
�
Command: %s
1870*	planAhead2z
xread_checkpoint -auto_incremental -incremental C:/Users/VIHAAN/Vivado/device/device.srcs/utils_1/imports/synth_1/top.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2K
IC:/Users/VIHAAN/Vivado/device/device.srcs/utils_1/imports/synth_1/top.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
_
Command: %s
53*	vivadotcl2.
,synth_design -top top -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 
[
$Part: %s does not have CEAM library.966*device2
xc7a100tcsg324-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
14508Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1381.098 ; gain = 449.855
h px� 
�
synthesizing module '%s'%s4497*oasys2
top2
 2A
=C:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/top.v2
38@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	debouncer2
 2Q
MC:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/imports/Lab 4/debouncer.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	debouncer2
 2
02
12Q
MC:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/imports/Lab 4/debouncer.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
pulse_generator2
 2M
IC:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/pulse_generator.v2
128@Z8-6157h px� 
�
default block is never used226*oasys2M
IC:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/pulse_generator.v2
448@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pulse_generator2
 2
02
12M
IC:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/pulse_generator.v2
128@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
counter2
pulse_generator2
generate_pulse2A
=C:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/top.v2
478@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
on2
pulse_generator2
generate_pulse2A
=C:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/top.v2
478@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
generate_pulse2
pulse_generator2
82
62A
=C:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/top.v2
478@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
fitbit_tracker2
 2L
HC:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/fitbit_tracker.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
fitbit_tracker2
 2
02
12L
HC:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/fitbit_tracker.v2
38@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
total_steps2
fitbit_tracker2	
tracker2A
=C:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/top.v2
528@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2	
tracker2
fitbit_tracker2
72
62A
=C:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/top.v2
528@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
bin2bcd_fsm2
 2O
KC:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/imports/Lab 4/bin2bcd.v2
28@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
bin2bcd_fsm2
 2
02
12O
KC:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/imports/Lab 4/bin2bcd.v2
28@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

rotation2
 2F
BC:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/rotation.v2
78@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

rotation2
 2
02
12F
BC:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/rotation.v2
78@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
display_driver2
 2L
HC:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/display_driver.v2
58@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
complexDivider2
 2K
GC:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/clock_divider.v2
278@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
complexDivider2
 2
02
12K
GC:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/clock_divider.v2
278@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
display_driver2
 2
02
12L
HC:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/display_driver.v2
58@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
current_digit2
display_driver2
display_driver_12A
=C:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/top.v2
778@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
digit12
display_driver2
display_driver_12A
=C:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/top.v2
778@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
digit22
display_driver2
display_driver_12A
=C:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/top.v2
778@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
digit32
display_driver2
display_driver_12A
=C:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/top.v2
778@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
digit42
display_driver2
display_driver_12A
=C:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/top.v2
778@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
refresh_counter2
display_driver2
display_driver_12A
=C:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/top.v2
778@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
slowCLK2
display_driver2
display_driver_12A
=C:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/top.v2
778@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
display_driver_12
display_driver2
142
72A
=C:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/top.v2
778@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2
 2
02
12A
=C:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/top.v2
38@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
current_digit2
display_driver2L
HC:/Users/VIHAAN/Vivado/device/device.srcs/sources_1/new/display_driver.v2
148@Z8-3848h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
current_digit[1]2
display_driverZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
current_digit[0]2
display_driverZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1491.184 ; gain = 559.941
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1491.184 ; gain = 559.941
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1491.184 ; gain = 559.941
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0102

1491.1842
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2^
ZC:/Users/VIHAAN/Vivado/device/device.srcs/constrs_1/imports/Lab 4/Nexys-A7-100T-Master.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
12^
ZC:/Users/VIHAAN/Vivado/device/device.srcs/constrs_1/imports/Lab 4/Nexys-A7-100T-Master.xdc2
698@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2^
ZC:/Users/VIHAAN/Vivado/device/device.srcs/constrs_1/imports/Lab 4/Nexys-A7-100T-Master.xdc2
698@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
12^
ZC:/Users/VIHAAN/Vivado/device/device.srcs/constrs_1/imports/Lab 4/Nexys-A7-100T-Master.xdc2
708@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2^
ZC:/Users/VIHAAN/Vivado/device/device.srcs/constrs_1/imports/Lab 4/Nexys-A7-100T-Master.xdc2
708@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
12^
ZC:/Users/VIHAAN/Vivado/device/device.srcs/constrs_1/imports/Lab 4/Nexys-A7-100T-Master.xdc2
718@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2^
ZC:/Users/VIHAAN/Vivado/device/device.srcs/constrs_1/imports/Lab 4/Nexys-A7-100T-Master.xdc2
718@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
12^
ZC:/Users/VIHAAN/Vivado/device/device.srcs/constrs_1/imports/Lab 4/Nexys-A7-100T-Master.xdc2
728@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2^
ZC:/Users/VIHAAN/Vivado/device/device.srcs/constrs_1/imports/Lab 4/Nexys-A7-100T-Master.xdc2
728@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2^
ZC:/Users/VIHAAN/Vivado/device/device.srcs/constrs_1/imports/Lab 4/Nexys-A7-100T-Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2\
ZC:/Users/VIHAAN/Vivado/device/device.srcs/constrs_1/imports/Lab 4/Nexys-A7-100T-Master.xdc2
.Xil/top_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1527.4062
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0052

1527.4062
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 1527.406 ; gain = 596.164
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 1527.406 ; gain = 596.164
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 1527.406 ; gain = 596.164
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
o
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
bin2bcd_fsmZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_              START_case |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_                   SHIFT |                               01 |                               01
h p
x
� 
y
%s
*synth2a
_               CHECK_ADD |                               10 |                               10
h p
x
� 
y
%s
*synth2a
_                  FINISH |                               11 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2

sequential2
bin2bcd_fsmZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 1527.406 ; gain = 596.164
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   28 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 12    
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 2     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               28 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	               14 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 14    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   4 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input   16 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   4 Input   14 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 8     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 8     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 1527.406 ; gain = 596.164
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1527.406 ; gain = 596.164
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 1527.406 ; gain = 596.164
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1527.406 ; gain = 596.164
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 1527.406 ; gain = 596.164
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 1527.406 ; gain = 596.164
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 1527.406 ; gain = 596.164
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 1527.406 ; gain = 596.164
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 1527.406 ; gain = 596.164
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 1527.406 ; gain = 596.164
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     1|
h px� 
2
%s*synth2
|2     |CARRY4 |    34|
h px� 
2
%s*synth2
|3     |LUT1   |     9|
h px� 
2
%s*synth2
|4     |LUT2   |    21|
h px� 
2
%s*synth2
|5     |LUT3   |    42|
h px� 
2
%s*synth2
|6     |LUT4   |    92|
h px� 
2
%s*synth2
|7     |LUT5   |    55|
h px� 
2
%s*synth2
|8     |LUT6   |    46|
h px� 
2
%s*synth2
|9     |MUXF7  |     7|
h px� 
2
%s*synth2
|10    |FDCE   |    31|
h px� 
2
%s*synth2
|11    |FDRE   |   245|
h px� 
2
%s*synth2
|12    |FDSE   |     4|
h px� 
2
%s*synth2
|13    |IBUF   |     6|
h px� 
2
%s*synth2
|14    |OBUF   |    13|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 1527.406 ; gain = 596.164
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:21 ; elapsed = 00:00:31 . Memory (MB): peak = 1527.406 ; gain = 559.941
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:31 ; elapsed = 00:00:33 . Memory (MB): peak = 1527.406 ; gain = 596.164
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0062

1527.4062
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
41Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1527.4062
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

dbf96eebZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
412
212
42
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:372

00:00:402

1527.4062

1012.617Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0022

1527.4062
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2;
9C:/Users/VIHAAN/Vivado/device/device.runs/synth_1/top.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2Q
Oreport_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Sun Nov  3 18:05:58 2024Z17-206h px� 


End Record