
if not A_IsAdmin 
{
	MsgBox, "Not running as Administrator.. Exiting."
	ExitApp 
}

; !: Sends an ALT keystroke.
; +: Sends a SHIFT keystroke.
; ^: Sends a CONTROL keystroke.
; #: Sends a WIN keystroke.
#Include %A_ScriptDir%\ResizeWindow.ahk

SetTitleMatchMode, 2
DetectHiddenWindows, On

::ahk::AutoHotKey
::addjquery::var s = document.createElement('script'); s.setAttribute('type','text/javascript'); s.setAttribute('src', 'https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'); document.head.appendChild(s);
::dom::*
::gmail::**@gmail.com
::hmail::**@hotmail.com
::nmail::**@*.com.au
::ang::angularjs
::comp::MELW4CSWWX1
::gwmii::(gwmi -Query "select * from Win32_service where name=''").PathName{LEFT 12}{BACKSPACE}
::phone::*
::ext::*
::pphone::*

::lorem::
    oldClip := ClipboardAll
    Clipboard = Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    Sleep, 1
    Send, ^v
    Sleep, 1
    Clipboard := oldClip
    oldClip = ;
    exit

PrintScreen::
    Run, %windir%\system32\SnippingTool.exe
    exit
	
AppsKey::
	Send, #{F3}
	exit

^AppsKey::
	Send, ^#{F3}
	exit

RWin::
	Send, !{SPACE}
	exit


F1::
    Run, iexplore.exe http://www.autohotkey.com/docs/commands/Send.htm
    exit

#IfWinActive, Microsoft Visual Studio
;RWin::
;	Send, ^t
;	exit

#IfWinActive
