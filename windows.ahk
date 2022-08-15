!n::
  if !IsVar(Wins)
    Wins := []
  win := WinExist("A")
  Wins.Push(win)
  WinMinimize, ahk_id %win%
return

!u::
  i := Wins.MaxIndex()
  w := Wins[i]
  Wins.Pop()
  IfWinExist, ahk_id %w%
  {
    WinGet, WinState, MinMax, ahk_id %w%
    If WinState = -1
      WinActivate
  }
return