; You can generate a fresh version of this file with "komorebic ahk-library"
#Include %A_ScriptDir%\komorebi\lib.ahk
; https://github.com/LGUG2Z/komorebi/#generating-common-application-specific-configurations
#Include %A_ScriptDir%\komorebi\generated.ahk

ActiveWindowBorderColour(255,66,243,"single")
ActiveWindowBorder("enable")

CrossMonitorMoveBehaviour("insert")

WatchConfiguration("enable")

EnsureWorkspaces(0, 1)
WorkspaceName(0, 0, "W1")
WorkspacePadding(0,0,3)
ContainerPadding(0,0,3)

EnsureWorkspaces(1, 1)
WorkspaceName(1, 0, "W2")
WorkspacePadding(1,0,3)
ContainerPadding(1,0,3)

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

;There are many more commands that you can bind to whatever keys combinations you want!
;
; Have a look at the komorebic.lib.ahk file to see which arguments are required by different commands
;
; If you want more information about a command, you can run every komorebic command with "--help"
;
; For example, if you see this in komorebic.lib.ahk
;
; WorkspaceLayout(monitor, workspace, value) {
;    Run, komorebic.exe workspace-layout %monitor% %workspace% %value%, , Hide
; }
;
; Just run "komorebic.exe workspace-layout --help" and you'll get all the information you need to use the command
;
; komorebic.exe-workspace-layout
; Set the layout for the specified workspace
;
; USAGE:
;    komorebic.exe workspace-layout <MONITOR> <WORKSPACE> <VALUE>
;
; ARGS:
;    <MONITOR>      Monitor index (zero-indexed)
;    <WORKSPACE>    Workspace index on the specified monitor (zero-indexed)
;    <VALUE>        [possible values: bsp, columns, rows, vertical-stack, horizontal-stack, ultrawide-vertical-stack]
;
; OPTIONS:
;    -h, --help    Print help information
