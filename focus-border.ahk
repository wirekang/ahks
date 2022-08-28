; https://www.autohotkey.com/boards/viewtopic.php?t=25520

InitFocusBorder() {
  global focus_border_thickness = 4
  global border_color = FF0000
  SetTimer, DrawRect, 50
}

DrawRect:
  WinGetPos, focus_border_x, focus_border_y, focus_border_w, focus_border_h, A
  if (focus_border_x="")
    return

  WinGet, isMaxed , MinMax, A
  if (isMaxed=0)
  {
    Gui, +Lastfound +AlwaysOnTop +Toolwindow
    iw:= focus_border_w + focus_border_thickness
    ih:= focus_border_h + focus_border_thickness
    focus_border_w:= focus_border_w + ( focus_border_thickness * 2 )
    focus_border_h:= focus_border_h + ( focus_border_thickness * 2 )
    focus_border_x:= focus_border_x - focus_border_thickness
    focus_border_y:= focus_border_y - focus_border_thickness
    Gui, Color, FF0000
    Gui, -Caption

    ; outer rectangle
    o1a := 0
    o1b := 0
    o2a := focus_border_w 
    o2b := 0 
    o3a := focus_border_w 
    o3b := focus_border_h 
    o4a := 0 
    o4b := focus_border_h 
    o5a := 0
    o5b := 0

    ; inner rectangle
    i1a := focus_border_thickness
    i1b := focus_border_thickness
    i2a := iw
    i2b := focus_border_thickness
    i3a := iw
    i3b := ih
    i4a := focus_border_thickness
    i4b := ih
    i5a := focus_border_thickness
    i5b := focus_border_thickness

    ; Draw outer & inner window(s)
    WinSet, Region, %o1a%-%o1b% %o2a%-%o2b% %o3a%-%o3b% %o4a%-%o4b% %o5a%-%o5b% %i1a%-%i1b% %i2a%-%i2b% %i3a%-%i3b% %i4a%-%i4b% %i5a%-%i5b%
    Gui, Show, w%focus_border_w% h%focus_border_h% x%focus_border_x% y%focus_border_y% NoActivate, Table awaiting Action

  } else {

    WinSet, Region, 0-0 0-0 0-0 0-0 0-0 0-0 0-0 0-0 0-0 0-0 
    Gui, Show, w0 h0 x0 y0 NoActivate, Table awaiting Action

  }

return
