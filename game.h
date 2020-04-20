// Player Struct
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

// Enemy Struct
typedef struct {
    int worldRow;
    int worldCol;
    int screenRow;
    int screenCol;
    int position;
    int width;
    int height;
    int active;
    int erased;
    int aniCounter;
    int aniState;
    int curFrame;
    int numFrames;
    int timer;
    int index;
} ENEMY;

// Bubble Struct
typedef struct {
    int worldRow;
    int worldCol;
    int screenRow;
    int screenCol;
    int width;
    int height;
    int active;
    int erased;
    int aniCounter;
    int aniState;
    int preAniState;
    int curFrame;
    int numFrames;
    int timer;
    int index;
} BUBBLE;

// Constant
#define ENEMYCOUNT1 8
#define BUBBLECOUNT1 16
#define ENEMYCOUNT2 13
#define BUBBLECOUNT2 26 
#define MAPHEIGHT 256
#define MAPWIDTH 256

// Variables
extern PLAYER penguin;
extern ENEMY enemies[ENEMYCOUNT1];
extern BUBBLE bubbles[BUBBLECOUNT1];
extern int hOff;
extern int vOff;
extern OBJ_ATTR shadowOAM[128];
extern int score;
extern int lifeRemaining;

// Protypes
void initGame();
void updateGame();
void drawGame();
void initPlayer();
void updatePlayer();
void animatePlayer();
void drawPlayer();
void initEnemy(int);
void updateEnemy(ENEMY *);
void drawEnemy(ENEMY *);
void initBubble();
void updateBubble(BUBBLE *);
void drawBubble(BUBBLE *);
void putBubble();