OuchImpoppable() {
    global mouseRest := [1246, 850]
    global TS := Map(
        "Dart", ["dart", [562, 326]],
        "Sub A", ["sub", [977, 612]],
        "Ben", ["hero", [174, 673]],
        "Sniper A", ["sniper", [1127, 117]],
        "Farm A", ["farm", [1181, 789]],
        "Farm B", ["farm", [1343, 789]],
        "Farm C", ["farm", [1168, 930]],
        "Boat", ["boat", [728, 467]],
        "Village A", ["village", [1309, 911]],
        "Sub B", ["sub", [981, 546]],
        "Ninja", ["ninja", [666, 757]],
        "Druid A", ["druid", [1462, 781]],
        "Druid B", ["druid", [1505, 836]],
        "Druid C", ["druid", [1404, 892]],
        "Druid D", ["druid", [1479, 898]],
        "Village B", ["village", [1401, 976]],
        "Sniper B", ["sniper", [1281, 987]],
        "Alch A", ["alch", [1173, 1028]],
        "Sniper C", ["sniper", [1339, 1035]],
        "Ace", ["ace", [1536, 973]],
        "Alch B", ["alch", [1608, 1051]],
        "Spike", ["spike", [1343, 789]]
    )
    
    CheckDoubleCash()

    Place("Dart")
    Place("Sub A")
    StartGame()
    
    Place("Ben", true)
    Place("Sniper A", true)
    
    WaitForRound(10)
    Upgrade("Sub A", 0, 0, 1, true)     ; 000 -> 001 R13 w/o DC
    
    WaitForRound(11)
    Upgrade("Sub A", 2, 0, 0, true)     ; 001 -> 201 R14 w/o DC
    
    WaitForRound(13)
    Upgrade("Sub A", 0, 0, 1, true)     ; 201 -> 202 R18 w/o DC
    
    WaitForRound(15)
    Place("Farm A", true)               ; R21 w/o DC
    Upgrade("Farm A", 2, 0, 0, true)    ; 000 -> 200 R23 w/o DC
    
    WaitForRound(17)
    Upgrade("Sub A", 0, 0, 1, true)     ; 202 -> 203 r26 w/o DC
    Upgrade("Sniper A", 1, 0, 0, true)  ; 000 -> 100 r27 w/o DC
    Targeting("Sniper A", 3)            ; First -> Strong
    
    WaitForRound(20)
    Place("Farm B", true)               ; R29 w/o DC
    Upgrade("Farm B", 2, 0, 0, true)    ; 000 -> 200 R30 w/o DC

    WaitForRound(23)
    Place("Farm C", true)               ; R32 w/o DC

    WaitForRound(24)
    Upgrade("Dart", 0, 0, 2, true)      ; 000 -> 002 R32 w/o DC
    Upgrade("Sniper A", 0, 1, 0, true)  ; 000 -> 010 R33 w/o DC
    Upgrade("Farm C", 2, 0, 0, true)    ; 000 -> 200 R34 w/o DC

    WaitForRound(25)
    Place("Boat", true)                 ; R34 w/o DC

    WaitForRound(26)
    Upgrade("Boat", 0, 1, 0, true)      ; 000 -> 010 R34 w/o DC
    Upgrade("Boat", 1, 0, 0, true)      ; 010 -> 110 R34 w/o DC

    WaitForRound(27)
    Upgrade("Boat", 1, 1, 0, true)      ; 110 -> 220 R35 w/o DC 

    WaitForRound(28)
    Upgrade("Boat", 0, 1, 0, true)      ; 220 -> 230 R36 w/o DC

    WaitForRound(30)
    Place("Village A", true)            ; R37 w/o DC
    Upgrade("Village A", 0, 0, 2, true) ; 000 -> 002 R37 w/o DC

    WaitForRound(31)
    Upgrade("Farm B", 0, 0, 2, true)    ; 200 -> 202 R39 w/o DC

    WaitForRound(33)
    Upgrade("Farm B", 0, 0, 1, true)    ; 202 -> 203 R39 w/o DC

    WaitForRound(34)
    Upgrade("Farm C", 0, 0, 2, true)    ; 200 -> 202 R41 w/o DC

    WaitForRound(35)
    Upgrade("Farm C", 0, 0, 1, true)    ; 202 -> 203 R41 w/o DC
    Upgrade("Farm A", 0, 0, 2, true)    ; 200 -> 202 R41 w/o DC

    WaitForRound(37)
    Place("Sub B", true)                ; R42 w/o DC
    Upgrade("Sub B", 2, 0, 3, true)     ; 000 -> 203 R42 w/o DC
    
    WaitForRound(39)
    Place("Druid A", true)              ; R43 w/o DC
    Upgrade("Druid A", 0, 3, 0, true)   ; 000 -> 030 R43 w/o DC
    Upgrade("Druid A", 1, 0, 0, true)   ; 030 -> 130 R43 w/o DC
    Upgrade("Farm A", 0, 0, 1, true)    ; 202 -> 203 R44 w/o DC

    WaitForRound(44)                    ; R40 w/DC
    Place("Druid B", true)              ; R45 w/o DC
    Upgrade("Druid B", 0, 3, 0, true)   ; 000 -> 030 R45 w/o DC
    Upgrade("Druid B", 1, 0, 0, true)   ; 030 -> 130 R45 w/o DC

    WaitForRound(46)                    ; R41 w/DC
    Place("Druid C", true)              ; R46 w/o DC
    Upgrade("Druid C", 0, 3, 0, true)   ; 000 -> 030 R46 w/o DC
    Upgrade("Druid C", 1, 0, 0, true)   ; 030 -> 130 R46 w/o DC
    Place("Ninja", true)                ; R46 w/o DC
    Place("Druid D", true)              ; R46 w/o DC
    Upgrade("Druid D", 0, 3, 0, true)   ; 000 -> 030 R47 w/o DC
    Upgrade("Druid D", 1, 0, 0, true)   ; 030 -> 130 R47 w/o DC

    WaitForRound(47)                    ; R43 w/DC
    Place("Village B", true)            ; R47 w/o DC
    Upgrade("Village B", 0, 0, 2, true) ; 000 -> 002 R4 w/o DC

    WaitForRound(48)                    ; R44 w/DC
    Place("Sniper B", true)             ; R48 w/o DC
    Upgrade("Sniper B", 0, 3, 2, true)  ; 000 -> 032 R48 w/o DC

    WaitForRound(50)                    ; R47 w/DC                   
    Upgrade("Village A", 0, 0, 1, true) ; 002 -> 003 R50 w/o DC

    WaitForRound(51)                    ; R50 w/DC
    Upgrade("Village A", 0, 0, 1, true) ; 003 -> 004 R52 w/o DC
    Upgrade("Village A", 2, 0, 0, true) ; 004 -> 204 R52 w/o DC

    WaitForRound(54)                    ; R51 w/DC
    Upgrade("Boat", 0, 1, 0, true)      ; 230 -> 240 R55 w/o DC
    Upgrade("Sub A", 0, 0, 1, true)     ; 203 -> 204 R56 w/o DC
    Upgrade("Sniper B", 0, 1, 0, true)  ; 032 -> 042 R57 w/o DC

    WaitForRound(58)                    ; R52 w/DC
    Upgrade("Village B", 0, 2, 0, true) ; 002 -> 022 R58 w/o DC

    Place("Alch A", true)               ; R58 w/o DC
    Upgrade("Alch A", 3, 2, 0, true)    ; 000 -> 320 R58 w/o DC
    
    WaitForRound(61)
    Ability("sniper", "1", "4")

    WaitForRound(62)                    ; R56 w/DC
    Upgrade("Sniper B", 0, 1, 0, true)  ; 042 -> 052 R62 w/o DC
    
    WaitForRound(63)                    ; R58 w/DC
    Upgrade("Alch A", 1, 0, 0, true)    ; 320 -> 420 R63 w/o DC

    WaitForRound(64)                    ; R59 w/DC
    Place("Sniper C", true)             ; R64 w/o DC
    Targeting("Sniper C", 4)            ; First -> Elite
    Upgrade("Sniper C", 2, 0, 3, true)  ; 000 -> 203 R64 w/o DC
    
    WaitForRound(65)
    Ability("sniper", "1", "4")
    Upgrade("Sniper C", 0, 0, 1, true)  ; 203 -> 204 R65 w/o DC

    WaitForRound(67)                    ; R62 w/DC
    Ability("sniper", "1", "4")         ; R67 w/o DC
    Upgrade("Farm A", 0, 0, 1, true)    ; 203 -> 204 R67 w/o DC

    WaitForRound(70)                    ; R65 w/DC
    Sleep(5000)
    Ability("sniper", "1", "4")         ; R70 w/o DC
    Upgrade("Farm B", 0, 0, 1, true)    ; 203 -> 204 R70 w/o DC

    WaitForRound(71)
    Ability("sniper", "1", "4")
    
    WaitForRound(72)                    ; R68 w/DC
    Upgrade("Farm C", 0, 0, 1, true)    ; 203 -> 204 R72 w/o DC

    WaitForRound(73)                    ; R70 w/DC
    Ability("sniper", "1", "4")         ; R73 w/o DC
    Upgrade("Sniper C", 0, 0, 1, true)  ; 204 -> 205 R74 w/o DC
    Ability("sniper", "1", "4")
    Place("Ace", true)                  ; R74 w/o DC
    Upgrade("Ace", 0, 0, 3, true)       ; 000 -> 003 R74 w/o DC
    Upgrade("Ace", 2, 0, 0, true)       ; 003 -> 203 R74 w/o DC
    Ability("sniper", "1", "4")

    WaitForRound(74)
    Ability("sniper", "1", "4")

    WaitForRound(75)
    Ability("sniper", "1", "4")         ; R75 w/o DC
    
    WaitForRound(77)
    Ability("sniper", "1", "4")
    Upgrade("Ace", 0, 0, 1, true)       ; 203 -> 204 R77 w/o DC
    Ability("sniper", "1", "4")
    
    WaitForRound(78)
    Ability("sniper", "1", "4")         ; R78 w/o DC
    Place("Alch B", true)               ; R78 w/o DC
    Upgrade("Alch B", 4, 2, 0, true)    ; 000 -> 420 R78 w/o DC
    Ability("sniper", "1", "4")
    
    WaitForRound(79)
    Ability("sniper", "1", "4")         ; R79 w/o DC

    WaitForRound(80)
    Sell("Farm A")
    Sell("Farm B")
    Sell("Farm C")
    Upgrade("Ace", 0, 0, 1, true)       ; 204 -> 205
    Ability("sniper", "1", "4")
    Upgrade("Village B", 0, 1, 0, true) ; 022 -> 032
    Ability("sniper", "1", "4")

    WaitForRound(81)
    Ability("sniper", "1", "4")

    WaitForRound(82)
    Ability("sniper", "1", "4")
    
    WaitForRound(83)
    Ability("sniper", "1", "4")

    WaitForRound(84)
    Ability("sniper", "1", "4")
    Upgrade("Druid A", 0, 2, 0, true)   ; 130 -> 150
    Ability("sniper", "1", "4")
    Place("Spike", true)
    Ability("sniper", "1", "4")
    Upgrade("Spike", 2, 4, 0, true)     ; 000 -> 240  
    Ability("sniper", "1", "4")

    WaitForRound(85)
    Ability("sniper", "1", "4")

    WaitForRound(86)
    Ability("sniper", "1", "4")

    WaitForRound(87)
    Ability("sniper", "1", "4")

    WaitForRound(88)
    Ability("sniper", "1", "4")
    
    WaitForRound(89)
    Ability("sniper", "1", "4")
    Upgrade("Spike", 0, 1, 0, true)     ; 000 -> 250  
    Ability("sniper", "1", "4")
    
    WaitForRound(90)
    Ability("sniper", "1", "4")

    WaitForRound(91)
    Ability("sniper", "1", "4")
    Upgrade("Spike", 0, 1, 0, true)     ; 000 -> 250  
    Ability("sniper", "1", "4")

    WaitForRound(92)
    Ability("sniper", "1", "4")

    WaitForRound(93)
    Ability("sniper", "1", "4")

    WaitForRound(94)
    Ability("sniper", "1", "4")

    WaitForRound(95)
    Upgrade("Alch B", 1, 0, 0, true)    ; 420 -> 520
}
