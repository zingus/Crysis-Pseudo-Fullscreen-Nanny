#SingleInstance force
SetTimer, CryENGINEBorderless, 1000

Loop {
  WinWaitActive ahk_class CryENGINE
  WinSet Style, -0xC00000 
  SysGet MonNR,MonitorPrimary
  SysGet Mon,Monitor,%MonNR%
  WinGetPos ,WinTop,WinLeft,WinWidth,WinHeight
  MonWidth  := MonRight-MonLeft
  MonHeight := MonBottom-MonTop
  WinLeft   := MonLeft+(MonWidth-WinWidth)/2
  WinTop    := MonTop+(MonHeight-WinHeight)/2
  WinMove ,%WinLeft%,%WinTop%

  IfWinNotExist CryENGINE_BACKDROP
  {
    Gui New,-Border +MinSize2000x1000, CryENGINE_BACKDROP
    Gui, Color, 000000
    Gui Show,Maximize
  }
  WinShow CryENGINE_BACKDROP
  WinActivate CryENGINE_BACKDROP

  WinActivate ahk_class CryENGINE

  WinWaitNotActive ahk_class CryENGINE

  IfWinNotExist ahk_class CryENGINE
    WinClose CryENGINE_BACKDROP
  Else
    WinHide CryENGINE_BACKDROP
}

CryENGINEBorderless:
  IfWinExist ahk_class CryENGINE
  {
    WinGet CryENGINE_STYLE,Style
    if CryENGINE_STYLE != 0x140A0000
    { 
      WinSet Style, -0xC00000, ahk_class CryENGINE
    }
  }
return
