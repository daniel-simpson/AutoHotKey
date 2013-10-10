;
;	Small script to remap the apple keyboard.  Ctrl, Win and THEN alt is the order.  Foolish Apples.
;

; ------------------- SETUP --------------------------------

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

LWin::LAlt
LAlt::LWin
RWin::RAlt
RAlt::RWin
