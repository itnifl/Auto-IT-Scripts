#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=193735-200.ico
#AutoIt3Wrapper_Outfile=MacroEditor.Exe
#AutoIt3Wrapper_Change2CUI=y
#AutoIt3Wrapper_Res_Fileversion=0.1.0.0
#AutoIt3Wrapper_Add_Constants=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         Atle Holm

 Script Function:
	Run word and then hit ALt+F11

#ce ----------------------------------------------------------------------------

$cmd = UBound($CmdLine) - 1
if $CmdLine[1] == "/help" Then
	displayHelpScreen()
EndIf
If $CmdLine[0] = 0 Then
	ShellExecute("winword")
	WinWait("[CLASS:Document1 - Word]", "", 3)
ElseIf $CmdLine[0] = 2 Then
	ShellExecute("winword", $CmdLine[1])
	WinWait("[CLASS:" & $CmdLine[2] & "]", "", 3)
Else
	displayHelpScreen()
EndIf
Send("#{ALTDOWN}")
Send("#{F11}")
Send("#{ALTUP}")


Func displayHelpScreen()
	ConsoleWrite ("************  Makro Help Screen   ************" & @CRLF)
	ConsoleWrite ("  Open makro editor on specific word document:" & @CRLF)
	ConsoleWrite ("     MakroEdtor.exe D:\wordfile.docx WordTitle" & @CRLF)
	ConsoleWrite ("  Open makro editor on a new word document:" & @CRLF)
	ConsoleWrite ("     MakroEdtor.exe")
	Exit
EndFunc

