#pragma once
#include <Windows.h>

static WCHAR* files[] = {
	L"entry.lua",
	L"A-4E-C.lua",
	L"Cockpit/Scripts/EFM_Data_Bus.lua",
	L"Entry/Suspension.lua",
};

static BYTE hashes[][32] = {
	{0x2d,0x02,0xa2,0xcf,0x76,0x4d,0x4c,0x59,0x85,0x35,0x1c,0x54,0xdf,0x58,0xc8,0x85,0x91,0x48,0xf0,0x5c},
	{0x6e,0xb1,0x3b,0xcc,0x5e,0x6c,0x4f,0x7b,0xed,0x41,0xef,0x8a,0x77,0x1d,0x17,0xf2,0xc0,0xef,0x3a,0xb3},
	{0x6c,0x1e,0x41,0xfa,0xc3,0x0a,0xb7,0x8a,0x36,0x2f,0xd1,0x3c,0xc1,0x97,0x04,0xc5,0x55,0x78,0x4a,0x18},
	{0x76,0x0a,0x96,0x5c,0xff,0x3d,0x20,0x51,0xc0,0x2e,0x9a,0x79,0x72,0xe6,0x67,0x1b,0x20,0x5b,0x6e,0x92}
};
    