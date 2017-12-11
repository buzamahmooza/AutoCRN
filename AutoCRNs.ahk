#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance,force
;Faris Hijazi AHK Script 11.30.2017  AutoCRN 1.0

	MsgBox, ,Faris AutoCRN `:),Create a text file called "CRN.txt" containing the CRNs each on a line of it's own. `nPlace the .txt file under the same directory of the .ahk script (same folder).`nPress the Telda key ( `` ) (the key under "Esc" to the left of "1") to Input the CRNs

	$` Up::
	{
		SoundBeep
		BlockInput,on
		Loop, read, CRN.txt
		{
			Loop, parse, A_LoopReadLine, %A_Tab%
			{
				SendRaw,%A_LoopReadLine%
				Send,{Tab}
			}
		}
		Send,{Enter}
		BlockInput,off
	}
	return
	
	