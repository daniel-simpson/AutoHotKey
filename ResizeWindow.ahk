

ResizeWinToCoords(newX = -1, newY = -1, Width = 0, Height = 0, WinTitle = "")
{
	WinGetPos,X,Y,W,H,A
	
	If %newX% < 0
	    newX := X
	
	If %Height% < 0
	    newY := Y
		
	If %Width% = 0
	    Width := W
		
	If %Height% = 0
	    Height := H
	
	If WinTitle = "")
		WinMove,A,,%X%,%Y%,%Width%,%Height%
	Else
		WinMove,A,,%X%,%Y%,%Width%,%Height%,WinTitle
}

ResizeWin(Width = 0, Height = 0, WinTitle="")
{
	ResizeWinToCoords(-1,-1,%Width%,%Height%, WinTitle)
}

ResizeWinToOrigin(Width = 0, Height = 0, WinTitle="")
{
	ResizeWinToCoords(0,0,%Width%,%Height%, WinTitle)
}