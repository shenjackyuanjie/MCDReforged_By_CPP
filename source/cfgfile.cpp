#include"cfgfile.h"

using namespace std;


bool LoadConfig::ConfigFileExisting() {
    char strCfgPath[MAX_PATH];
    GetModuleFileName(NULL, strCfgPath, MAX_PATH);
    (strrchr(strCfgPath, '\\'))[1] = 0;
    strcat_s(strCfgPath, "mcdrcppcfg.xml"); //获取mcdrcpp配置文件路径

    HANDLE hFile = ::CreateFile(
        strCfgPath,
        GENERIC_READ,
        FILE_SHARE_READ | FILE_SHARE_WRITE,
        NULL,
        OPEN_EXISTING,
        FILE_ATTRIBUTE_NORMAL,
        0);
    if (hFile == INVALID_HANDLE_VALUE) return false;    //判断mcdrcpp配置文件是否存在
    CloseHandle(hFile);
    return true;
}

int LoadConfig::LoadConfigFile() {
    DebugPrint("Enter LoadConfigFile()!");
    DebugPrint(ConfigFileExisting());
    if (ConfigFileExisting()) {
        char pathBuf[MAX_PATH];
        GetCurrentDirectoryA(sizeof(pathBuf), pathBuf);
        strcat_s(pathBuf, "\\mcdrcppconfig.xml");
        DebugPrint(pathBuf);

        string cfgPath = pathBuf;

        return ReadCfgFile(cfgPath);
        return 0;
    }
    else {
        CreateCfgFile();
        char pathBuf[MAX_PATH];
        GetCurrentDirectoryA(sizeof(pathBuf), pathBuf);
        strcat_s(pathBuf, "\\mcdrcppconfig.xml");
        DebugPrint(pathBuf);

        string cfgPath = pathBuf;

        return ReadCfgFile(pathBuf);
        return -1;
    }
}

int LoadConfig::CreateCfgFile() {
    char strCfgPath[MAX_PATH];
    char strCfgFile[] = "<?xml version=\"1.0\" encoding=\"utf - 8\"?>\r\n"\
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
        "\t<JavaPath></JavaPath>\r\n"\
        "\t<EnableMinecraftCommandQueue>true</EnableMinecraftCommandQueue>\r\n"\
        "\t<ServerParser>VanillaParser</ServerParser>\r\n"\
        "\t<Instructionprefix>!!mcdr < / Instructionprefix>\r\n"\
        "</MCDReforgedByCppConfig>\r\n";
    DWORD dwWriteBytes;

    GetModuleFileName(NULL, strCfgPath, MAX_PATH);
    (strrchr(strCfgPath, '\\'))[1] = 0;
    strcat_s(strCfgPath, "mcdrcppcfg.xml");

    HANDLE hFile = ::CreateFile(
        strCfgPath,
        GENERIC_WRITE,
        FILE_SHARE_READ | FILE_SHARE_WRITE,
        NULL,
        OPEN_ALWAYS,
        FILE_ATTRIBUTE_NORMAL,
        0);
    if (hFile == INVALID_HANDLE_VALUE) return false;    //判断mcdrcpp配置文件是否存在
    WriteFile(hFile, strCfgFile, sizeof(strCfgFile), &dwWriteBytes, NULL);
    CloseHandle(hFile);
    return 0;
}

int LoadConfig::ReadCfgFile(string cfgFilePath) {
    DebugPrint("Enter ReadCfgFile()!");
    TiXmlDocument *pDoc = new TiXmlDocument;
    if (pDoc == NULL) {
        DebugPrint("new TiXmlDocument failed.");
        return -1;
    }

    bool bret = pDoc->LoadFile(cfgFilePath.c_str(), TIXML_ENCODING_UTF8);
    if (!bret) {
        DebugPrint("pDoc->LoadFile(cfgFilePath.c_str()) failed.");
        return -1;
    }
    TiXmlElement* pRootEle = pDoc->RootElement();
    if (pRootEle == NULL) { 
        DebugPrint("pDoc->LoadFile(cfgFilePath.c_str()); failed.");
        return -1; 
    }

    TiXmlElement* pElem = NULL;

    GetNodePointerByName(pRootEle, (string)"LoadCppPlugins", pElem);
    if (pElem == NULL) return -1;
    bLoadCppPlugins = StringToBool(pElem->GetText());

    GetNodePointerByName(pRootEle, (string)"LoadPythonPlugins", pElem);
    if (pElem == NULL) return -1;
    bLoadPyPlugins = StringToBool(pElem->GetText());

    GetNodePointerByName(pRootEle, (string)"LoadCppPluginsConfig", pElem);
    if (pElem == NULL) return -1;
    bReadCppPluginsCfg = StringToBool(pElem->GetText());

    GetNodePointerByName(pRootEle, (string)"LoadPythonPluginsConfig", pElem);
    if (pElem == NULL) return -1;
    bReadPyPluginCfg = StringToBool(pElem->GetText());

    GetNodePointerByName(pRootEle, (string)"CppPuginsDir", pElem);
    if (pElem == NULL) return -1;
    strCppPluginPath = pElem->GetText();

    GetNodePointerByName(pRootEle, (string)"PythonPluginsDir", pElem);
    if (pElem == NULL) return -1;
    strPyPluginPath = pElem->GetText();

    GetNodePointerByName(pRootEle, (string)"ExecInitScript", pElem);
    if (pElem == NULL) return -1;
    bExecInitScript = StringToBool(pElem->GetText());

    GetNodePointerByName(pRootEle, (string)"LoadCppPlugins", pElem);
    if (pElem == NULL) return -1;
    bExecTimerScript = StringToBool(pElem->GetText());

    GetNodePointerByName(pRootEle, (string)"ServerDir", pElem);
    if (pElem == NULL) return -1;
    strServerWorkingDir = pElem->GetText();

    GetNodePointerByName(pRootEle, (string)"ServerStartupCommand", pElem);
    if (pElem == NULL) return -1;
    strMinecraftServerStartupCommandLine = pElem->GetText();

    GetNodePointerByName(pRootEle, (string)"JavaPath", pElem);
    if (pElem == NULL) return -1;
    strJavaPath = pElem->GetText();

    GetNodePointerByName(pRootEle, (string)"EnableMinecraftCommandQueue", pElem);
    if (pElem == NULL) return -1;
    bEnableMinecraftCommandQueue = StringToBool(pElem->GetText());

    GetNodePointerByName(pRootEle, (string)"ServerParser", pElem);
    if (pElem == NULL) return -1;
    iParserType = StringToParserCode(pElem->GetText());

    return 0;
}

bool LoadConfig::GetNodePointerByName(TiXmlElement* pRootEle, std::string& strNodeName, TiXmlElement*& Node)    //此函数来自于CSDN 链接:https://blog.csdn.net/masikkk/article/details/14191933?utm_medium=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-1.add_param_isCf&depth_1-utm_source=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-1.add_param_isCf
{
    if (strNodeName == pRootEle->Value())
    {
        Node = pRootEle;
        return true;
    }
    TiXmlElement* pEle = pRootEle;
    for (pEle = pRootEle->FirstChildElement(); pEle; pEle = pEle->NextSiblingElement())
    {
        if (GetNodePointerByName(pEle, strNodeName, Node))
            return true;
    }
    return false;
}

bool LoadConfig::StringToBool(string Temp) {
    if (Temp == "true" || Temp == "TRUE" || Temp == "True") return true;
    else if (Temp == "false" || Temp == "FALSE" || Temp == "False") return false;
    return false;
}

int LoadConfig::StringToParserCode(string parserName) {
    if (parserName == "VanillaParser") {
        return VANILLA_PARSER_CODE;
    }

    if (parserName == "BukkitParser") {
        return BUKKIT_PARSER_CODE;
    }

    if (parserName == "Bukkit14Parser") {
        return BUKKIT_14_PARSER_CODE;
    }

    if (parserName == "BungeeCordParser") {
        return BUNGEECORD_PARSER_CODE;
    }

    if (parserName == "CatServerParser") {
        return CAT_SERVER_PARSER_CODE;
    }

    if (parserName == "WaterfallParser") {
        return WATERFALL_PARSER_CODE;
    }
}