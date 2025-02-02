Gui, Add, Text, x60 y20 w130 h20 Center, The software is running.
Gui, Add, Button, x20 y60 w100 h30 gMinimizeToTray, Minimize to Tray
Gui, Add, Button, x130 y60 w100 h30 gClose, Close
Gui, Add, Text, x105 y120 w80 h20 vGithubLink gGithubLink cBlue, Github
Gui, Show, w250 h150, QuickDefine

!Space::
    Clipboard := ""
    Send, ^c
    Sleep, 500
    if (Clipboard != "") {
        Run, https://www.google.com/search?q=%Clipboard%+definition
    }
return

MinimizeToTray:
Gui, Hide
Menu, Tray, Icon, Shell32.dll, 43
Menu, Tray, Tip, QuickDefine is running
return

GithubLink:
Run, https://github.com/rumman999/QuickDefine
return

Close:
GuiClose:
ExitApp
return
