I followed the docker based installation process following the Git reository.

Design Configuration Stage: 

First I configured the Config File for my Design: 

1. cd /home/ztoishee/OpenRoad_v2/OpenROAD-flow-scripts/flow/designs/asap7/tiny_gpu/

2. made config.mk for tinygpu design example below:
 

export PLATFORM               = asap7

export DESIGN_NAME            = gpu
export DESIGN_NICKNAME        = tiny_gpu

export VERILOG_FILES = $(sort $(wildcard $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/*.v))
export SDC_FILE      = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

3. Prepared sdc for the design named as constraint.sdc example below:

set clk_name clk
set clk_port_name clk
set clk_period 1428.57143

set clk_port [get_ports $clk_port_name]

create_clock -name $clk_name -period $clk_period $clk_port

Changed clk_period value everytime before changing frequency for the same design.

4.  Called in docker to initiate the run:

Below command taken from shared git repository.

docker run -it -u $(id -u ${USER}):$(id -g ${USER}) -v $(pwd)/flow:/OpenROAD-flow-scripts/flow openroad/orfs


5. Used command to run synthesis 

>cd /home/ztoishee/OpenRoad_v2/OpenROAD-flow-scripts/flow/

>make DESIGN_CONFIG=./designs/asap7/tinyriscv/config.mk FLOW_VARIANT=700mhzrun synth

6. To generate timing reports after synthesis I ran this command after running synthesis

>make DESIGN_CONFIG=./designs/asap7/tiny_gpu/config.mk FLOW_VARIANT=run2 do-synth-report

7. exit (to get out of shell)
