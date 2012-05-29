set msdeployexe=C:\Program Files (x86)\IIS\Microsoft Web Deploy V2\msdeploy.exe

call "%msdeployexe%" -verb:getParameters -source:package="%~dp0output\TemplateApplicationPool.zip"
rem call "%msdeployexe%" -verb:sync -source:package="%~dp0output\TemplateApplicationPool.zip" -dest:archiveDir="%~dp0output\archiveDir" -setParam:managedPipelineMode=Classic -verbose

call "%msdeployexe%" -verb:sync -source:package="%~dp0output\TemplateApplicationPool.zip" -dest:auto -setParamFile="%~dp0Test.SetParam.xml" -verbose
rem call "%msdeployexe%" -verb:sync -source:package="%~dp0output\TemplateApplicationPool.zip" -dest:auto -setParam:providerPath=TestApplicationPool -setParam:managedPipelineMode=Classic -verbose
rem call "%msdeployexe%" -verb:sync -source:archiveDir="%~dp0output\archiveDir" -dest:auto -setParam:managedPipelineMode=Classic -verbose

rem icacls "%~dp0output" /reset /t