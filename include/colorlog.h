﻿#pragma once

#ifndef __COLORLOG
#define __COLORLOG
#endif // !COLOLRLOG

#include <iostream>
#include <string>	
#include "Windows.h"
#include "common.h"

using namespace std;

#pragma region COLORS
#define WHITE 0x07
#define RED_FOREGROUND FOREGROUND_INTENSITY | FOREGROUND_RED
#define GREEN_FOREGROUND FOREGROUND_INTENSITY | FOREGROUND_GREEN
#define BLUE_FOREGROUND FOREGROUND_INTENSITY | FOREGROUND_BLUE
#define PURPLE_FOREGROUND FOREGROUND_INTENSITY | FOREGROUND_RED | FOREGROUND_BLUE
#define YELLOW_FOREGEOUND FOREGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_RED
#define LIME_FOREGROUND FOREGROUND_INTENSITY | FOREGROUND_GREEN | FOREGROUND_BLUE
//不写了
#pragma endregion


class ColorLog
{
public:
	ColorLog();	
	int stdfuncallconv out(LPSTR sOut, WCHAR wTextAttribute);
	int stdfuncallconv out(LPCSTR sOut, WCHAR wTextAttribute);
private:

};

