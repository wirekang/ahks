#SingleInstance, Force
SendMode Input

#Include, %A_ScriptDir%\generated.ahk
#Include, %A_ScriptDir%\lib.ahk

WatchConfiguration("enable")

InvisibleBorders(5,0,10,5)
EnsureWorkspaces(0,1)
WorkspacePadding(0,0,10)
ContainerPadding(0,0,10)

ActiveWindowBorder("enable")

CrossMonitorMoveBehaviour("insert")

MouseFollowsFocus("enable")

CompleteConfiguration()

!h::
  Focus("left")
return

!j::
  Focus("down")
return

!k::
  Focus("up")
return

!l::
  Focus("right")
return

!+h::
  Move("left")
return

!+j::
  Move("down")
return

!+k::
  Move("up")
return

!+l::
  Move("right")
return

