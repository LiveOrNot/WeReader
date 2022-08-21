@echo off

echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] ��ʼ��ԭ nuget ��...
nuget.exe restore
if %errorlevel% == 0 (
	echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] nuget ����ԭ�ɹ�
) else (
	echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] nuget ����ԭʧ��
)

echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] ��ʼ����������� WeReader.sln...
"C:\Program Files\Microsoft Visual Studio\2022\Preview\Msbuild\Current\Bin\MSBuild.exe" WeReader.sln /t:Rebuild /p:Configuration=Release
if %errorlevel% == 0 (
	echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] WeReader.sln ������������ɹ�
) else (
	echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] WeReader.sln �����������ʧ��
)

set package="WeReader_Release_%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%.zip"
echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] ��ʼ��ѹ���� %package%...
7z a ".\WeReader\bin\Publish\%package%" ".\WeReader\bin\Release"
if %errorlevel% == 0 (
	echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] %package% ��ѹ�����ɹ�
) else (
	echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] %package% ��ѹ����ʧ��
)

set installer="WeReader_v1.0.0.0.exe"
echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] ��ʼ��װ�� %installer%...
makensis build.nsi
if %errorlevel% == 0 (
	echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] %installer% ��װ���ɹ�
) else (
	echo %date:~0,4%-%date:~5,2%-%date:~8,2% %time:~0,2%:%time:~3,2%:%time:~6,2% [build] %installer% ��װ��ʧ��
)