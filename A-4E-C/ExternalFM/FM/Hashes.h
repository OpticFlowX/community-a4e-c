#pragma once
    #include <Windows.h>

    static WCHAR* files[] = {L"entry.lua",L"A-4E-C.lua",L"Cockpit/Scripts/EFM_Data_Bus.lua",L"Entry/Suspension.lua",L"EFM_BETA_1_BUILD_DO_NOT_DISTRIBUTE.lua"};

    static BYTE hashes[][32] = {
	{0x78,0x69,0xe7,0x0d,0x5c,0x93,0xe7,0x32,0x64,0x1a,0x27,0x8f,0xa2,0x64,0xe5,0x0e,0x83,0x23,0xe0,0x64},
	{0x41,0x46,0xd0,0x79,0xd1,0xe5,0x2b,0xf7,0xa1,0x15,0x1a,0x1f,0x18,0xab,0x65,0xb6,0x8b,0xe0,0xf0,0x10},
	{0xa0,0x54,0xa7,0xa7,0xf9,0x9c,0x04,0x0b,0x56,0xb5,0x1d,0xa6,0x95,0xe3,0x7e,0x42,0xd1,0xe4,0x6c,0x95},
	{0x80,0x34,0x38,0xd9,0xf1,0x61,0xcf,0x70,0x2e,0x3b,0xf0,0x2f,0x39,0xc5,0xbd,0xd8,0xc7,0xf5,0xb7,0xbc},
	{0xc5,0x45,0xa1,0xec,0x92,0x4b,0x49,0x9a,0x55,0xa0,0x8e,0xbe,0xa2,0x0c,0x6c,0x35,0x2f,0xb9,0xf0,0xa6}
};
    