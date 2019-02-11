# List of the ChibiOS/RT ARM7 BCM2835 port files.
STARTUPSRC = $(CHIBIOS)/os/common/startup/ARM/compilers/GCC/crt1.c \
			 $(CHIBIOS)/os/common/startup/ARM/devices/BCM2835/bcm2835.c

STARTUPASM = $(CHIBIOS)/os/common/startup/ARM/compilers/GCC/vectors.S \
             $(CHIBIOS)/os/common/startup/ARM/compilers/GCC/crt0.S

STARTUPINC = $(CHIBIOS)/os/common/portability/GCC \
             ${CHIBIOS}/os/common/startup/ARM/devices/BCM2835

STARTUPLD  = ${CHIBIOS}/os/common/startup/ARM/compilers/GCC/ld

# Shared variables
ALLXASMSRC += $(STARTUPASM)
ALLCSRC    += $(STARTUPSRC)
ALLINC     += $(STARTUPINC)
