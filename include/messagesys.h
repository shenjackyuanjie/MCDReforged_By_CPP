#pragma once

#define MSGCATE_PLAYER_LOGIN 0
#define MSGCATE_PLAYER_LOGOUT 1
#define MSGCATE_PLAYER_MSG 2
#define MSGCATE_PLAYER_MOVED_TOO_QUICKLY 3
#define MSGCATE_PLAYER_ADVANCEMENT 4
#define MSGCATE_SERVER_LOADCOMPLETE 5
#define MSGCATE_RCON_RUNNING 6
#define MSGCATE_LISTENING 7
#define MSGCATE_CANTKEEPUP 8

int stdfuncallconv DispatchPluginMsg(int* processresult);