f not A_IsAdmin 
{
	MsgBox, "Not running as Administrator.. Exiting."
	ExitApp 
}

; !: Sends an ALT keystroke.
; +: Sends a SHIFT keystroke.
; ^: Sends a CONTROL keystroke.
; #: Sends a WIN keystroke.
#Include %A_ScriptDir%\ResizeWindow.ahk
#Include %A_ScriptDir%\ProjectHotkeys.ahk

SetTitleMatchMode, 2
DetectHiddenWindows, On


; Global ----------------------------------------------------------------------------------------------------------------
#IfWinActive,

::ahk::AutoHotKey
::addjquery::var s = document.createElement('script'); s.setAttribute('type','text/javascript'); s.setAttribute('src', 'https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'); document.head.appendChild(s);
::dom::*
::gmail::**@gmail.com
::hmail::**@hotmail.com
::nmail::**@*.com.au
::ang::angularjs
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

; Bring up details view in task manager
^+Esc::
	Send, ^+{Esc}
	Sleep, 200
	Send, {Shift Down}{Tab}{Shift Up}{Right 5}{Tab}
	return 



	
; Slack -----------------------------------------------------------------------------------------------------------------
#IfWinActive, Slack
;  Alt+B to Convert selected text to BigText.
~!b::
	clipback := ClipboardAll
	clipboard=
	Send ^c
	ClipWait, 0
	UrlDownloadToFile % "http://bigtext.org/?font=standard&text=" . clipboard, temp
	FileRead, contents, temp
	FileDelete temp
	if (RegExMatch(contents, "<pre id.*bigtext.*?>[\n\r\s]+(.*)[\n\r][\s]+</pre>", match))
	clipboard := match1
	Send, ``````
	Send, ^v
	Send, ``````
	Sleep, 500
	clipboard := clipback
	return

^t::
	Send, ^k
	return
	
^r::
	return
	
F1::
	Send, /collapse{RETURN}
	Sleep, 200
	Send {RETURN}
	return

#s::
	WinMinimize, Slack
	return 
#IfWinActive,
#s::
	IfWinNotExist, Slack
		run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --app=https://<COMPANY>.slack.com/
	IfWinExist, Slack
		WinActivate, Slack
		WinSet, Style, +0xC00000, A
		WinMaximize
	return

; Git Extensions ------------------------------------------------------------------------------------------------------------------
#IfWinActive, Git Extensions
#g::WinMinimize, Git Extensions
#IfWinActive,
#g::
	IfWinNotExist, Git Extensions
		run "C:\Program Files (x86)\GitExtensions\GitExtensions.exe"
	IfWinExist, Git Extensions
		WinActivate, Git Extensions
	return
	
; - OneNote ---------------------------------------------------------------------------------------------------------------
#IfWinActive, - OneNote
#a::WinMinimize, - OneNote
#IfWinActive, 
#a::
	IfWinNotExist, - OneNote
		run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office 2013\- OneNote 2013.lnk"
	IfWinExist, - OneNote
		WinActivate, - OneNote
	return
	
; Visual Studio ----------------------------------------------------------------------------------------------------------
#IfWinActive, Visual Studio (Administrator)
	#z::WinMinimize

#IfWinActive,
#z::
	IfWinExist, Visual Studio (Administrator)
		WinActivate, 
	return

; Jira -------------------------------------------------------------------------------------------------------------------

#IfWinActive, Jira
F1::
	Run, https://jira.atlassian.com/secure/WikiRendererHelpAction.jspa?section=all
	exit
	
; Hotkeys.ahk ------------------------------------------------------------------------------------------------------------
#IfWinActive, Hotkeys.ahk
^s::
	Send ^s 
	Sleep 100
	Reload
	Sleep 1000
	MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
	IfMsgBox, Yes, Edit
	return
