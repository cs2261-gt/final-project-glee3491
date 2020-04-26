
//{{BLOCK(gamebg2)

//======================================================================
//
//	gamebg2, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 9 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 288 + 2048 = 2848
//
//	Time-stamp: 2020-04-26, 08:45:19
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEBG2_H
#define GRIT_GAMEBG2_H

#define gamebg2TilesLen 288
extern const unsigned short gamebg2Tiles[144];

#define gamebg2MapLen 2048
extern const unsigned short gamebg2Map[1024];

#define gamebg2PalLen 512
extern const unsigned short gamebg2Pal[256];

#endif // GRIT_GAMEBG2_H

//}}BLOCK(gamebg2)
