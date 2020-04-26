
//{{BLOCK(gamebg1)

//======================================================================
//
//	gamebg1, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 27 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 864 + 2048 = 3424
//
//	Time-stamp: 2020-04-26, 08:44:29
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short gamebg1Tiles[432] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x7744,0x7777,0x4474,0x4444,0x7447,0x7777,0x4647,0x6664,
	0x4747,0x7774,0x4747,0x6677,0x7747,0x7667,0x7747,0x7766,
	0x7777,0x4477,0x4444,0x4744,0x6667,0x7446,0x7667,0x7477,
	0x7667,0x7474,0x7766,0x7474,0x4777,0x7474,0x4666,0x7474,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x7777,0x7777,
	0xFFFF,0xFFFF,0x7777,0x7777,0x8888,0x8888,0x8888,0x8888,

	0x6647,0x6776,0x6647,0x6676,0x6647,0x6476,0x6647,0x4476,
	0x6647,0x4776,0x6447,0x7766,0x4474,0x4444,0x7744,0x7777,
	0x4666,0x7474,0x6666,0x7474,0x4666,0x7474,0x4466,0x7477,
	0x7444,0x7467,0x7777,0x7446,0x4444,0x4744,0x7777,0x4477,
	0x8888,0x8888,0x8888,0x8888,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0xCCC4,0xCCCC,0xAAAC,0xAAAA,0x66AC,0x6666,0x66AC,0x6666,
	0x66AC,0x6666,0x66AC,0x6666,0x66AC,0x6666,0x66AC,0x6666,

	0xAAAC,0xAAAA,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0x5555,0x5555,
	0xEEEE,0xEEEE,0x9999,0x9999,0xDDDD,0xDDDD,0x1111,0x1111,
	0x7774,0x7777,0x4447,0x4444,0x6647,0x6666,0x6647,0x6666,
	0x6647,0x6666,0x6647,0x6666,0x6647,0x6666,0x6647,0x6666,
	0x4447,0x4444,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0xBBBB,0xBBBB,0xBBBB,0xBBBB,0xFFFF,0xFFFF,0x2222,0x2222,
	0x7744,0x7777,0x4474,0x4444,0x7447,0x0777,0x4647,0xC064,
	0x4747,0x0004,0x4747,0xAAA0,0x0747,0xAAA0,0x0747,0xACCC,

	0x7777,0x0000,0x0004,0x0AAA,0xAAA0,0x000A,0xAAAA,0x0000,
	0xCCCC,0x000A,0x0000,0xCCCC,0xA0CA,0x0000,0xA0CA,0xAAAA,
	0x0000,0x7777,0xAAAA,0x4000,0xA000,0x0CCA,0x0000,0xAAAA,
	0xA000,0xCCCC,0xCCC0,0x0000,0x0000,0xAA0C,0xAAAA,0xAA0C,
	0x7777,0x4477,0x4444,0x4744,0x6660,0x7446,0x760C,0x7477,
	0x7000,0x7474,0x0CAA,0x7474,0x0CAA,0x7470,0xCCCA,0x7470,
	0x0647,0xC000,0x0047,0x0A0C,0xA047,0xAA0C,0xC047,0xAA0C,
	0x0047,0xCC00,0xA007,0x00AA,0xAA04,0xCAAA,0xCC04,0xCAAC,

	0xA0CC,0xAAAA,0xC000,0xCCCC,0x0AAA,0x0000,0xAAAA,0x0CAA,
	0xAACC,0x0CAA,0xCC00,0x0CCA,0x00A0,0x000C,0xCAA0,0xAAA0,
	0xAAAA,0xCC0C,0xCCCC,0x000C,0x0000,0xAAA0,0xAAAA,0xAAAA,
	0xAAAA,0xCCAA,0xACC0,0x00CC,0xC000,0x0C00,0x0AAA,0x0CAA,
	0x000C,0x7470,0xA0C0,0x7400,0xA0CA,0x740C,0xC0CA,0x740C,
	0x00CC,0x7400,0xAA00,0x700C,0xAAAA,0x40CA,0xCAAA,0x40CC,
	0x0004,0xCCC0,0xAA04,0x000A,0xAA00,0xAAAA,0xCCC0,0xAAAA,
	0x0000,0xCCCC,0xAAA0,0x0000,0xAAA0,0xAA0C,0xCCC0,0xAA0C,

	0x0CA0,0xAAAA,0xA0C0,0x000A,0xAA0C,0xCCC0,0x0A0C,0xCCCC,
	0xC00C,0x00CC,0xCC00,0x000C,0xCC0C,0x0000,0xCC0C,0x0000,
	0xAAAA,0x0CA0,0xA000,0x0C0A,0x0CCC,0xA0AA,0xCCCC,0xA0A0,
	0xCC00,0xC00C,0xC000,0x00CC,0x0000,0xA0CC,0x0000,0xA0CC,
	0x0CCC,0x4000,0xA000,0x40CA,0xAAAA,0x00CA,0xAAAA,0x0CCC,
	0xCCCC,0x0000,0x0000,0x0CAA,0xA0CA,0x0CAA,0xA0CA,0x0CCC,
	0x0000,0xCC0C,0x0647,0x0000,0x6647,0x6476,0x6647,0x4476,
	0x6647,0x4776,0x6447,0x7766,0x4474,0x0444,0x7744,0xC077,

	0xCC0C,0x0000,0xCC00,0x0000,0xCC06,0x0000,0xCC06,0x0000,
	0x0004,0x0000,0xCCC0,0xCCCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,
	0x0000,0xC0CC,0x0000,0x00CC,0x0000,0x60CC,0x0000,0x40CC,
	0x0000,0x4000,0xCCCC,0x0CCC,0xCCCC,0xCCCC,0xCCCC,0xCCCC,
	0xC0CC,0x0000,0x0000,0x7470,0x4666,0x7474,0x4466,0x7477,
	0x7444,0x7467,0x7777,0x7446,0x4440,0x4744,0x770C,0x4477,
};

const unsigned short gamebg1Map[1024] __attribute__((aligned(4)))=
{
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0003,0x0003,0x0001,0x0002,
	0x0003,0x0003,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0006,0x0006,0x0004,0x0005,
	0x0006,0x0006,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,

	0x0001,0x0002,0x0007,0x0407,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0003,0x0003,
	0x0001,0x0002,0x0003,0x0003,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0007,0x0407,0x0001,0x0002,
	0x0004,0x0005,0x0008,0x0408,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0006,0x0006,
	0x0004,0x0005,0x0006,0x0006,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0008,0x0408,0x0004,0x0005,

	0x0001,0x0002,0x0001,0x0002,0x0009,0x0409,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0009,0x0409,0x0001,0x0002,0x0001,0x0002,
	0x0004,0x0005,0x0004,0x0005,0x000A,0x040A,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x000A,0x040A,0x0004,0x0005,0x0004,0x0005,

	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0007,0x0407,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0007,0x0407,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0008,0x0408,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0008,0x0408,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,

	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0009,0x0409,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0009,0x0409,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x000A,0x040A,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x000A,0x040A,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,

	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,

	0x0003,0x0003,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0003,0x0003,
	0x0003,0x0003,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0003,0x0003,0x0001,0x0002,
	0x0006,0x0006,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0006,0x0006,
	0x0006,0x0006,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0006,0x0006,0x0004,0x0005,

	0x0001,0x0002,0x0003,0x0003,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0003,0x0003,0x000B,0x000C,
	0x000D,0x000E,0x0003,0x0003,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0003,0x0003,
	0x0004,0x0005,0x0006,0x0006,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0006,0x0006,0x000F,0x0010,
	0x0011,0x0012,0x0006,0x0006,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0006,0x0006,

	0x0003,0x0003,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0003,0x0003,0x0013,0x0014,
	0x0015,0x0016,0x0003,0x0003,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0003,0x0003,0x0001,0x0002,
	0x0006,0x0006,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0006,0x0006,0x0017,0x0018,
	0x0019,0x001A,0x0006,0x0006,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0006,0x0006,0x0004,0x0005,

	0x0001,0x0002,0x0003,0x0003,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0003,0x0003,
	0x0003,0x0003,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0003,0x0003,
	0x0004,0x0005,0x0006,0x0006,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0006,0x0006,
	0x0006,0x0006,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0006,0x0006,

	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,

	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0009,0x0409,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0009,0x0409,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x000A,0x040A,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x000A,0x040A,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,

	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0007,0x0407,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0007,0x0407,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0008,0x0408,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0008,0x0408,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,

	0x0001,0x0002,0x0001,0x0002,0x0009,0x0409,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0009,0x0409,0x0001,0x0002,0x0001,0x0002,
	0x0004,0x0005,0x0004,0x0005,0x000A,0x040A,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x000A,0x040A,0x0004,0x0005,0x0004,0x0005,

	0x0001,0x0002,0x0007,0x0407,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0003,0x0003,
	0x0001,0x0002,0x0003,0x0003,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0007,0x0407,0x0001,0x0002,
	0x0004,0x0005,0x0008,0x0408,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0006,0x0006,
	0x0004,0x0005,0x0006,0x0006,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0008,0x0408,0x0004,0x0005,

	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0003,0x0003,0x0001,0x0002,
	0x0003,0x0003,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,0x0001,0x0002,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0006,0x0006,0x0004,0x0005,
	0x0006,0x0006,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
	0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,0x0004,0x0005,
};

const unsigned short gamebg1Pal[256] __attribute__((aligned(4)))=
{
	0x0842,0x7D00,0x5294,0x027F,0x6F7B,0x7F00,0x739C,0x6739,
	0x02FF,0x7E00,0x7FE0,0x5EF7,0x7F80,0x7D80,0x7E80,0x56B5,
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

//}}BLOCK(gamebg1)
