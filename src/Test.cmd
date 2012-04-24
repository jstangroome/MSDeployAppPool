set msdeployexe=C:\Program Files (x86)\IIS\Microsoft Web Deploy V2\msdeploy.exe

call "%msdeployexe%" -verb:getParameters -source:package="%~dp0output\TemplateApplicationPool.zip"

call "%msdeployexe%" -verb:sync -source:package="%~dp0output\TemplateApplicationPool.zip" -dest:auto -setParamFile="%~dp0Test.SetParam.xml"
