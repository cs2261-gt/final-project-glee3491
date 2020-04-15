#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include "myLib.h"
#include "game.h"
#include "collisionmap.h"

// Variables
PLAYER penguin;
ENEMY enemies[ENEMYCOUNT1];
BUBBLE bubbles[BUBBLECOUNT1];
int score;
int lifeRemaining;
int vOff;
int hOff;
int playerHOff;
int playerVOff;
int screenBlock;
int sec;

// Penguin animation states for aniState
enum {PENFRONT, PENBACK, PENRIGHT, PENLEFT, BUB, HEART, EN_1, EN_2, EN_3, PENIDLE};

void initGame() {

    vOff = 96;
    hOff = 9;

    score = 0;
    lifeRemaining = 3;

    initPlayer();

    initBubble();

    initEnemy(ENEMYCOUNT1);
}


void updateGame() {

    // if (hOff > 512) {
    //     screenBlock++;
    //     hOff -= 512;
    //     REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(screenBlock) | BG_SIZE_LARGE | BG_4BPP; 
    // }

    // if ()
    // Update Player
    updatePlayer();

    // // Update all the enemies
    for (int i = 0; i < ENEMYCOUNT1; i++) {
        updateEnemy(&enemies[i]);
    }

    // Update all the bubbles
    for (int i = 0; i < BUBBLECOUNT1; i++) {
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
    for (int i = 0; i < ENEMYCOUNT1; i++) {
        drawEnemy(&enemies[i]);
    }

    // draw bubbles
    for (int i = 0; i < BUBBLECOUNT1; i++) {
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
        if (penguin.worldRow > 0
            && collisionmapBitmap[(penguin.worldRow - penguin.rDel) * MAPWIDTH + penguin.worldCol]
            && collisionmapBitmap[(penguin.worldRow - penguin.rDel) * MAPWIDTH + (penguin.worldCol + penguin.width - penguin.cDel)]) {
            penguin.worldRow -= penguin.rDel;
        }

        if (vOff > 0 && penguin.screenRow < SCREENHEIGHT / 2) {
            vOff--;
        }
    }

    if (BUTTON_HELD(BUTTON_DOWN)) {
        if (penguin.worldRow + penguin.height < 256
            && collisionmapBitmap[OFFSET(penguin.worldCol, penguin.worldRow + penguin.height, MAPWIDTH)]
            && collisionmapBitmap[OFFSET(penguin.worldCol + penguin.width - penguin.cDel, penguin.worldRow + penguin.height, MAPWIDTH)]) {
            penguin.worldRow += penguin.rDel;
        }

        if (vOff < MAPHEIGHT - SCREENHEIGHT && penguin.screenRow > SCREENHEIGHT / 2) {
            vOff++;
        }
    }

    if (BUTTON_HELD(BUTTON_LEFT)) {
        if (penguin.worldCol > 0
            && collisionmapBitmap[OFFSET(penguin.worldCol - penguin.cDel, penguin.worldRow, MAPWIDTH)]
            && collisionmapBitmap[OFFSET(penguin.worldCol - penguin.cDel, penguin.worldRow + penguin.height - penguin.rDel, MAPWIDTH)]) {
            penguin.worldCol -= penguin.cDel;
        }

        if (hOff > 0 && penguin.screenCol < SCREENWIDTH / 2) {
            hOff--;
        }
    }

    if (BUTTON_HELD(BUTTON_RIGHT)) {
        if (penguin.worldCol + penguin.width < 256
            && collisionmapBitmap[OFFSET(penguin.worldCol + penguin.width, penguin.worldRow, MAPWIDTH)]
            && collisionmapBitmap[OFFSET(penguin.worldCol + penguin.width, penguin.worldRow + penguin.height - penguin.rDel, MAPWIDTH)]) {
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
    for (int i = 0; i < BUBBLECOUNT1; i++) {
        bubbles[i].width = 16;
        bubbles[i].height = 16;
        bubbles[i].aniCounter = 0;
        bubbles[i].aniState = BUB;
        bubbles[i].curFrame = 0;
        bubbles[i].numFrames = 1;
        bubbles[i].active  = 0;
        bubbles[i].index = i;
    }
}

void putBubble() {
    for (int i = 0; i < BUBBLECOUNT1; i++) {
        if (!bubbles[i].active) {
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
    if (bubble->active) {
        bubble->screenRow = bubble->worldRow - vOff;
        bubble->screenCol = bubble->worldCol - hOff;
    }
    
}

void drawBubble(BUBBLE* bubble) {
        if (bubble->active) {
            shadowOAM[10 + bubble->index].attr0 = (ROWMASK & bubble->screenRow) | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[10 + bubble->index].attr1 = (COLMASK & bubble->screenCol) | ATTR1_SMALL;
            shadowOAM[10 + bubble->index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(bubble->aniState * 2, bubble->curFrame * 2);
        }
}

void initEnemy(int enemyNum) {
    for (int i = 0; i < enemyNum; i++) {
        enemies[i].width = 16;
        enemies[i].height = 16;
        while (!enemies[i].active) {
            enemies[i].worldRow = (rand() % 220) + 16;
            enemies[i].worldCol = (rand() % 220) + 16;
            if (enemies[i].worldRow % 16 == 0 && enemies[i].worldCol % 16 == 0
                && collisionmapBitmap[OFFSET(enemies[i].worldCol, enemies[i].worldRow, MAPWIDTH)] // Top left corner
                && collisionmapBitmap[OFFSET(enemies[i].worldCol + enemies[i].width, enemies[i].worldRow, MAPWIDTH)] // Top right corner
                && collisionmapBitmap[OFFSET(enemies[i].worldCol, enemies[i].worldRow + enemies[i].height, MAPWIDTH)] // Botton left corner
                && collisionmapBitmap[OFFSET(enemies[i].worldCol + enemies[i].width, enemies[i].worldRow + enemies[i].height, MAPWIDTH)]) { // Bottom right corner
                enemies[i].active = 1;
            }
        }
        enemies[i].aniCounter = 0;
        enemies[i].curFrame = 0;
        enemies[i].numFrames = 1;
        enemies[i].index = i;
        if (i % 3 == 0 ) {
            enemies[i].aniState = EN_1;
        } else if (i % 3 == 1) {
            enemies[i].aniState = EN_2;
        } else if (i % 3 == 2) {
            enemies[i].aniState = EN_3;
        }
    }
}

void drawEnemy(ENEMY* enemy) {
    if (enemy->active) {
        shadowOAM[20 + enemy->index].attr0 = (ROWMASK & enemy->screenRow) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[20 + enemy->index].attr1 = (COLMASK & enemy->screenCol) | ATTR1_SMALL;
        if (enemy->aniState == EN_1) {
            shadowOAM[20 + enemy->index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(10, 0);
        }
        if (enemy->aniState == EN_2) {
            shadowOAM[20 + enemy->index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(10, 2);
        }
        if (enemy->aniState == EN_3) {
            shadowOAM[20 + enemy->index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(10, 4);
        }
    }
}

void updateEnemy(ENEMY* enemy) {
    if (enemy->active) {
        enemy->screenRow = enemy->worldRow - vOff;
        enemy->screenCol = enemy->worldCol - hOff;
    }
}