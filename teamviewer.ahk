#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



DetectHiddenWindows, on

WinWait, Sponsored session, This was a free session sponsored by www.teamviewer.com. ;Wait for the sponsored session
{
	WinActivate ;Make sure it is the active window
	SendInput {Enter} ;Close it.  This window selects 'OK' by default.
	sleep, 100
	WinMinimize, ahk_class #32770 ;Minimize the Teamviewer application (Computer list and the main control panel)
	reload
}