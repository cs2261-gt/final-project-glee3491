
//{{BLOCK(splashscreen)

//======================================================================
//
//	splashscreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 2 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 64 + 2048 = 2624
//
//	Time-stamp: 2020-04-06, 03:15:48
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SPLASHSCREEN_H
#define GRIT_SPLASHSCREEN_H

#define splashscreenTilesLen 64
extern const unsigned short splashscreenTiles[32];

#define splashscreenMapLen 2048
extern const unsigned short splashscreenMap[1024];

#define splashscreenPalLen 512
extern const unsigned short splashscreenPal[256];

#endif // GRIT_SPLASHSCREEN_H

//}}BLOCK(splashscreen)
