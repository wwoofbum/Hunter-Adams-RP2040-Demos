// -------------------------------------------------- //
// This file is autogenerated by pioasm; do not edit! //
// -------------------------------------------------- //

#pragma once

#if !PICO_NO_HARDWARE
#include "hardware/pio.h"
#endif

// ------- //
// counter //
// ------- //

#define counter_wrap_target 0
#define counter_wrap 5
#define counter_pio_version 0

static const uint16_t counter_program_instructions[] = {
            //     .wrap_target
    0x80a0, //  0: pull   block
    0xa027, //  1: mov    x, osr
    0x0025, //  2: jmp    !x, 5
    0xc023, //  3: irq    wait 3
    0x0042, //  4: jmp    x--, 2
    0xc021, //  5: irq    wait 1
            //     .wrap
};

#if !PICO_NO_HARDWARE
static const struct pio_program counter_program = {
    .instructions = counter_program_instructions,
    .length = 6,
    .origin = -1,
    .pio_version = counter_pio_version,
#if PICO_PIO_VERSION > 0
    .used_gpio_ranges = 0x0
#endif
};

static inline pio_sm_config counter_program_get_default_config(uint offset) {
    pio_sm_config c = pio_get_default_sm_config();
    sm_config_set_wrap(&c, offset + counter_wrap_target, offset + counter_wrap);
    return c;
}

static inline void counter_program_init(PIO pio, uint sm, uint offset) {
   pio_sm_config c = counter_program_get_default_config(offset);
   pio_sm_init(pio, sm, offset, &c);
}

#endif

