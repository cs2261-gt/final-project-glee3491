
//{{BLOCK(instructionscreen)

//======================================================================
//
//	instructionscreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 243 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 7776 + 2048 = 10336
//
//	Time-stamp: 2020-04-23, 07:08:13
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONSCREEN_H
#define GRIT_INSTRUCTIONSCREEN_H

#define instructionscreenTilesLen 7776
extern const unsigned short instructionscreenTiles[3888];

#define instructionscreenMapLen 2048
extern const unsigned short instructionscreenMap[1024];

#define instructionscreenPalLen 512
extern const unsigned short instructionscreenPal[256];

#endif // GRIT_INSTRUCTIONSCREEN_H

//}}BLOCK(instructionscreen)
