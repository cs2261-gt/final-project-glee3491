
//{{BLOCK(gamescreen)

//======================================================================
//
//	gamescreen, 264x256@4, 
//	+ palette 256 entries, not compressed
//	+ 3 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 33x32 
//	Total size: 512 + 96 + 2112 = 2720
//
//	Time-stamp: 2020-04-06, 03:14:19
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMESCREEN_H
#define GRIT_GAMESCREEN_H

#define gamescreenTilesLen 96
extern const unsigned short gamescreenTiles[48];

#define gamescreenMapLen 2112
extern const unsigned short gamescreenMap[1056];

#define gamescreenPalLen 512
extern const unsigned short gamescreenPal[256];

#endif // GRIT_GAMESCREEN_H

//}}BLOCK(gamescreen)
