!n::
  if !IsVar(WinHandles)
    WinHandles := []
  win := WinExist("A")
  WinHandles.Push(win)
  WinMinimize, ahk_id %win%
  ShowTray(WinHandles)
return

!u::
  i := WinHandles.MaxIndex()
  w := WinHandles[i]
  WinHandles.Pop()
  IfWinExist, ahk_id %w%
  {
    WinGet, WinState, MinMax, ahk_id %w%
    If WinState = -1
      WinActivate
  }
  ShowTray(WinHandles)
return

CloseTray:
  TrayTip
return

ShowTray(WinHandles){
  RST:=""
  for index, element in WinHandles{
    WinGet, Active_Process, ProcessName, ahk_id %element%
    RST=%Active_Process%`n%RST%
  }
  TrayTip "Queue", %RST%
  SetTimer, CloseTray, 500
}