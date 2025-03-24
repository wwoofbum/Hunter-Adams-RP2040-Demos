/**
 * V. Hunter Adams (vha3@cornell.edu)
 */

#include "pico/stdlib.h"
#include "hardware/pwm.h"
#include <math.h>
#include <stdio.h>


// The LED is connected to GPIO 25
#define LED_PIN 25
#define PWM_WRAP 10000
#define BLINK_TIME 1000
#define PAUSE_TIME 1000

// Main (runs on core 0)
int main() {
    // Initialize stdio
    stdio_init_all();
    // Initialize the LED pin
    printf("Start ParaBlink\n");
    gpio_set_function(LED_PIN, GPIO_FUNC_PWM);
    uint slice_num = pwm_gpio_to_slice_num(LED_PIN);
    uint channel = pwm_gpio_to_channel(LED_PIN);
    pwm_set_wrap(slice_num, PWM_WRAP);
    pwm_set_chan_level(slice_num, channel, 0);
    pwm_set_enabled(slice_num, true);
    
    // Loop
    while (true) {
        for(uint32_t t=0; t<=BLINK_TIME; t++) {
            float normalized_time = (float) t/BLINK_TIME;
            float parabola_value = 4 * normalized_time * (1 - normalized_time);
            uint32_t level = (uint32_t)(PWM_WRAP * parabola_value);
            pwm_set_chan_level(slice_num, channel, level);
            printf("level: %f \n", parabola_value);
            sleep_ms(1);
        }
        pwm_set_chan_level(slice_num, channel, 0);
        sleep_ms(PAUSE_TIME);
    }
    return 0;
}
