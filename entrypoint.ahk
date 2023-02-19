#SingleInstance, Force
#Persistent
Menu, Tray, Tip, Good
SendMode Input
SetWorkingDir, %A_ScriptDir%

InitFocusBorder()

#Include, %A_ScriptDir%\esc-english.ahk
#Include, %A_ScriptDir%\focus-border.ahk
