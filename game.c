#include "myLib.h"
#include "game.h"

// Variables
PLAYER penguin;
ENEMY enemies[ENEMYCOUNT];
BUBBLE bubbles[BUBBLECOUNT];
int score;
int lifeRemaining;
int vOff;
int hOff;

// Penguin animation states for aniState
enum {PENFRONT, PENBACK, PENRIGHT, PENLEFT, BUB, EN_1, EN_2, PENIDLE};

void initGame() {

    vOff = 96;
    hOff = 9;

    score = 0;
    lifeRemaining = 3;

    initPlayer();
}


void updateGame() {

    // Update Player
    updatePlayer();

    // // Update all the enemies
    // for (int i = 0; i < ENEMYCOUNT; i++) {
    //     updateEnemy(&enemies[i]);
    // }

    // Update all the bubbles
    for (int i = 0; i < BUBBLECOUNT; i++) {
        updateBubble(&bubbles[i]);
    }
}

void drawGame() {

    // draw Player
    drawPlayer();

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff; 

    // // draw enemies
    // for (int i = 0; i < ENEMYCOUNT; i++) {
    //     drawEnemy(&enemies[i]);
    // }

    // draw bubbles
    for (int i = 0; i < BUBBLECOUNT; i++) {
        drawBubble(&bubbles[i]);
    }
}

void initPlayer() {

    penguin.width = 16;
    penguin.height = 16;
    penguin.rDel = 1;
    penguin.cDel = 1;

    penguin.worldRow = SCREENHEIGHT / 2 - penguin.width / 2 + vOff;
    penguin.worldCol = SCREENWIDTH / 2 - penguin.height / 2 + hOff;
    penguin.aniCounter = 0;
    penguin.curFrame = 0;
    penguin.numFrames = 3;      
    penguin.aniCounter = PENFRONT;
    penguin.bubbleTimer = 20;
}

void updatePlayer() {
    
    if (BUTTON_HELD(BUTTON_UP)) {
        if (penguin.worldRow > 0) {
            penguin.worldRow -= penguin.rDel;
        }

        if (vOff > 0 && penguin.screenRow < SCREENHEIGHT / 2) {
            vOff--;
        }
    }

    if (BUTTON_HELD(BUTTON_DOWN)) {
        if (penguin.worldRow + penguin.height < 256) {
            penguin.worldRow += penguin.rDel;
        }

        if (vOff < MAPHEIGHT - SCREENHEIGHT && penguin.screenRow > SCREENHEIGHT / 2) {
            vOff++;
        }
    }

    if (BUTTON_HELD(BUTTON_LEFT)) {
        if (penguin.worldCol > 0) {
            penguin.worldCol -= penguin.cDel;
        }

        if (hOff > 0 && penguin.screenCol < SCREENWIDTH / 2) {
            hOff--;
        }
    }

    if (BUTTON_HELD(BUTTON_RIGHT)) {
        if (penguin.worldCol + penguin.width < 256) {
            penguin.worldCol += penguin.cDel;
        }

        if (hOff < MAPWIDTH - SCREENWIDTH && penguin.screenCol > SCREENWIDTH / 2) {
            hOff++;
        }
    }

    if (BUTTON_PRESSED(BUTTON_A) && penguin.bubbleTimer >= 20) {
        putBubble();
        penguin.bubbleTimer = 0;
    }

    penguin.bubbleTimer++;
    penguin.screenRow = penguin.worldRow - vOff;
    penguin.screenCol = penguin.worldCol - hOff;

    animatePlayer();
}

void animatePlayer() {

    penguin.preAniState = penguin.aniState;
    penguin.aniState = PENIDLE;

    if (penguin.aniCounter % 20 == 0) {
        penguin.curFrame = (penguin.curFrame + 1) % penguin.numFrames;
    }

    if (BUTTON_HELD(BUTTON_UP)) {
        penguin.aniState = PENBACK;
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        penguin.aniState = PENFRONT;
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        penguin.aniState = PENLEFT;
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        penguin.aniState = PENRIGHT;
    }

    if (penguin.aniState == PENIDLE) {
        penguin.curFrame = 0;
        penguin.aniCounter = 0;
        penguin.aniState = penguin.preAniState;
    } else {
        penguin.aniCounter++;
    }
}

void drawPlayer() {
    if (penguin.active) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[0].attr0 = (ROWMASK & penguin.screenRow) | ATTR0_SQUARE;
        shadowOAM[0].attr1 = (COLMASK & penguin.screenCol) | ATTR1_SMALL;
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(penguin.aniState * 2, penguin.curFrame * 2);
    }
}

void initBubble() {
    for (int i = 0; i < BUBBLECOUNT; i++) {
        bubbles[i].width = 16;
        bubbles[i].height = 16;
        bubbles[i].aniCounter = 0;
        bubbles[i].aniState = BUB;
        bubbles[i].curFrame = 0;
        bubbles[i].numFrames = 1;
        bubbles[i].active  = 0;
    }
}

void putBubble() {
    for (int i = 0; i < BUBBLECOUNT; i++) {
        if (bubbles[i].active == 0) {
            bubbles[i].active = 1;
            if (penguin.aniState == PENFRONT) {
                bubbles[i].worldRow = penguin.worldRow + penguin.height;
                bubbles[i].worldCol = penguin.worldCol;
            } else if (penguin.aniState == PENBACK) {
                bubbles[i].worldRow = penguin.worldRow - penguin.height;
                bubbles[i].worldCol = penguin.worldCol;
            } else if (penguin.aniState == PENLEFT) {
                bubbles[i].worldRow = penguin.worldRow;
                bubbles[i].worldCol = penguin.worldCol - penguin.width;
            } else if (penguin.aniState == PENRIGHT) {
                bubbles[i].worldRow = penguin.worldRow;
                bubbles[i].worldCol = penguin.worldCol + penguin.width;
            }
            break;
        }
    }
}
void updateBubble(BUBBLE* bubble) {
    
    // if (BUTTON_PRESSED(BUTTON_A)) {
    //     bubble->active = 1;
    //     if (penguin.aniState == PENFRONT) {
    //         bubble->worldRow = penguin.worldRow + penguin.height;
    //         bubble->worldCol = penguin.worldCol;
    //     } else if (penguin.aniState == PENBACK) {
    //         bubble->worldRow = penguin.worldRow - penguin.height;
    //         bubble->worldCol = penguin.worldCol;
    //     } else if (penguin.aniState == PENLEFT) {
    //         bubble->worldRow = penguin.worldRow;
    //         bubble->worldCol = penguin.worldCol - penguin.width;
    //     } else if (penguin.aniState == PENRIGHT) {
    //         bubble->worldRow = penguin.worldRow;
    //         bubble->worldCol = penguin.worldCol + penguin.width;
    //     }
    // }
    if (bubble->active) {
        bubble->screenRow = bubble->worldRow - vOff;
        bubble->screenCol = bubble->worldCol - hOff;
    }
    
}

void drawBubble(BUBBLE* bubble) {
    if (bubble->active) {
        shadowOAM[10].attr0 = bubble->screenRow | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[10].attr1 = bubble->screenCol | ATTR1_SMALL;
        shadowOAM[10].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(bubble->aniState * 2, bubble->curFrame * 2);
    }
}
// void initEmeny(){
//     for (int i = 0; i < ENEMYCOUNT; i++) {
//         enemies[i].width = 16;
//         enemies[i].height = 16;
//         enemies[i].active = 1;
//         enemies[i].aniCounter = 0;
//         enemies[i].curFrame = 0;
//         enemies[i].numFrames = 1;
//         if (i == 0 || i == 2 || i == 4) {
//             enemies[i].aniState = EN_1;
//         } else if (i == 1 || i == 4) {
//             enemies[i].aniState = EN_2;
//         }
//     }
// }

// void updateEne