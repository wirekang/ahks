!n::
  if !IsVar(WinHandles)
    WinHandles := []
  win := WinExist("A")
  WinHandles.Push(win)
  WinMinimize, ahk_id %win%
  Clean(WinHandles)
  ShowToast(WinHandles)
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
  Clean(WinHandles)
  ShowToast(WinHandles)
return

!+n::
  if WinHandles.Length() > 0 {
    v := WinHandles[1]
    WinHandles.RemoveAt(1, 1)
    WinHandles.Push(v)
  }
  Clean(WinHandles)
  ShowToast(WinHandles)
return

!+u::
  if WinHandles.Length() > 0 {
    v := WinHandles.Pop()
    WinHandles.InsertAt(0,v)
  }
  Clean(WinHandles)
  ShowToast(WinHandles)
return

TransToolTip:
  hwnd := WinExist("ahk_class tooltips_class32")
  WinSet, Trans, 99, % "ahk_id" hwnd
return

ShowToast(WinHandles){
  RST:=""
  CoordMode, ToolTip, Screen

  for index, handle in WinHandles{
    WinGet, V_Process, ProcessName, ahk_id %handle%
    WinGetTitle, V_Title , ahk_id %handle%$
    V_Title := SubStr(V_Title, 1 ,10)

    RST=%V_Process%-- %V_Title%`n%RST%
  }
  ToolTip, %RST%, 0, 0 
  SetTimer, TransToolTip, Off
  SetTimer, TransToolTip, 1000
}

Clean(ByRef WinHandles){
  Temp := []
  for index, handle in WinHandles{
    IfWinExist, ahk_id %handle%
    {
      if !(HasVal(Temp, handle)){
        Temp.Push(handle)
      }
    }
  }
  WinHandles := Temp
}

HasVal(haystack, needle) {
  if !(IsObject(haystack)) || (haystack.Length() = 0)
    return 0
  for index, value in haystack
    if (value = needle)
    return index
return 0
}

; CleanLoop:
;   Clean(WinHandles)
;   ShowToast(WinHandles)
;   SetTimer, CleanLoop, 5000
; return

InitWindows(){
  ; SetTimer, CleanLoop, 1000
}