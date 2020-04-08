# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 157 "myLib.h"
void hideSprites();






typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
} ANISPRITE;
# 200 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 211 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 251 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 342 "myLib.h"
typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "game.c" 2
# 1 "game.h" 1

typedef struct {
    int worldRow;
    int worldCol;
    int screenRow;
    int screenCol;
    int rDel;
    int cDel;
    int width;
    int height;
    int active;
    int aniCounter;
    int aniState;
    int preAniState;
    int curFrame;
    int numFrames;
    int bubbleTimer;
} PLAYER;


typedef struct {
    int row;
    int col;
    int width;
    int height;
    int active;
    int aniCounter;
    int aniState;
    int curFrame;
    int numFrames;
    int timer;
} ENEMY;


typedef struct {
    int worldRow;
    int worldCol;
    int screenRow;
    int screenCol;
    int width;
    int height;
    int active;
    int aniCounter;
    int aniState;
    int curFrame;
    int numFrames;
    int timer;
} BUBBLE;
# 57 "game.h"
extern PLAYER penguin;
extern ENEMY enemies[5];
extern BUBBLE bubbles[3];
extern int hOff;
extern int vOff;
extern OBJ_ATTR shadowOAM[128];
extern int score;
extern int lifeRemaining;


void initGame();
void updateGame();
void drawGame();
void initPlayer();
void updatePlayer();
void animatePlayer();
void drawPlayer();
void initEnemy();
void updateEnemy(ENEMY *);
void drawEnemy(ENEMY *);
void initBubble();
void updateBubble(BUBBLE *);
void drawBubble(BUBBLE *);
void putBubble();
# 3 "game.c" 2


PLAYER penguin;
ENEMY enemies[5];
BUBBLE bubbles[3];
int score;
int lifeRemaining;
int vOff;
int hOff;


enum {PENFRONT, PENBACK, PENRIGHT, PENLEFT, BUB, EN_1, EN_2, PENIDLE};

void initGame() {

    vOff = 96;
    hOff = 9;

    score = 0;
    lifeRemaining = 3;

    initPlayer();
}


void updateGame() {


    updatePlayer();







    for (int i = 0; i < 3; i++) {
        updateBubble(&bubbles[i]);
    }
}

void drawGame() {


    drawPlayer();

    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);

    (*(volatile unsigned short *)0x04000010) = hOff;
    (*(volatile unsigned short *)0x04000012) = vOff;







    for (int i = 0; i < 3; i++) {
        drawBubble(&bubbles[i]);
    }
}

void initPlayer() {

    penguin.width = 16;
    penguin.height = 16;
    penguin.rDel = 1;
    penguin.cDel = 1;

    penguin.worldRow = 160 / 2 - penguin.width / 2 + vOff;
    penguin.worldCol = 240 / 2 - penguin.height / 2 + hOff;
    penguin.aniCounter = 0;
    penguin.curFrame = 0;
    penguin.numFrames = 3;
    penguin.aniCounter = PENFRONT;
    penguin.bubbleTimer = 20;
}

void updatePlayer() {

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {
        if (penguin.worldRow > 0
        ) {
            penguin.worldRow -= penguin.rDel;
        }

        if (vOff > 0 && penguin.screenRow < 160 / 2) {
            vOff--;
        }
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) {
        if (penguin.worldRow + penguin.height < 256) {
            penguin.worldRow += penguin.rDel;
        }

        if (vOff < 256 - 160 && penguin.screenRow > 160 / 2) {
            vOff++;
        }
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
        if (penguin.worldCol > 0) {
            penguin.worldCol -= penguin.cDel;
        }

        if (hOff > 0 && penguin.screenCol < 240 / 2) {
            hOff--;
        }
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
        if (penguin.worldCol + penguin.width < 256) {
            penguin.worldCol += penguin.cDel;
        }

        if (hOff < 256 - 240 && penguin.screenCol > 240 / 2) {
            hOff++;
        }
    }

    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0)))) && penguin.bubbleTimer >= 20) {
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

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {
        penguin.aniState = PENBACK;
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) {
        penguin.aniState = PENFRONT;
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
        penguin.aniState = PENLEFT;
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
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
        shadowOAM[0].attr0 |= (2<<8);
    } else {
        shadowOAM[0].attr0 = (0xFF & penguin.screenRow) | (0<<14);
        shadowOAM[0].attr1 = (0x1FF & penguin.screenCol) | (1<<14);
        shadowOAM[0].attr2 = ((0)<<12) | ((penguin.curFrame * 2)*32+(penguin.aniState * 2));
    }
}

void initBubble() {
    for (int i = 0; i < 3; i++) {
        bubbles[i].width = 16;
        bubbles[i].height = 16;
        bubbles[i].aniCounter = 0;
        bubbles[i].aniState = BUB;
        bubbles[i].curFrame = 0;
        bubbles[i].numFrames = 1;
        bubbles[i].active = 0;
    }
}

void putBubble() {
    for (int i = 0; i < 3; i++) {
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
# 229 "game.c"
    if (bubble->active) {
        bubble->screenRow = bubble->worldRow - vOff;
        bubble->screenCol = bubble->worldCol - hOff;
    }

}

void drawBubble(BUBBLE* bubble) {
    if (bubble->active) {
        shadowOAM[10].attr0 = bubble->screenRow | (0<<13) | (0<<14);
        shadowOAM[10].attr1 = bubble->screenCol | (1<<14);
        shadowOAM[10].attr2 = ((0)<<12) | ((bubble->curFrame * 2)*32+(bubble->aniState * 2));
    }
}
