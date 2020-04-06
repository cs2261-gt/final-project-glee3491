#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "gamescreen.h"
#include "splashscreen.h"
#include "instructionscreen.h"
#include "pausescreen.h"
#include "winscreen.h"
#include "losescreen.h"


// Game state prototype
void initialize();
void splash();
void goToSplash();
void instruction();
void goToInstruction();
void game();
void goToGame();
void pause();
void goToPause();
void win();
void goToWin();
void lose();
void goToLose();

// Buttons
unsigned short buttons;
unsigned short oldButtons;

enum {SPLASH, INSTRUCTION, GAME, PAUSE, WIN, LOSE};
int state;

int main() {

    // Hide all sprite and initilize the game
    hideSprites();
    initialize();

    while (1) {

        // Upddate button
        oldButtons = buttons;
        buttons = BUTTONS;

        switch (state) {
            case SPLASH:
                splash();
                break;
            case INSTRUCTION:
                instruction();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }
    }

    return 0;
}

void initialize() {
    
    initGame();
    // Tell the BG0 control register where to look for its tiles and tile map
    // And how to read them from this location
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_SMALL;

    hideSprites();

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;

    buttons = BUTTONS;

    goToSplash();
}

void goToSplash() {
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    // Load splash screen
    DMANow(3, splashscreenPal, PALETTE, splashscreenPalLen / 2);
    DMANow(3, splashscreenTiles, &CHARBLOCK[0], splashscreenTilesLen / 2);
    DMANow(3, splashscreenMap, &SCREENBLOCK[28], splashscreenMapLen / 2);

    state = SPLASH;
}

void splash() {

    waitForVBlank();

    // State control
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToInstruction();
    }
}

void goToInstruction() {
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    // Load game screen
    DMANow(3, instructionscreenPal, PALETTE, instructionscreenPalLen / 2);
    DMANow(3, instructionscreenTiles, &CHARBLOCK[0], instructionscreenTilesLen / 2);
    DMANow(3, instructionscreenMap, &SCREENBLOCK[28], instructionscreenMapLen / 2);

    state = INSTRUCTION;
}

void instruction() {

    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToSplash();
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
}

void goToGame() {
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    // Load game screen
    DMANow(3, gamescreenPal, PALETTE, gamescreenPalLen / 2);
    DMANow(3, gamescreenTiles, &CHARBLOCK[0], gamescreenTilesLen / 2);
    DMANow(3, gamescreenMap, &SCREENBLOCK[28], gamescreenMapLen / 2);

    state = GAME;
}

void game() {

    DMANow(3, shadowOAM, OAM, 128 * 4);
    updateGame();
    
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if (winscore == 3) {
        goToWin();
    }
    if (losescore == 0) {
        goToLose();
    }
    // Win state
    // Lose state
}

void goToPause() {
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    // Load pause screen
    DMANow(3, pausescreenPal, PALETTE, pausescreenPalLen / 2);
    DMANow(3, pausescreenTiles, &CHARBLOCK[0], pausescreenTilesLen / 2);
    DMANow(3, pausescreenMap, &SCREENBLOCK[28], pausescreenMapLen / 2);

    state = PAUSE;
}

void pause() {

    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        main();
    }
}

void goToWin() {
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    // Load win screen
    DMANow(3, winscreenPal, PALETTE, winscreenPalLen / 2);
    DMANow(3, winscreenTiles, &CHARBLOCK[0], winscreenTilesLen / 2);
    DMANow(3, winscreenMap, &SCREENBLOCK[28], winscreenMapLen / 2);

    state = WIN;
}

void win() {

    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        main();
    }
}

void goToLose() {
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    // Load win screen
    DMANow(3, losescreenPal, PALETTE, losescreenPalLen / 2);
    DMANow(3, losescreenTiles, &CHARBLOCK[0], losescreenTilesLen / 2);
    DMANow(3, losescreenMap, &SCREENBLOCK[28], losescreenMapLen / 2);

    state = LOSE;
}

void lose() {

    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        main();
    }
}