@REM Creates a release file system image for copying to a PC

c:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe Core\ConfigurationWebsite\ConfigurationWebsite\ConfigurationWebsite.csproj /p:Configuration=Release;DeployOnBuild=True;PackageAsSingleFile=False;outdir=release/
c:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe Update\UpdateWebsite\UpdateWebsite\UpdateWebsite.csproj /p:Configuration=Release;DeployOnBuild=True;PackageAsSingleFile=False;outdir=release/

IF EXIST release RMDIR /Q /S release

mkdir release\c\AMOT
mkdir release\d\config
mkdir release\d\database
mkdir release\d\exports
mkdir release\d\updates
mkdir release\d\log
mkdir release\d\reports

mkdir release\c\AMOT\Logger
mkdir release\c\AMOT\Server
mkdir release\c\AMOT\config

xcopy /E Core\IISStarter\IISStarter\bin\Release\*.* release\c\AMOT\ /EXCLUDE:create_release_exclude.txt
xcopy /E Core\DataCollectionFramework\Framework\bin\Release\*.* release\c\AMOT\Logger\ /EXCLUDE:create_release_exclude.txt
xcopy /E Core\ModbusServer\ModbusServer\bin\Release\*.* release\c\AMOT\Server\ /EXCLUDE:create_release_exclude.txt
xcopy /E Core\Launcher\Launcher\bin\Release\*.* release\c\AMOT\ /EXCLUDE:create_release_exclude.txt

xcopy /E Core\iisconfig\*.config release\c\AMOT\iisconfig\
xcopy /E Core\ModbusServer\ModbusServer\config\*.* release\c\AMOT\config

xcopy /E Core\ModbusServer\ModbusServer\config\*.* release\d\config\
xcopy /E Core\ConfigurationWebsite\ConfigurationWebsite\release\_PublishedWebsites\ConfigurationWebsite\*.* release\c\AMOT\Website\ /EXCLUDE:create_release_exclude.txt
xcopy /E Update\UpdateWebsite\UpdateWebsite\release\_PublishedWebsites\UpdateWebsite\*.* release\c\AMOT\UpdateWebsite\ /EXCLUDE:create_release_exclude.txt

copy Core\ConfigurationWebsite\ConfigurationWebsite\Files\Silverlight.exe release\c\AMOT\Website\Content\xtsw

mkdir release\c\AMOT\Website\Content\xtsw
copy RIA\XTS\html\index.htm release\c\AMOT\Website\Content\xtsw
copy RIA\XTS\html\xts.xap release\c\AMOT\Website\Content\xtsw
copy RIA\XTS\html\xts.js release\c\AMOT\Website\Content\xtsw
copy RIA\XTS\html\SLMedallion_ENU.png release\c\AMOT\Website\Content\xtsw

copy Core\ReportsPlugin\xmlreport.html release\d\reports

xcopy /E Update\UpdateWebsite\UpdateWebsite\Files\*.* release\c\AMOT\UpdateWebsite

copy utils\StartupRedirect\redirect.html release\c\AMOT
copy utils\StartupRedirect\logo_amot.gif release\c\AMOT\Website\Content\xtsw
copy utils\StartupRedirect\logo_amot.gif release\c\AMOT\UpdateWebsite\landing

mkdir release\utils\ConvertDatabase
xcopy /E utils\ConvertDatabase\ConvertDatabase\bin\Release\*.* release\utils\ConvertDatabase /EXCLUDE:create_release_exclude.txt

copy utils\PasswordResetResponse\PasswordResetResponse\bin\Release\PasswordResetResponse.exe release\utils

copy lib\UserManager\UserGroups.xml release\d\database
