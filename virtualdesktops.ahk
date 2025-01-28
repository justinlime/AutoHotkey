#Include "VD.ahk"

;; Recommended headers from the VD.ahk dev
#SingleInstance force
ListLines 0
SendMode "Input"
SetWorkingDir A_ScriptDir
KeyHistory 0
#WinActivateForce
ProcessSetPriority "H"
SetWinDelay -1
SetControlDelay -1

;; ! = Alt
;; + = Shift
;; ^ = Ctrl
;; # = Windows Key

;; Create 10 desktops to start
VD.createUntil(10)

;; Switch to desktop 
!1::VD.goToDesktopNum(1)
!2::VD.goToDesktopNum(2)
!3::VD.goToDesktopNum(3)
!4::VD.goToDesktopNum(4)
!5::VD.goToDesktopNum(5)
!6::VD.goToDesktopNum(6)
!7::VD.goToDesktopNum(7)
!8::VD.goToDesktopNum(8)
!9::VD.goToDesktopNum(9)
!0::VD.goToDesktopNum(10)
;; Switch to desktop to the left
;; !h::VD.goToRelativeDesktopNum(-1)
;; Switch to desktop to the right
;; !l::VD.goToRelativeDesktopNum(+1)

;; Move the active window to another desktop, and switch to that desktop
!+1::VD.MoveWindowToDesktopNum("A",1).follow()
!+2::VD.MoveWindowToDesktopNum("A",2).follow()
!+3::VD.MoveWindowToDesktopNum("A",3).follow()
!+4::VD.MoveWindowToDesktopNum("A",4).follow()
!+5::VD.MoveWindowToDesktopNum("A",5).follow()
!+6::VD.MoveWindowToDesktopNum("A",6).follow()
!+7::VD.MoveWindowToDesktopNum("A",7).follow()
!+8::VD.MoveWindowToDesktopNum("A",8).follow()
!+9::VD.MoveWindowToDesktopNum("A",9).follow()
!+0::VD.MoveWindowToDesktopNum("A",10).follow()
;; Move active window to the desktop to the left, and switch to it
;; !+h::VD.MoveWindowToRelativeDesktopNum("A", -1).follow()
;; Move active window to the desktop to the right, and switch to it
;; !+l::VD.MoveWindowToRelativeDesktopNum("A", 1).follow()

;; Fullscreen and restore active window
!f:: {
    static isfullscreen := false
    if (isfullscreen) {
        winrestore "a"                ; restore window
    } else {
        winmaximize "a"               ; maximize
    }
    isfullscreen := !isfullscreen
}

;; Rebind arrow keys
!h::Send("{Left}")
!j::Send("{Down}")
!k::Send("{Up}")
!l::Send("{Right}")

