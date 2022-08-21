@echo off

echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] 开始还原 nuget 包...
nuget.exe restore
if %errorlevel% == 0 (
	echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] nuget 包还原成功
) else (
	echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] nuget 包还原失败
)

echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] 开始构建解决方案 WeReader.sln...
"C:\Program Files\Microsoft Visual Studio\2022\Preview\Msbuild\Current\Bin\MSBuild.exe" WeReader.sln /t:Rebuild /p:Configuration=Release
if %errorlevel% == 0 (
	echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] WeReader.sln 解决方案构建成功
) else (
	echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] WeReader.sln 解决方案构建失败
)

set package="WeReader_Release_%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%.zip"
echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] 开始打压缩包 %package%...
7z a ".\WeReader\bin\Publish\%package%" ".\WeReader\bin\Release"
if %errorlevel% == 0 (
	echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] %package% 打压缩包成功
) else (
	echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] %package% 打压缩包失败
)

set installer="WeReader_v1.0.0.0.exe"
echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] 开始打安装包 %installer%...
makensis build.nsi
if %errorlevel% == 0 (
	echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] %installer% 打安装包成功
) else (
	echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] %installer% 打安装包失败
)