; 该脚本使用 HM VNISEdit 脚本编辑器向导产生

; 安装程序初始定义常量
!define PRODUCT_NAME "WeReader"
!define PRODUCT_VERSION "1.0.0.0"
!define PRODUCT_PUBLISHER "Alibaba Pictures, Inc."
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\${PRODUCT_NAME}.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

SetCompressor lzma

; ------ MUI 现代界面定义 (1.67 版本以上兼容) ------
!include "MUI.nsh"

; MUI 预定义常量
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; 欢迎页面
!insertmacro MUI_PAGE_WELCOME
; 安装目录选择页面
!insertmacro MUI_PAGE_DIRECTORY
; 安装过程页面
!insertmacro MUI_PAGE_INSTFILES
; 安装完成页面
!define MUI_FINISHPAGE_RUN "$INSTDIR\${PRODUCT_NAME}.exe"
!insertmacro MUI_PAGE_FINISH

; 安装卸载过程页面
!insertmacro MUI_UNPAGE_INSTFILES

; 安装界面包含的语言设置
!insertmacro MUI_LANGUAGE "SimpChinese"

; 安装预释放文件
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS
; ------ MUI 现代界面定义结束 ------

; 用于比较版本号
!include "WordFunc.nsh"

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile ".\${PRODUCT_NAME}\bin\Publish\${PRODUCT_NAME}_v${PRODUCT_VERSION}.exe"
InstallDir "$PROGRAMFILES\${PRODUCT_NAME}"
InstallDirRegKey HKLM "${PRODUCT_UNINST_KEY}" "UninstallString"
ShowInstDetails show
ShowUnInstDetails show
BrandingText "${PRODUCT_NAME}"

Section "${PRODUCT_NAME}" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite ifnewer
  File "${PRODUCT_NAME}\bin\Release\cef.pak"
  CreateDirectory "$SMPROGRAMS\${PRODUCT_NAME}"
  CreateShortCut "$SMPROGRAMS\${PRODUCT_NAME}\${PRODUCT_NAME}.lnk" "$INSTDIR\${PRODUCT_NAME}.exe"
  CreateShortCut "$DESKTOP\${PRODUCT_NAME}.lnk" "$INSTDIR\${PRODUCT_NAME}.exe"
  File "${PRODUCT_NAME}\bin\Release\CefSharp.BrowserSubprocess.Core.dll"
  File "${PRODUCT_NAME}\bin\Release\CefSharp.BrowserSubprocess.exe"
  File "${PRODUCT_NAME}\bin\Release\CefSharp.Core.dll"
  File "${PRODUCT_NAME}\bin\Release\CefSharp.Core.xml"
  File "${PRODUCT_NAME}\bin\Release\CefSharp.dll"
  File "${PRODUCT_NAME}\bin\Release\CefSharp.Wpf.dll"
  File "${PRODUCT_NAME}\bin\Release\CefSharp.Wpf.xml"
  File "${PRODUCT_NAME}\bin\Release\CefSharp.xml"
  File "${PRODUCT_NAME}\bin\Release\cef_100_percent.pak"
  File "${PRODUCT_NAME}\bin\Release\cef_200_percent.pak"
  File "${PRODUCT_NAME}\bin\Release\cef_extensions.pak"
  File "${PRODUCT_NAME}\bin\Release\d3dcompiler_43.dll"
  File "${PRODUCT_NAME}\bin\Release\d3dcompiler_47.dll"
  File "${PRODUCT_NAME}\bin\Release\debug.log"
  File "${PRODUCT_NAME}\bin\Release\devtools_resources.pak"
  File "${PRODUCT_NAME}\bin\Release\icudtl.dat"
  File "${PRODUCT_NAME}\bin\Release\libcef.dll"
  File "${PRODUCT_NAME}\bin\Release\libEGL.dll"
  File "${PRODUCT_NAME}\bin\Release\libGLESv2.dll"
  SetOutPath "$INSTDIR\locales"
  File "${PRODUCT_NAME}\bin\Release\locales\am.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\ar.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\bg.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\bn.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\ca.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\cs.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\da.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\de.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\el.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\en-GB.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\en-US.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\es-419.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\es.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\et.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\fa.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\fi.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\fil.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\fr.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\gu.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\he.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\hi.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\hr.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\hu.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\id.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\it.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\ja.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\kn.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\ko.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\lt.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\lv.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\ml.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\mr.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\ms.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\nb.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\nl.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\pl.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\pt-BR.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\pt-PT.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\ro.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\ru.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\sk.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\sl.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\sr.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\sv.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\sw.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\ta.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\te.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\th.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\tr.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\uk.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\vi.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\zh-CN.pak"
  File "${PRODUCT_NAME}\bin\Release\locales\zh-TW.pak"
  SetOutPath "$INSTDIR"
  File "${PRODUCT_NAME}\bin\Release\natives_blob.bin"
  File "${PRODUCT_NAME}\bin\Release\snapshot_blob.bin"
  File "${PRODUCT_NAME}\bin\Release\WeReader.exe"
  File "${PRODUCT_NAME}\bin\Release\WeReader.pdb"
  File "${PRODUCT_NAME}\bin\Release\widevinecdmadapter.dll"
SectionEnd

Section ".NET Framework 4.0" SEC02
  Call GetNetFrameworkVersion
	Pop $R1
	${VersionCompare} "4.0.30319" "$R1" $R2
	${If} $R2 == 1
 		SetDetailsPrint textonly
 		DetailPrint "正在安装 .NET Framework 4.0"
 		SetDetailsPrint listonly

 		SetOverwrite on
 		File "dotNetFx40_Full_x86_x64.exe"
 		ExecWait '"dotNetFx40_Full_x86_x64.exe" /q /norestart'
	${EndIf}
SectionEnd

Section -AdditionalIcons
  CreateShortCut "$SMPROGRAMS\${PRODUCT_NAME}\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\${PRODUCT_NAME}.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\${PRODUCT_NAME}.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd

/******************************
 *  以下是安装程序的卸载部分  *
 ******************************/

Section Uninstall
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\dotNetFx40_Full_x86_x64.exe"
  Delete "$INSTDIR\widevinecdmadapter.dll"
  Delete "$INSTDIR\WeReader.pdb"
  Delete "$INSTDIR\WeReader.exe"
  Delete "$INSTDIR\snapshot_blob.bin"
  Delete "$INSTDIR\natives_blob.bin"
  Delete "$INSTDIR\locales\zh-TW.pak"
  Delete "$INSTDIR\locales\zh-CN.pak"
  Delete "$INSTDIR\locales\vi.pak"
  Delete "$INSTDIR\locales\uk.pak"
  Delete "$INSTDIR\locales\tr.pak"
  Delete "$INSTDIR\locales\th.pak"
  Delete "$INSTDIR\locales\te.pak"
  Delete "$INSTDIR\locales\ta.pak"
  Delete "$INSTDIR\locales\sw.pak"
  Delete "$INSTDIR\locales\sv.pak"
  Delete "$INSTDIR\locales\sr.pak"
  Delete "$INSTDIR\locales\sl.pak"
  Delete "$INSTDIR\locales\sk.pak"
  Delete "$INSTDIR\locales\ru.pak"
  Delete "$INSTDIR\locales\ro.pak"
  Delete "$INSTDIR\locales\pt-PT.pak"
  Delete "$INSTDIR\locales\pt-BR.pak"
  Delete "$INSTDIR\locales\pl.pak"
  Delete "$INSTDIR\locales\nl.pak"
  Delete "$INSTDIR\locales\nb.pak"
  Delete "$INSTDIR\locales\ms.pak"
  Delete "$INSTDIR\locales\mr.pak"
  Delete "$INSTDIR\locales\ml.pak"
  Delete "$INSTDIR\locales\lv.pak"
  Delete "$INSTDIR\locales\lt.pak"
  Delete "$INSTDIR\locales\ko.pak"
  Delete "$INSTDIR\locales\kn.pak"
  Delete "$INSTDIR\locales\ja.pak"
  Delete "$INSTDIR\locales\it.pak"
  Delete "$INSTDIR\locales\id.pak"
  Delete "$INSTDIR\locales\hu.pak"
  Delete "$INSTDIR\locales\hr.pak"
  Delete "$INSTDIR\locales\hi.pak"
  Delete "$INSTDIR\locales\he.pak"
  Delete "$INSTDIR\locales\gu.pak"
  Delete "$INSTDIR\locales\fr.pak"
  Delete "$INSTDIR\locales\fil.pak"
  Delete "$INSTDIR\locales\fi.pak"
  Delete "$INSTDIR\locales\fa.pak"
  Delete "$INSTDIR\locales\et.pak"
  Delete "$INSTDIR\locales\es.pak"
  Delete "$INSTDIR\locales\es-419.pak"
  Delete "$INSTDIR\locales\en-US.pak"
  Delete "$INSTDIR\locales\en-GB.pak"
  Delete "$INSTDIR\locales\el.pak"
  Delete "$INSTDIR\locales\de.pak"
  Delete "$INSTDIR\locales\da.pak"
  Delete "$INSTDIR\locales\cs.pak"
  Delete "$INSTDIR\locales\ca.pak"
  Delete "$INSTDIR\locales\bn.pak"
  Delete "$INSTDIR\locales\bg.pak"
  Delete "$INSTDIR\locales\ar.pak"
  Delete "$INSTDIR\locales\am.pak"
  Delete "$INSTDIR\libGLESv2.dll"
  Delete "$INSTDIR\libEGL.dll"
  Delete "$INSTDIR\libcef.dll"
  Delete "$INSTDIR\icudtl.dat"
  Delete "$INSTDIR\devtools_resources.pak"
  Delete "$INSTDIR\debug.log"
  Delete "$INSTDIR\d3dcompiler_47.dll"
  Delete "$INSTDIR\d3dcompiler_43.dll"
  Delete "$INSTDIR\cef_extensions.pak"
  Delete "$INSTDIR\cef_200_percent.pak"
  Delete "$INSTDIR\cef_100_percent.pak"
  Delete "$INSTDIR\CefSharp.xml"
  Delete "$INSTDIR\CefSharp.Wpf.xml"
  Delete "$INSTDIR\CefSharp.Wpf.dll"
  Delete "$INSTDIR\CefSharp.dll"
  Delete "$INSTDIR\CefSharp.Core.xml"
  Delete "$INSTDIR\CefSharp.Core.dll"
  Delete "$INSTDIR\CefSharp.BrowserSubprocess.exe"
  Delete "$INSTDIR\CefSharp.BrowserSubprocess.Core.dll"
  Delete "$INSTDIR\cef.pak"

  Delete "$SMPROGRAMS\${PRODUCT_NAME}\Uninstall.lnk"
  Delete "$DESKTOP\${PRODUCT_NAME}.lnk"
  Delete "$SMPROGRAMS\${PRODUCT_NAME}\${PRODUCT_NAME}.lnk"

  RMDir "$SMPROGRAMS\${PRODUCT_NAME}"
  RMDir "$INSTDIR\locales"

  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd

#-- 根据 NSIS 脚本编辑规则，所有 Function 区段必须放置在 Section 区段之后编写，以避免安装程序出现未可预知的问题。--#

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "您确实要完全移除 $(^Name) ，及其所有的组件？" IDYES +2
  Abort
FunctionEnd

Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) 已成功地从您的计算机移除。"
FunctionEnd

Function GetNetFrameworkVersion
	Push $1
	Push $0
	ReadRegDWORD $0 HKLM "SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full" "Install"
	ReadRegDWORD $1 HKLM "SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full" "Version"
	StrCmp $0 1 KnowNetFrameworkVersion +1
	ReadRegDWORD $0 HKLM "SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Client" "Install"
	ReadRegDWORD $1 HKLM "SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Client" "Version"
	StrCmp $0 1 KnowNetFrameworkVersion +1
	ReadRegDWORD $0 HKLM "SOFTWARE\Microsoft\NET Framework Setup\NDP\v3.5" "Install"
	ReadRegDWORD $1 HKLM "SOFTWARE\Microsoft\NET Framework Setup\NDP\v3.5" "Version"
	StrCmp $0 1 KnowNetFrameworkVersion +1
	ReadRegDWORD $0 HKLM "SOFTWARE\Microsoft\NET Framework Setup\NDP\v3.0\Setup" "InstallSuccess"
	ReadRegDWORD $1 HKLM "SOFTWARE\Microsoft\NET Framework Setup\NDP\v3.0\Setup" "Version"
	StrCmp $0 1 KnowNetFrameworkVersion +1
	ReadRegDWORD $0 HKLM "SOFTWARE\Microsoft\NET Framework Setup\NDP\v2.0.50727" "Install"
	ReadRegDWORD $1 HKLM "SOFTWARE\Microsoft\NET Framework Setup\NDP\v2.0.50727" "Version"
	StrCmp $1 "" +1 +2
	StrCpy $1 "2.0.50727.832"
	StrCmp $0 1 KnowNetFrameworkVersion +1
	ReadRegDWORD $0 HKLM "SOFTWARE\Microsoft\NET Framework Setup\NDP\v1.1.4322" "Install"
	ReadRegDWORD $1 HKLM "SOFTWARE\Microsoft\NET Framework Setup\NDP\v1.1.4322" "Version"
	StrCmp $1 "" +1 +2
	StrCpy $1 "1.1.4322.573"
	StrCmp $0 1 KnowNetFrameworkVersion +1
	ReadRegDWORD $0 HKLM "SOFTWARE\Microsoft\.NETFramework\policy\v1.0" "Install"
	ReadRegDWORD $1 HKLM "SOFTWARE\Microsoft\.NETFramework\policy\v1.0" "Version"
	StrCmp $1 "" +1 +2
	StrCpy $1 "1.0.3705.0"
	StrCmp $0 1 KnowNetFrameworkVersion +1
	StrCpy $1 "not .NetFramework"
	KnowNetFrameworkVersion:
	Pop $0
	Exch $1
FunctionEnd
