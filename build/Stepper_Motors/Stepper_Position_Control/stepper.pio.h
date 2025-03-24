// -------------------------------------------------- //
// This file is autogenerated by pioasm; do not edit! //
// -------------------------------------------------- //

#pragma once

#if !PICO_NO_HARDWARE
#include "hardware/pio.h"
#endif

// ------- //
// stepper //
// ------- //

#define stepper_wrap_target 0
#define stepper_wrap 1
#define stepper_pio_version 0

static const uint16_t stepper_program_instructions[] = {
            //     .wrap_target
    0x20c3, //  0: wait   1 irq, 3
    0x6004, //  1: out    pins, 4
            //     .wrap
};

#if !PICO_NO_HARDWARE
static const struct pio_program stepper_program = {
    .instructions = stepper_program_instructions,
    .length = 2,
    .origin = -1,
    .pio_version = stepper_pio_version,
#if PICO_PIO_VERSION > 0
    .used_gpio_ranges = 0x0
#endif
};

static inline pio_sm_config stepper_program_get_default_config(uint offset) {
    pio_sm_config c = pio_get_default_sm_config();
    sm_config_set_wrap(&c, offset + stepper_wrap_target, offset + stepper_wrap);
    return c;
}

static inline void stepper_program_init(PIO pio, uint sm, uint offset, uint pin) {
   pio_sm_config c = stepper_program_get_default_config(offset);
   sm_config_set_out_pins(&c, pin, 4);
   // Note that max clock divider is 65536. We insert a one cycle delay
   // in the assembler to run the motors slowly enough
   sm_config_set_clkdiv(&c, 65000) ;
   // Setup autopull, 32-bit threshold, right-shift OSR
   sm_config_set_out_shift(&c, 1, 1, 4) ;
   pio_gpio_init(pio, pin);
   pio_gpio_init(pio, pin+1);
   pio_gpio_init(pio, pin+2);
   pio_gpio_init(pio, pin+3);
   pio_sm_set_consecutive_pindirs(pio, sm, pin, 4, true);
   pio_sm_init(pio, sm, offset, &c);
}

#endif

