#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=193735-200.ico
#AutoIt3Wrapper_Outfile=AutoPlaceMax.Exe
#AutoIt3Wrapper_Res_Fileversion=0.1
#AutoIt3Wrapper_Add_Constants=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author:         Atle Holm

 Script Function:
	Run an app and then Winkey and right arrow five times + winkey + up arrow one time.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#include <MsgBoxConstants.au3>
Local $exePath = IniRead("ButtonMove.ini", "Program", "exePath", "default")
Local $appTitle = IniRead("ButtonMove.ini", "Program", "appTitle", "default")
Local $iPID = Run($exePath, "", @SW_SHOWMAXIMIZED)
WinWait("[CLASS:" & $appTitle & "]", "", 3)
Send("#{RWin down}{Right}")
Send("#{Right}")
Send("#{Right}")
Send("#{Right}")
Send("#{Right}")
Send("#{Up}")
Send("#{RWin up}")
; MsgBox ( $MB_SYSTEMMODAL, "title", "test " & $appTitle )



