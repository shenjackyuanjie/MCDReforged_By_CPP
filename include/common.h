/*
common.h by noFe
所有程序的全局定义放进来 awa
*/
#pragma once

#define stdfuncallconv _fastcall	//全部函数统一使用_fastcall调用约定吧 awa(踹开_stdcall和_cdecl
#define MCDRCPP_VER "0.1.0"
#define MCDRCPP_DEV_STATUS "INDEV"
#define MCDRCPP_RELEASES "https://github.com/MCDReforged-By-CPP-Development-Team/MCDReforged_By_CPP/releases"
#define MCDRCPP_GITHUBPAGE "https://github.com/MCDReforged-By-CPP-Development-Team/MCDReforged_By_CPP/"
#define MCDRCPP_ISSTABLE false
#define DEBUG_FUNC_ENABLE   //正式版的时候把这个宏删掉 awa

#define COMMOM_CFG "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n"\
        "<MCDReforgedByCppConfig>\r\n"\
        "\t<LoadCppPlugins>true</LoadCppPlugins>\r\n"\
        "\t<LoadPythonPlugins>true</LoadPythonPlugins>\r\n"\
        "\t<LoadCppPluginsConfig>true</LoadCppPluginsConfig>\r\n"\
        "\t<LoadPythonPluginsConfig>true</LoadPythonPluginsConfig>\r\n"\
        "\t<CppPluginsDir>cppplugins</CppPluginsDir>\r\n"\
        "\t<PythonPluginsDir>pyplugins</PythonPluginsDir>\r\n"\
        "\t<ExecInitScript>true</ExecInitScript>\r\n"\
        "\t<ExecTimerScript>true</ExecTimerScript>\r\n"\
        "\t<ServerDir>server</ServerDir>\r\n"\
        "\t<ServerStartupCommand>server.jar</ServerStartupCommand>\r\n"\
        "\t<JavaPath>init</JavaPath>\r\n"\
        "\t<EnableMinecraftCommandQueue>true</EnableMinecraftCommandQueue>\r\n"\
        "\t<ServerParser>VanillaParser</ServerParser>\r\n"\
        "\t<Instructionprefix>!!mcdr </Instructionprefix>\r\n"\
        "\t<LogFilePath>log</LogFilePath>\r\n"\
        "\t<InitScriptPath>script</InitScriptPath>\r\n"\
        "\t<TimerScriptPath>script</TimerScriptPath>\r\n"\
        "</MCDReforgedByCppConfig>\r\n";

#define CFGFILENAME "mcdrcppconfig.xml"