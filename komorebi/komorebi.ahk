#SingleInstance, Force
#Include, %A_ScriptDir%\komorebi.generated.ahk
#Include, %A_ScriptDir%\komorebi.lib.ahk

WatchConfiguration("enable")

EnsureWorkspaces(0,1)
WorkspaceName(0,0,"Left")
WorkspaceLayout(0,0,"columns")
WorkspacePadding(0,0,5)

EnsureWorkspaces(1,1)
WorkspaceName(1,0,"Right")
WorkspaceLayout(1,0,"rows")
WorkspacePadding(1,0,5)

WindowHidingBehaviour("hide")

; ActiveWindowBorder("enable")
; Run, komorebic.exe active-window-border-colour 255 0 0, , Hide

CrossMonitorMoveBehaviour("insert")

MouseFollowsFocus("enable")
Run, komorebic.exe identify-tray-application exe "Todoist.exe", , Hide

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

