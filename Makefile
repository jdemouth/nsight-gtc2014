###################################################################################################
#
# Paths to modify
#
###################################################################################################

# The CUDA path

CUDA_PATH ?= /usr/local/cuda-6.0

###################################################################################################
#
# Compiler options
#
###################################################################################################

# The compiler

NVCC = $(CUDA_PATH)/bin/nvcc

# The flags

NVCC_FLAGS = -O3 -lineinfo -arch=sm_35 

###################################################################################################
###################################################################################################

BINARIES  = step-00
BINARIES += step-1a
BINARIES += step-1b
BINARIES += step-20
BINARIES += step-30
BINARIES += step-40
BINARIES += step-50
BINARIES += step-60
BINARIES += step-70
BINARIES += step-80
BINARIES += step-90

###################################################################################################
#
# The rules to build the code
#
###################################################################################################
all: $(BINARIES)
  
step-00: nsight-gtc2014.cu
	$(NVCC) $(NVCC_FLAGS) -DOPTIMIZATION_STEP=0x00 -o nsight-gtc2014-00 $<
                                                                   
step-1a: nsight-gtc2014.cu                                         
	$(NVCC) $(NVCC_FLAGS) -DOPTIMIZATION_STEP=0x1a -o nsight-gtc2014-1a $<
                                                                   
step-1b: nsight-gtc2014.cu                                         
	$(NVCC) $(NVCC_FLAGS) -DOPTIMIZATION_STEP=0x1b -o nsight-gtc2014-1b $<
                                                                   
step-20: nsight-gtc2014.cu                                         
	$(NVCC) $(NVCC_FLAGS) -DOPTIMIZATION_STEP=0x20 -o nsight-gtc2014-20 $<
                                                                   
step-30: nsight-gtc2014.cu                                         
	$(NVCC) $(NVCC_FLAGS) -DOPTIMIZATION_STEP=0x30 -o nsight-gtc2014-30 $<
                                                                   
step-40: nsight-gtc2014.cu                                         
	$(NVCC) $(NVCC_FLAGS) -DOPTIMIZATION_STEP=0x40 -o nsight-gtc2014-40 $<
                                                                   
step-50: nsight-gtc2014.cu                                         
	$(NVCC) $(NVCC_FLAGS) -DOPTIMIZATION_STEP=0x50 -o nsight-gtc2014-50 $<
                                                                   
step-60: nsight-gtc2014.cu                                         
	$(NVCC) $(NVCC_FLAGS) -DOPTIMIZATION_STEP=0x60 -o nsight-gtc2014-60 $<
                                                                   
step-70: nsight-gtc2014.cu                                         
	$(NVCC) $(NVCC_FLAGS) -DOPTIMIZATION_STEP=0x70 -o nsight-gtc2014-70 $<
                                                                   
step-80: nsight-gtc2014.cu                                         
	$(NVCC) $(NVCC_FLAGS) -DOPTIMIZATION_STEP=0x80 -o nsight-gtc2014-80 $<
                                                                   
step-90: nsight-gtc2014.cu                                         
	$(NVCC) $(NVCC_FLAGS) -DOPTIMIZATION_STEP=0x90 -o nsight-gtc2014-90 $<

clean:
	rm -f nsight-gtc2014-step-00
	rm -f nsight-gtc2014-step-1a
	rm -f nsight-gtc2014-step-1b
	rm -f nsight-gtc2014-step-20
	rm -f nsight-gtc2014-step-30
	rm -f nsight-gtc2014-step-40
	rm -f nsight-gtc2014-step-50
	rm -f nsight-gtc2014-step-60
	rm -f nsight-gtc2014-step-70
	rm -f nsight-gtc2014-step-80
	rm -f nsight-gtc2014-step-90

