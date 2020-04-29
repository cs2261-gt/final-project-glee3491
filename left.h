
//{{BLOCK(left)

//======================================================================
//
//	left, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 7 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 64x32 
//	Total size: 512 + 224 + 4096 = 4832
//
//	Time-stamp: 2020-04-28, 23:17:30
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEFT_H
#define GRIT_LEFT_H

#define leftTilesLen 224
extern const unsigned short leftTiles[112];

#define leftMapLen 4096
extern const unsigned short leftMap[2048];

#define leftPalLen 512
extern const unsigned short leftPal[256];

#endif // GRIT_LEFT_H

//}}BLOCK(left)
