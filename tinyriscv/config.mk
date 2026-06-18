export PLATFORM               = asap7

export DESIGN_NAME            = tinyriscv
export DESIGN_NICKNAME        = tinyriscv

export VERILOG_FILES = $(shell find $(DESIGN_HOME)/src/$(DESIGN_NICKNAME) -name "*.v" | sort)

export SDC_FILE      = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

export SYNTH_NO_FLATTEN = 1
export SYNTH_MEMORY_MAX_BITS = 262144
export ABC_SPEED = 1
