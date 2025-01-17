DarkDungeonsHard() {
    global TS := Map(
        ; Placements were taken from Impoppable strat. Kept to remain consistent between strats.
        "Ace A", ["ace", [1073, 663]],
        "Ace B", ["ace", [1027, 496]],
        "Alch A", ["alch", [1106, 593]],
        "Ben", ["hero", [721, 308]],
        "Dart A", ["dart", [725, 906]],
        "Dart B", ["dart", [244, 818]],
        "Dart C", ["dart", [1547, 431]],
        "Dart D", ["dart", [791, 910]],
        "Dart E", ["dart", [298, 379]],
        "Druid A", ["druid", [902, 1043]],
        "Druid B", ["druid", [1315, 1040]],
        "Druid C", ["druid", [247, 907]],
        "Druid D", ["druid", [893, 582]],
        "Druid E", ["druid", [899, 517]],
        "Druid F", ["druid", [784, 521]],
        "Farm A", ["farm", [1021, 652]],
        "Farm B", ["farm", [741, 644]],
        "Farm C", ["farm", [1061, 494]],
        "Farm F", ["farm", [382, 489]],         
        "Farm G", ["farm", [599, 485]],         
        "Sniper A", ["sniper", [1547, 166]],
        "Sniper B", ["sniper", [196, 159]],
        "Spike A", ["spike", [897, 530]],
        "Sub A", ["sub", [1392, 880]],
        "Village A", ["village", [881, 666]],
        "Village B", ["village", [770, 629]],
        "Village C", ["village", [989, 570]],
    )

    CheckDoubleCash()

    Place("Dart A", true)
    Place("Dart B", true)
    Place("Dart C", true)
    
    StartGame()
    
    Place("Sub A", true)
    Place("Dart D",  true)
    Targeting("Dart D", 3)                  ; First -> Strong
    Place("Dart E", true)
    Targeting("Dart B", 3)                  ; First -> Strong

    WaitForRound(10)
    Place("Ben", true)
    
    WaitForRound(14)
    Place("Farm A", true)
    UpdateMouseRest("Farm A")               ; Hover Farm A
    Place("Druid C", true)
    Place("Druid F", true)
    Upgrade("Farm A", 2, 0, 0, true)        ; 000 -> 200

    WaitForRound(18)
    Upgrade("Sub A", 0, 0, 1, true)         ; 000 -> 001

    WaitForRound(21)
    Place("Farm B", true)
    UpdateMouseRest("Farm A", "Farm B")     ; Hover Farm A, B
    Upgrade("Farm B", 2, 0, 0, true)        ; 000 -> 200
    Upgrade("Druid C", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid C", 1, 0, 0, true)       ; 030 -> 130

    WaitForRound(27)
    Place("Farm C", true)
    UpdateMouseRest("Farm A", "Farm B", "Farm C")     ; Hover Farm A, B, C
    Upgrade("Farm C", 2, 0, 0, true)        ; 000 -> 200

    WaitForRound(30)
    Upgrade("Druid F", 1, 3, 0, true)       ; 000 -> 030

    WaitForRound(32)
    Upgrade("Dart A", 0, 0, 3, true)        ; 000 -> 003
    Upgrade("Dart B", 0, 0, 3, true)        ; 000 -> 003
    Upgrade("Dart C", 0, 0, 3, true)        ; 000 -> 003

    WaitForRound(34)
    Place("Village A", true)
    Upgrade("Village A", 0, 0, 2, true)     ; 000 -> 002
    Upgrade("Farm B", 0, 0, 3, true)        ; 200 -> 203
    UpdateMouseRest("Farm A", "Farm C")     ; Hover Farm A, C
    
    WaitForRound(38)
    Upgrade("Farm A", 0, 0, 3, true)        ; 200 -> 203
    UpdateMouseRest("Farm C")               ; Hover Farm C
    Upgrade("Dart A", 0, 2, 1, true)        ; 003 -> 024

    WaitForRound(41)
    Upgrade("Farm C", 0, 0, 3, true)        ; 200 -> 203
    Place("Druid D", true)
    Upgrade("Druid D", 0, 3, 0, true)       ; 000 -> 030
    Place("Druid E", true)
    Upgrade("Druid E", 0, 3, 0, true)       ; 000 -> 030
    Place("Farm F", true)
    UpdateMouseRest("Farm F")               ; Hover Farm F
    Upgrade("Farm F", 0, 0, 3, true)        ; 000 -> 003
    Upgrade("Farm F", 0, 2, 0, true)        ; 003 -> 023
    Upgrade("Village A", 0, 2, 0, true)     ; 002 -> 022
    Place("Farm G", true)
    UpdateMouseRest("Farm G")               ; Hover Farm G
    Upgrade("Farm G", 0, 0, 3, true)        ; 000 -> 003
    Upgrade("Farm G", 0, 2, 0, true)        ; 003 -> 023

    WaitForRound(45)
    Upgrade("Druid D", 1, 0, 0, true)       ; 030 -> 130
    Upgrade("Druid E", 1, 0, 0, true)       ; 030 -> 130

    WaitForRound(49)
    Sell("Farm A")
    Upgrade("Village A", 0, 0, 2, true)     ; 002 -> 004
    Place("Ace A", true)
    Upgrade("Ace A", 0, 0, 3, true)         ; 000 -> 003
    Upgrade("Ace A", 2, 0, 0, true)         ; 003 -> 203
    Recenter("Ace A", 835, 18)
    Place("Alch A", true)
    Upgrade("Alch A", 3, 2, 0, true)        ; 000 -> 320

    WaitForRound(50)
    Upgrade("Druid D", 0, 1, 0, true)       ; 130 -> 140
    Upgrade("Farm B", 0, 0, 1, true)        ; 023 -> 024
    Upgrade("Farm C", 0, 0, 1, true)        ; 023 -> 024

    WaitForRound(60)
    Upgrade("Ace A", 0, 0, 1, true)         ; 203 -> 204
    Upgrade("Alch A", 1, 0, 0, true)        ; 320 -> 420

    WaitForRound(67)

    Sell("Druid C")
    Sell("Druid E")
    Sell("Druid F")
    Sell("Farm B")
    Sell("Farm C")
    Sell("Farm F")
    Sell("Farm G")
    Upgrade("Ace A", 0, 0, 1, true)         ; 204 -> 205
    Upgrade("Druid D", 0, 1, 0, true)       ; 140 -> 150

    LeftTrap() {
        if defeated {
            return
        }
        Click(587, 366)
        Sleep(100)
    }

    RightTrap() {
        if defeated {
            return
        }
        Click(1083, 356)
        Sleep(100)
    }
  
}
