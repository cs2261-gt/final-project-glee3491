# 1 "pausescreen.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "pausescreen.c"
# 18 "pausescreen.c"
const unsigned short pausescreenTiles[32] __attribute__((aligned(4)))=
{
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
 0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
};

const unsigned short pausescreenMap[1024] __attribute__((aligned(4)))=
{
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
 0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
};

const unsigned short pausescreenPal[256] __attribute__((aligned(4)))=
{
 0x7F55,0x7FFF,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};