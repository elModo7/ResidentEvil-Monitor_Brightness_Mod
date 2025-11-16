;@Ahk2Exe-SetName RE1 Brightness Changer
;@Ahk2Exe-SetDescription Changes brightness based on if the game is in a door animation or not.
;@Ahk2Exe-SetVersion 0.0.1
;@Ahk2Exe-SetCopyright Copyright (c) 2025`, elModo7 - VictorDevLog
;@Ahk2Exe-SetOrigFilename RE1 Brightness Changer.exe
#NoEnv
#SingleInstance Force
#Persistent
SetBatchLines -1
version := 0.1
#Include <Memory_mini>
#Include <Screen>
wasDoor := 0

mem := new Memory("ahk_exe Biohazard.exe")
SetTimer, readMem, 100
return

readMem:
	isDoor := mem.rmd(0x739620)
	;~ ToolTip % "IsDoor?: " (isDoor ? "Yes" : "Nope")
	if (wasDoor != isDoor) {
		if (isDoor) {
			setMonitorBrightnessProgressive(0)
		} else {
			setMonitorBrightnessProgressive(100)
		}
	}
	wasDoor := isDoor
return

Esc::ExitApp