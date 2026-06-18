export PLATFORM               = asap7

export DESIGN_NAME            = gpu
export DESIGN_NICKNAME        = tiny_gpu

export VERILOG_FILES = $(sort $(wildcard $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/*.v))
export SDC_FILE      = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc





