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

// Bubble Struct
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

// Constant
#define ENEMYCOUNT 5
#define BUBBLECOUNT 3
#define MAPHEIGHT 256
#define MAPWIDTH 256

// Variables
extern PLAYER penguin;
extern ENEMY enemies[ENEMYCOUNT];
extern BUBBLE bubbles[BUBBLECOUNT];
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
void initEnemy();
void updateEnemy(ENEMY *);
void drawEnemy(ENEMY *);
void initBubble();
void updateBubble(BUBBLE *);
void drawBubble(BUBBLE *);
void putBubble();