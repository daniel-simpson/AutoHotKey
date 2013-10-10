;
;	AutoHotKey script to control Grooveshark Chrome Web Application with Apple keyboard on windows
;	(weird specs, I know)
;	F16 toggles MiniPlayer/Maximised, F17 - RW, F18 - Play/Paused, F19 - FF
;
;	Using custom userscript & extension to style Grooveshark mini player (separately)
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode 2
SetNumLockState, On
SetNumLockState, AlwaysOn
SetScrollLockState, AlwaysOn

#Include %A_ScriptDir%\ResizeWindow.ahk

; Note on modifier keys:
; ^ is Ctrl
; ! is Alt
; + is Shift
; # is Win

; ------------------- GROOVESHARK KEYS ---------------------

#IfWinActive, Grooveshark
^w::
	return
#IfWinActive,

; F16 / Clear - Grooveshark to Foreground
SC045::
	WinGet, WindowStatus, MinMax, Grooveshark
	if(WindowStatus == 0) ; If small mode is showing => show large mode
	{
		WinMaximize, Grooveshark
		WinSet, Transparent, 255, Grooveshark
		WinSet, Transparent, OFF, Grooveshark
		WinSet, AlwaysOnTop, Off, Grooveshark
		WinSet, Style, +0xC00000, Grooveshark
	}
	else ; Restore to small mode
	{
		WinRestore, Grooveshark
		; WinMove,,1000,500,200,200,Grooveshark 
		WinSet, Transparent, 210, Grooveshark
		WinSet, AlwaysOnTop, On, Grooveshark
		WinSet, Style, -0xC00000, Grooveshark
	}
    return

	
; F17 - Previous Song
SC068::
    ControlSend, , {CTRL DOWN}{LEFT}{CTRL UP}, Grooveshark
    return

; F18 - Play/Pause
SC069::
    ControlSend, , {SPACE}, Grooveshark
    return

; F19 - Next Song
SC06A::
    ControlSend, , {CTRL DOWN}{RIGHT}{CTRL UP}, Grooveshark
    return

