/*
cfgfile.h
包含读取配置文件的类及成员函数声明
*/
#pragma once

#include<string>
#include<Windows.h>
#include"serverparser.h"
#include"debugprint.h"
#include"tinyxml2-8.0.0/tinystr.h"  
#include"tinyxml2-8.0.0/tinyxml.h"

volatile static int iParserType;

volatile static bool bLoadCppPlugins;
volatile static bool bLoadPyPlugins;
volatile static bool bExecInitScript;
volatile static bool bExecTimerScript;
volatile static bool bReadCppPluginsCfg;
volatile static bool bReadPyPluginsCfg;
volatile static bool bExecTimerScriptLoop;
volatile static bool bEnableMinecraftCommandQueue;

static std::string strJavaPath;
static std::string strServerWorkingDir;
static std::string strMinecraftServerStartupCommandLine;
static std::string strCppPluginPath;
static std::string strPyPluginPath;
static std::string strInitScriptPath;
static std::string strTimerScriptPath;
static std::string strInstructionPrefix;
static std::string strLogFilePath;

using namespace std;

class LoadConfig {
private:
	static int stdfuncallconv ReadCfgFile();
	static int stdfuncallconv CreateCfgFile();
	static bool stdfuncallconv ConfigFileExisting();
	static bool stdfuncallconv StringToBool(string Temp);
	static bool stdfuncallconv GetNodePointerByName(TiXmlElement* pRootEle, std::string& strNodeName, TiXmlElement*& Node);
	static int stdfuncallconv StringToParserCode(string parserName);
public:
	static int LoadConfigFile();
	static int Default();
};

#ifdef DEBUG_FUNC_ENABLE
int stdfuncallconv PrintAttr();
#endif