#include "myLib.h"

int bubbleSec;
int enemySec;

void initBubbleTimer() {
    REG_TM2CNT = 0;
    REG_TM2D = 65536 - 164;
    REG_TM2CNT = TM_FREQ_1024 | TM_CASCADE | TIMER_ON;
}

void updateBubbleTimer() {
    bubbleSec = -1;
}

