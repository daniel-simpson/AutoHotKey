
; ------------------- SETUP --------------------------------

if not A_IsAdmin 
{
	MsgBox, "Not running as Administrator.. Exiting."
	ExitApp 
}
; Note on modifier keys:
; ^ is Ctrl
; ! is Alt
; + is Shift
; # is Win


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode 2 ;
SetNumLockState, On ;
SetNumLockState, AlwaysOn ;
SetScrollLockState, AlwaysOff ;

#Include %A_ScriptDir%\ResizeWindow.ahk
; #Include %A_ScriptDir%\MusicHotKeys.ahk
#Include %A_ScriptDir%\RemapAppleKeys.ahk
#Include %A_ScriptDir%\GroovesharkKeys.ahk
; #Include %A_ScriptDir%\Debugging.ahk
; #Include %A_ScriptDir%\UnusedKeys.ahk

::amail::daniel.simpson@autumn01.com
::aphone::+61290458161
::aaphone::(02) 9045 8161
::gmail::daniel.gregory.simpson@gmail.com
::hmail::daniel_simpson1988@hotmail.com
::fid::633236740

::ahk::AutoHotKey
::rpi::Raspberry Pi
::gwmii::(gwmi -Query "select * from Win32_service where name=''").PathName{LEFT 12}{BACKSPACE}
::ang::angularjs
::boots::bootstrap ui
::lorem::Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique. Duis cursus, mi quis viverra ornare, eros dolor interdum nulla, ut commodo diam libero vitae erat. Aenean faucibus nibh et justo cursus id rutrum lorem imperdiet. Nunc ut sem vitae risus tristique posuere.
::addjquery::var s = document.createElement('script'); s.setAttribute('type','text/javascript'); s.setAttribute('src', 'https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'); document.head.appendChild(s);

RAlt::
    SendEvent !{SPACE}	;For launching 'Launchy' with RWin
    return
	
SC066::
	SendEvent ^!+W
	return

F3::
    if(A_PriorHotKey = "F3" and A_TimeSincePriorHotkey < 400)
    {
        KeyWait, F3
    	Run, D:\_temp\Skydrive\Apps\ProgramFiles\stress-reducer-desktop-destroyer.exe
        return
    }

