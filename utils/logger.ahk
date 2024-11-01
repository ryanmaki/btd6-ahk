ClearLogFile() {
    if logging && FileExist(logFile) {
        FileRecycle(logFile)
    }
}

LogMsg(msg) {
    if logging {
        if msg == "Victory" || msg == "Defeat" {
            msg := msg VictoryDefeatText()
        }
        FileAppend("[" FormatTime(, "yyyy-MM-ddTHH:mm:ss") "] " msg "`n", logFile)
    }
}

LogArr(array) {
    arrayStr := "["
    for value in array {
        arrayStr .= value ", "
    }
    arrayStr := RTrim(arrayStr, ", ")
    LogMsg(arrayStr "]")
}

VictoryDefeatText() {
    text := " (" victories
    if victories == 1 {
        text := text " Victory, "
    } else {
        text := text " Victories, "
    }
    if defeats == 1 {
        return text defeats " Defeat)"
    }
    return text defeats " Defeats)"
}

LogDifficulty() {
    LogMsg("Selected difficulty: " difficultyNames[difficulty])
}

; Utilizes Xbox Gamebar to capture the previous 30 seconds of game play
RecordDefeat(msg?) {
    if enableRecordDefeat {
        defaultMsg := "Recorded last 30 seconds after defeat"
        recordHotkey := "#!g"                                               ; Win + Alt + G - shortcut that records last 30 seconds
        
        Send(recordHotkey)                                          
        
        LogMsg(!IsSet(msg) || Type(msg) != "String" ? defaultMsg : msg)     ; Log default if param empty or isnt a string       
        Sleep(200)
    }
}