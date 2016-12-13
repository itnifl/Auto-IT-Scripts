#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=193735-200.ico
#AutoIt3Wrapper_Outfile=TestParams.Exe
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_Fileversion=0.1.0.0
#AutoIt3Wrapper_Add_Constants=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         Atle Holm

 Script Function:


#ce ----------------------------------------------------------------------------

Local $exePath = IniRead("ButtonMove.ini", "Program", "exePath", "default")
Local $appTitle = IniRead("ButtonMove.ini", "Program", "appTitle", "default")
Local $workingDir = IniRead("ButtonMove.ini", "Program", "workDirectory", "default")
Local $exeParams = IniRead("ButtonMove.ini", "Program", "exeParams", "default")
Local $sEnvVar = EnvGet("APPDATA")
Local $exeParamsResult = StringReplace($exeParams, "%APPDATA%", $sEnvVar)
ConsoleWrite ("ExePath: " & $exePath & @CRLF)
ConsoleWrite ("ExeParamsResult: " & $exeParamsResult & @CRLF)
ConsoleWrite ("Title: " & $appTitle & @CRLF)
ConsoleWrite ("WorkingDir: " & $workingDir & @CRLF)

