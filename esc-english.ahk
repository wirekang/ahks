$Esc::
  ret := IME_CHECK("A")
  if %ret% <> 0
  {
    Send, {Esc}
    Send, {vk15} 
  }
  else if %ret% = 0
  {
    Send, {Esc} 
  }
return

IME_CHECK(WinTitle) {
  WinGet, hWnd, ID, %WinTitle%
return Send_ImeControl(ImmGetDefaultIMEWnd(hWnd),0x005,"")
}

Send_ImeControl(DefaultIMEWnd, wParam, lParam) {
  DetectSave := A_DetectHiddenWindows
  DetectHiddenWindows,ON
  SendMessage 0x283, wParam,lParam,,ahk_id %DefaultIMEWnd%
  if (DetectSave <> A_DetectHiddenWindows)
    DetectHiddenWindows,%DetectSave%
return ErrorLevel
}

ImmGetDefaultIMEWnd(hWnd) {
return DllCall("imm32\ImmGetDefaultIMEWnd", Uint,hWnd, Uint)
}