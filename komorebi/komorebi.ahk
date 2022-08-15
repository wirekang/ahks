#SingleInstance, Force
#Include, %A_ScriptDir%\komorebi.generated.ahk
#Include, %A_ScriptDir%\komorebi.lib.ahk

WatchConfiguration("enable")

EnsureWorkspaces(0,1)
WorkspaceName(0,0,"Left")
WorkspacePadding(0,0,5)
ContainerPadding(0,0,5)

EnsureWorkspaces(1,1)
WorkspaceName(1,0,"Right")
WorkspacePadding(1,0,5)
ContainerPadding(1,0,5)

WindowHidingBehaviour("minimize")

ActiveWindowBorderColour(255,0,0, "Single")
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
