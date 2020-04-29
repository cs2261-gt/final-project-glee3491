
//{{BLOCK(right)

//======================================================================
//
//	right, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 7 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 64x32 
//	Total size: 512 + 224 + 4096 = 4832
//
//	Time-stamp: 2020-04-28, 23:18:04
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_RIGHT_H
#define GRIT_RIGHT_H

#define rightTilesLen 224
extern const unsigned short rightTiles[112];

#define rightMapLen 4096
extern const unsigned short rightMap[2048];

#define rightPalLen 512
extern const unsigned short rightPal[256];

#endif // GRIT_RIGHT_H

//}}BLOCK(right)
