#include "myLib.h"
#include "game.h"

int winscore;
int losescore;

void initGame() {
    winscore = 0;
    losescore = 3;
}

void updateGame() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        winscore++;
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        losescore--;
    }
}