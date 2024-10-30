GlacialTrailImpoppable() {
    global TS := Map(
        "Ace A", ["ace", [341, 1006]],
        "Alch A", ["alch", [1453, 739]],
        "Alch B", ["alch", [233, 972]],
        "Druid A", ["druid", [240, 549]],
        "Farm A", ["farm", [1552, 246]],
        "Farm B", ["farm", [1560, 106]],
        "Farm C", ["farm", [1393, 77]],
        "Farm D", ["farm", [1231, 82]],
        "Farm E", ["farm", [1250, 237]],
        "Farm F", ["farm", [110, 976]],
        "Farm G", ["farm", [1559, 1007]],
        "Boat A", ["boat", [266, 779]],
        "Sauda", ["hero", [315, 538]],
        "Spike A", ["spike", [1426, 669]],
        "Village A", ["village", [1390, 199]],
        "Village B", ["village", [1401, 301]],
        "Village C", ["village", [248, 893]],
        "Wizard A", ["wizard", [209, 405]],
    )

    Place("Sauda", true)

    StartGame()

    WaitForRound(15)
    Place("Wizard A")
    Upgrade("Wizard A", 1, 2, 0)              ; 000 -> 120
    Aim("Wizard A", 411, 467)

    WaitForRound(20)
    Place("Druid A")

    WaitForRound(24)
    Upgrade("Druid A", 1, 3, 0, true)         ; 000 -> 130

    WaitForRound(32)
    Place("Spike A")
    Upgrade("Spike A", 1, 0, 0)             ; 000 -> 100

    WaitForRound(36)
    Upgrade("Wizard A", 0, 1, 0, true)        ; 120 -> 130
    
    WaitForRound(37)
    Place("Farm A", true)
    UpdateMouseRest("Farm A")               ; hover Farm A
    Upgrade("Farm A", 2, 0, 0, true)        ; 000 -> 200

    WaitForRound(39)
    Place("Farm B", true)
    UpdateMouseRest("Farm A", "Farm B")     ; hover Farm A, B
    Upgrade("Farm B", 2, 0, 0, true)        ; 000 -> 200
    
    WaitForRound(41)
    Place("Farm C", true)
    UpdateMouseRest("Farm A", "Farm B", "Farm C")   ; hover Farm A, B, C
    Sleep(150)
    Upgrade("Farm C", 2, 0, 0, true)        ; 000 -> 200

    WaitForRound(42)
    Place("Alch A", true)
    
    WaitForRound(43)
    Upgrade("Spike A", 2, 0, 0, true)       ; 100 -> 300
    Upgrade("Alch A", 3, 0, 0, true)        ; 000 -> 300

    WaitForRound(47, 3000)
    Sell("Wizard A")
    Place("Wizard A", true)
    Upgrade("Wizard A", 0, 0, 4, true)        ; 000 -> 004
    
    WaitForRound(48)
    Upgrade("Wizard A", 0, 2, 0, true)        ; 004 -> 024
    Place("Village A", true)
    
    WaitForRound(49)
    Upgrade("Village A", 0, 0, 2, true)     ; 000 -> 002
    Upgrade("Farm A", 0, 0, 3, true)        ; 200 -> 203
    UpdateMouseRest("Farm B", "Farm C")     ; hover Farm B, C

    WaitForRound(50)
    Upgrade("Farm B", 0, 0, 3, true)        ; 200 -> 203
    UpdateMouseRest("Farm C")               ; hover Farm C

    Place("Farm D", true)
    UpdateMouseRest("Farm C", "Farm D")     ; hover Farm C, D
    Upgrade("Farm D", 0, 0, 3, true)        ; 000 -> 003
    UpdateMouseRest("Farm C")               ; hover Farm C
    Upgrade("Farm D", 0, 2, 0, true)        ; 003 -> 023
    
    WaitForRound(55)
    Ability("hero", "1", "1")
    Upgrade("Spike A", 1, 0, 2, true)       ; 300 -> 402
    Ability("hero", "1", "2")
    Targeting("Spike A", 3)                 ; Normal -> Smart
    Upgrade("Farm C", 0, 0, 3, true)        ; 200 -> 203
    
    WaitForRound(56)
    UpdateMouseRest("Farm E")               ; hover Farm E
    Place("Farm E", true)
    Upgrade("Farm E", 0, 0, 3, true)        ; 000 -> 003
    
    WaitForRound(58)
    Upgrade("Farm E", 0, 2, 0, true)        ; 003 -> 023
    UpdateMouseRest("Farm F")               ; hover Farm F
    Place("Farm F", true)
    
    WaitForRound(59)
    Sell("Village A")
    Upgrade("Farm F", 0, 2, 3, true)        ; 000 -> 023

    WaitForRound(61)
    Upgrade("Druid A", 0, 1, 0, true)       ; 130 -> 140
    
    WaitForRound(62)
    UpdateMouseRest("Farm G")               ; hover Farm G
    Place("Farm G", true)
    Sleep(6000)
    Ability("hero", "1", "1")
    Upgrade("Farm G", 0, 0, 3, true)        ; 000 -> 003
    Upgrade("Farm G", 0, 2, 0, true)        ; 003 -> 023

    WaitForRound(65)
    Place("Village B", true)
    Upgrade("Village B", 0, 0, 2, true)     ; 000 -> 002
    Place("Village A", true)
    Upgrade("Village A", 0, 0, 3, true)     ; 000 -> 003
    Sell("Village B")
    Upgrade("Village A", 0, 0, 1, true)     ; 003 -> 004

    WaitForRound(68)
    Place("Boat A", true)
    Upgrade("Boat A", 4, 1, 0, true)        ; 000 -> 410
    
    WaitForRound(73)
    Sell("Farm F")
    Sell("Farm G")
    Upgrade("Farm D", 0, 0, 1, true)        ; 023 -> 024
    
    WaitForRound(74)
    Upgrade("Farm C", 0, 0, 1, true)        ; 203 -> 204
    
    WaitForRound(81)
    Sell("Farm A")
    Upgrade("Druid A", 0, 1, 0, true)       ; 140 -> 150
    
    WaitForRound(84)
    Place("Ace A", true)
    Place("Alch B", true)
    Place("Village C", true)
    Upgrade("Ace A", 2, 0, 4, true)         ; 000 -> 204
    Upgrade("Alch B", 4, 2, 0, true)        ; 000 -> 420
    Upgrade("Village C", 2, 2, 0, true)     ; 000 -> 220

    WaitForRound(89)
    Upgrade("Wizard A", 0, 0, 1, true)        ; 024 -> 025

    WaitForRound(93, 4000)
    Sell("Farm A")
    Sell("Farm B")
    Sell("Farm C")
    Sell("Farm D")
    Sell("Farm E")
    Sell("Farm F")
    Sell("Farm G")
    Sell("Village A")

    WaitForRound(95)
    Upgrade("Ace A", 0, 0, 1, true)         ; 204 -> 205
    
    WaitForRound(99)
    Upgrade("Boat A", 1, 1, 0, true)        ; 410 -> 520
}
