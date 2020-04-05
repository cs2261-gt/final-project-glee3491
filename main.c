#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"

// Game state prototype
void initialize();
void start();
void goToStart();
void game();
void goToGame();
void pause();
void goToPause();
void win();
void goToWin();
void lose();
void goToLose();

// Game setup prototype
void initGame();
void drawGame();
void initPlayer();
void updatePlayer();
void drawPlayer();

// Buttons
unsigned short buttons;
unsigned short oldButtons;