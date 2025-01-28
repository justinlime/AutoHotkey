#Include "VD.ahk"
#SingleInstance force
VD.createUntil(10)

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

!f:: {
    static isfullscreen := false
    if (isfullscreen) {
        winrestore "a"                ; restore window
    } else {
        winmaximize "a"               ; maximize
    }
    isfullscreen := !isfullscreen
}
 
