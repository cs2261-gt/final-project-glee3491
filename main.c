#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "sound.h"
#include "spritesheet.h"
#include "house.h"
#include "bg1.h"
#include "splashscreen.h"
#include "instructionscreen.h"
#include "pausescreen.h"
#include "winscreen.h"
#include "losescreen.h"
#include "huffnpuff.h"
#include "bubble.h"


// Game state prototype
void initialize();
void splash();
void goToSplash();
void instruction();
void goToInstruction();
void game();
void goToGame();
void game2();
void goToGame2();
void pause();
void goToPause();
void win();
void goToWin();
void lose();
void goToLose();

// Sounds
SOUND soundA;
SOUND soundB;

// Buttons
unsigned short buttons;
unsigned short oldButtons;

// Random Seed
int seed;

enum {SPLASH, INSTRUCTION, GAME, GAME2, PAUSE, WIN, LOSE};
int state;
int gameState;

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
            case GAME2:
                game2();
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
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_SMALL;

    hideSprites();
    setupSounds();
    setupInterrupts();

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

    playSoundA(huffnpuff, HUFFNPUFFLEN, 1);

    state = SPLASH;
}

void splash() {
    seed++;
    waitForVBlank();

    // State control
    if (BUTTON_PRESSED(BUTTON_START)) {
        srand(seed);
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
    seed++;
    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToSplash();
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        srand(seed);
        goToGame();
    }
}

void goToGame() {

    waitForVBlank();

    // Load game screen
    DMANow(3, bg1Pal, PALETTE, bg1PalLen / 2);
    DMANow(3, bg1Tiles, &CHARBLOCK[0], bg1TilesLen / 2);
    DMANow(3, bg1Map, &SCREENBLOCK[28], bg1MapLen / 2);

    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;

    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = GAME;
    gameState = GAME;
}

void game() {

    updateGame();
    drawGame();
    
    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause();
    }
    /*
    lifeRemaining should decrease once the player gets hit by s bubble but could figure out how to count the frame
    and inactivate the bubble
    */
    if (lifeRemaining == 0) {
        pauseSound();
        goToLose();
    }
    /* scroe should increase on the enemy gets hit but a bubble but collision doesn't work
    */
    if (score > 7) {
        pauseSound();
        goToWin();
    }
}

void goToGame2() {
    waitForVBlank();

    // Load game screen
    DMANow(3, housePal, PALETTE, housePalLen / 2);
    DMANow(3, houseTiles, &CHARBLOCK[0], houseTilesLen / 2);
    DMANow(3, houseMap, &SCREENBLOCK[28], houseMapLen / 2);

    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;

    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    state = GAME2;
    gameState = GAME2;
}

void game2() {
    updateGame();
    drawGame();
    
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if (lifeRemaining == 0) {
        goToLose();
    }
    if (score > 7) {
        goToWin();
    }
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
        if (gameState == GAME) {
            unpauseSound();
            goToGame();
        }
        if (gameState == GAME2) {
            goToGame2();
        }
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