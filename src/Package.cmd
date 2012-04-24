set msdeployexe=C:\Program Files (x86)\IIS\Microsoft Web Deploy V2\msdeploy.exe

rmdir /s /q "%~dp0output"
mkdir "%~dp0output"

call "%msdeployexe%" -verb:sync -source:appPoolConfig=TemplateApplicationPool -dest:package="%~dp0output\TemplateApplicationPool.zip" -declareParamFile="%~dp0Package.declareParam.xml"

icacls "%~dp0output" /reset /t