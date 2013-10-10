
; ------------------- MEDIA KEYS ---------------------------

Browser_Back::
    SendEvent ^!{LEFT}
    return

Browser_Forward::
    SendEvent ^!{Right}
    return

Browser_Stop::
    SendEvent ^+!x
    return

Browser_Refresh::
    SendEvent ^+!z
    return

Browser_Home::
    return

Launch_Mail::
    return

Launch_App1::
    RunWait, taskkill /f /im explorer.exe
    Run explorer.exe
    return

;Launch_App2::			Default launches Calculator
;    return

Launch_Media::
    return

Media_Stop::
    return

;AppsKey::
    return ; Sorts out the shitty 'right mouse click' key

; ------------------- ATTACHING DEBUGGERS ------------------

#ifWinActive, Microsoft Visual Studio
Numpad0 & Numpad1::
NumpadIns & NumpadEnd::
    Send ^!p
	Sleep 1
	Send ie{ENTER}
    return 

Numpad0 & Numpad2::
NumpadIns & NumpadDown::
    Send ^!p
	Sleep 1
	Send bmc{ENTER}
	return

Numpad0 & Numpad3::
NumpadIns & NumpadPgdn::
    Send ^!p
	Sleep 1
	Send w3{ENTER}
	return

Numpad0 & Numpad5::
    Send ^!p
	Sleep 1
	Send sbr{ENTER}
	return

