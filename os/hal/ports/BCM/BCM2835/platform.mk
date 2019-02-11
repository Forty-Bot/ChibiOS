# List of all the BCM2835 platform files.
PLATFORMSRC = ${CHIBIOS}/os/hal/ports/BCM/BCM2835/hal_lld.c \
              ${CHIBIOS}/os/hal/ports/BCM/BCM2835/hal_pal_lld.c \
              ${CHIBIOS}/os/hal/ports/BCM/BCM2835/hal_serial_lld.c \
              ${CHIBIOS}/os/hal/ports/BCM/BCM2835/hal_i2c_lld.c \
              ${CHIBIOS}/os/hal/ports/BCM/BCM2835/hal_spi_lld.c \
              ${CHIBIOS}/os/hal/ports/BCM/BCM2835/hal_gpt_lld.c \
              ${CHIBIOS}/os/hal/ports/BCM/BCM2835/hal_pwm_lld.c \
              ${CHIBIOS}/os/hal/ports/BCM/BCM2835/hal_st_lld.c \

# Required include directories
PLATFORMINC = ${CHIBIOS}/os/hal/ports/BCM/BCM2835 \
	      ${CHIBIOS}/os/common/startup/ARM/devices/BCM2835 \

# Shared variables
ALLCSRC += $(PLATFORMSRC)
ALLINC  += $(PLATFORMINC)
