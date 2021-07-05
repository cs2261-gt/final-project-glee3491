
//{{BLOCK(pausescreen)

//======================================================================
//
//	pausescreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 48 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 1536 + 2048 = 4096
//
//	Time-stamp: 2020-04-28, 23:15:05
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSESCREEN_H
#define GRIT_PAUSESCREEN_H

#define pausescreenTilesLen 1536
extern const unsigned short pausescreenTiles[768];

#define pausescreenMapLen 2048
extern const unsigned short pausescreenMap[1024];

#define pausescreenPalLen 512
extern const unsigned short pausescreenPal[256];

#endif // GRIT_PAUSESCREEN_H

//}}BLOCK(pausescreen)
