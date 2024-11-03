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

; Takes and saves a screenshot only if one hasn't been taken during the current cycle of featured event instas
ScreenshotInstas() { 
    if !enableInstaScreenshot {
        ; LogMsg("Screenshot disabled")
        return   
    }

    currInstaGroup := GetInstaGroup()

    ; initialize prevInstaGroup the first time script calls this function 
    if !IsSet(prevInstaGroup) {
        global prevInstaGroup := 0
    }

    if currInstaGroup != prevInstaGroup {
        Sleep(4000)        ; ensure collection page animations have completed
        TakeScreenshot()
        prevInstaGroup := currInstaGroup
    }

    ; Assigns the current hour of the day (or a custom hour) a value 1-3 corresponding to each featured insta reset group 
    GetInstaGroup(hour := FormatTime(A_NowUTC, "HH")) {
        
        refreshInit := 0    ; the UTC hr of the day when instas first refresh 0 == midnight
        refreshRate := 8    ; the num of hrs between each refresh
        refreshArr := []
    
        ; put the UTC hr of each refresh time in an array 
        Loop 3 {
            refreshArr.Push(refreshInit + ((A_Index - 1) * refreshRate))
        }
                
        if hour >= refreshArr[1] && hour < refreshArr[2]    ; return 1 if current hr is within 1st refresh cycle 
            return 1

        if hour >= refreshArr[2] && hour < refreshArr[3]    ; return 2 if current hr is within 2nd refresh cycle 
            return 2

        if hour < refreshArr[1] || hour >= refreshArr[3]    ; return 3 if current hr is within 3rd refresh cycle
            return 3
    }
}

TakeScreenshot() {
    ssOptions := Map()
    ssOptions["shareX"] := InstaShareX
    ssOptions["ffmpeg"] := InstaFFMPEG

    for functionName in ssOptions {
        if functionName == ssOption {
            ssOptions[functionName].Call()
        }
    }
}

InstaShareX() {
    Send("!{PrintScreen}")
    LogMsg("screenshot of instas taken with ShareX")
    Sleep(2000)     ; delay to give time for ss notif to disolve
}

InstaFFMPEG() {
    imgCoords := Map(
        1, [1390, 365],
        2, [1515, 365],
        3, [1390, 477],
        4, [1515, 477],
    )    

    currentTime := FormatTime(,"yyMMddTHHmm")
    dirName := ".\screenshots"
    
    if !DirExist(dirName) { 
        DirCreate(dirName) 
    }   

    loop imgCoords.Count {
        cropCmd := '"crop=90:90:' imgCoords[A_Index][1] ':' imgCoords[A_Index][2] '" '
        outputFile := dirName "\output_" A_Index "_" currentTime ".png"
        ffmpegCmd := 'ffmpeg -f gdigrab -i title="' windowName '" -frames:v 1 -vf ' cropCmd outputFile
        RunWait(ffmpegCmd)
        LogMsg("screenshot of featured insta: " A_Index)        
    }

    if !WinActive(windowName)
    {
        WinActivate(windowName)
    }

    Sleep(2000)     ; delay because command line may be slow to fully close 
}
