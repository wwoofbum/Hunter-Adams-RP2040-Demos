// -------------------------------------------------- //
// This file is autogenerated by pioasm; do not edit! //
// -------------------------------------------------- //

#pragma once

#if !PICO_NO_HARDWARE
#include "hardware/pio.h"
#endif

// -------- //
// counter1 //
// -------- //

#define counter1_wrap_target 0
#define counter1_wrap 5
#define counter1_pio_version 0

static const uint16_t counter1_program_instructions[] = {
            //     .wrap_target
    0x80a0, //  0: pull   block
    0xa027, //  1: mov    x, osr
    0x0025, //  2: jmp    !x, 5
    0xc022, //  3: irq    wait 2
    0x0042, //  4: jmp    x--, 2
    0xc020, //  5: irq    wait 0
            //     .wrap
};

#if !PICO_NO_HARDWARE
static const struct pio_program counter1_program = {
    .instructions = counter1_program_instructions,
    .length = 6,
    .origin = -1,
    .pio_version = counter1_pio_version,
#if PICO_PIO_VERSION > 0
    .used_gpio_ranges = 0x0
#endif
};

static inline pio_sm_config counter1_program_get_default_config(uint offset) {
    pio_sm_config c = pio_get_default_sm_config();
    sm_config_set_wrap(&c, offset + counter1_wrap_target, offset + counter1_wrap);
    return c;
}

static inline void counter1_program_init(PIO pio, uint sm, uint offset) {
   pio_sm_config c = counter1_program_get_default_config(offset);
   pio_sm_init(pio, sm, offset, &c);
}

#endif

