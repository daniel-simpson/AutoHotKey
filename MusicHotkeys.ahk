;
; A small AutoHotKey script to turn the numberpad into a (terrible?) musical instrument.
; Numbers 1-8 are major invervals, hold two number to get the semitone between them.  0 is C -8ve, 9 C +8ve.
; + and - change octave.
;

; ------------------- SETUP --------------------------------

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode 2 ;
SetNumLockState, On ;
SetNumLockState, AlwaysOn ;
SetScrollLockState, AlwaysOn ;

; Note on modifier keys:
; ^ is Ctrl
; ! is Alt
; + is Shift
; # is Win


C := 16.35
Db := 17.32
D := 18.35
Eb := 19.45
E := 20.60
F := 21.83
Gb := 23.12
G := 24.50
Ab := 25.96
A := 27.50
Bb := 29.14
B := 30.87

octave := 4

GetFreq(note, oct)
{
	return note * 2**(oct+1)
}

; ------------------- NUMLOCK / MUSIC PADS -----------------

; 0
SC052::
	SoundBeep GetFreq(C, octave-1)
	return
	
; 1
SC04F::
	SoundBeep GetFreq(C, octave)
	return

SC04F & SC050::
SC050 & SC04F::
	SoundBeep GetFreq(Db, octave)
	return
	
; 2
SC050::
	SoundBeep GetFreq(D, octave)
	return

SC050 & SC051::
SC051 & SC050::
	SoundBeep GetFreq(Eb, octave)
	return

; 3
SC051::
	SoundBeep GetFreq(E, octave)
	return

; 4
SC04B::
	SoundBeep GetFreq(F, octave)
	return

SC04B & SC04C::
SC04C & SC04B::
	SoundBeep GetFreq(Gb, octave)
	return	
	
; 5
SC04C::
	SoundBeep GetFreq(G, octave)
	return
	
SC04C & SC04D::
SC04D & SC04C::
	SoundBeep GetFreq(Ab, octave)
	return	

; 6
SC04D::
	SoundBeep GetFreq(A, octave)
	return
	
SC04D & SC047::
SC047 & SC04D::
	SoundBeep GetFreq(Bb, octave)
	return	
	
; 7
SC047::
	SoundBeep GetFreq(B, octave)
	return

; 8
SC048::
	SoundBeep GetFreq(C, octave+1)
	return

; 9
SC049::
	SoundBeep GetFreq(C, octave+2)
	return

;+
SC04E::
	octave := octave + 1
	return

;-
SC04A::
	octave := octave - 1
	return
	
; Num.
SC053::
	octave := 4
	return
	