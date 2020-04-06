
//{{BLOCK(instructionscreen)

//======================================================================
//
//	instructionscreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 2 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 64 + 2048 = 2624
//
//	Time-stamp: 2020-04-06, 03:14:43
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONSCREEN_H
#define GRIT_INSTRUCTIONSCREEN_H

#define instructionscreenTilesLen 64
extern const unsigned short instructionscreenTiles[32];

#define instructionscreenMapLen 2048
extern const unsigned short instructionscreenMap[1024];

#define instructionscreenPalLen 512
extern const unsigned short instructionscreenPal[256];

#endif // GRIT_INSTRUCTIONSCREEN_H

//}}BLOCK(instructionscreen)
