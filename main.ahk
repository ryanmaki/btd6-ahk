#SingleInstance Force
#MaxThreadsPerHotkey 3
#Include %A_ScriptDir%

#Include maps\_include.ahk
#Include utils\_include.ahk
#Include data\_include.ahk

^!+j:: {
    ClearLogFile()
    LogMsg("Script started")
    Start()
}

^!+p:: {
    LogMsg("Script stopped")
    Reload()
}
