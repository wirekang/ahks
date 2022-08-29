#SingleInstance, Force
#Persistent
Menu, Tray, Tip, Good
SendMode Input
SetWorkingDir, %A_ScriptDir%

RunKomorebi()
InitWindows()
InitFocusBorder()

<^+F10::
  Process, Close, komorebi.exe
  RunKomorebi()
return

<^+F11::
  Reload
return

#Include, %A_ScriptDir%\utils.ahk
#Include, %A_ScriptDir%\windows.ahk
#Include, %A_ScriptDir%\esc-english.ahk
#Include, %A_ScriptDir%\focus-border.ahk
#Include, %A_ScriptDir%\Environment.ahk
#Include, %A_ScriptDir%\komorebi.ahk
