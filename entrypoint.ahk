#SingleInstance, Force
#Persistent
Menu, Tray, Tip, Good
SendMode Input
SetWorkingDir, %A_ScriptDir%

RunKomorebi()

<^+F10:: Reload

#Include, %A_ScriptDir%\Environment.ahk
#Include, %A_ScriptDir%\utils.ahk
#Include, %A_ScriptDir%\windows.ahk
#Include, %A_ScriptDir%\komorebi.ahk
#Include, %A_ScriptDir%\esc-english.ahk
