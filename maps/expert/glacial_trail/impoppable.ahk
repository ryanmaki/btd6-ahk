GlacialTrailImpoppable() {
    global TS := Map(
        "Sauda", ["hero", [312, 539]],
        "Wizard", ["wizard", [209, 405]],
        "Druid", ["druid", [238, 554]],
        "Spike A", ["spike", [1426, 669]],
        "Alch", ["alch", [1453, 739]],
        "Farm", ["farm", [1559, 1003]],
        "Mortar", ["mortar", [244, 129]],
        "Spike B", ["spike", [1159, 574]]
    )

    Place("Sauda")

    StartGame()

    WaitForRound(15)
    Place("Wizard")
    Upgrade("Wizard", 1, 2, 0)          ; 000 -> 120
    Aim("Wizard", 411, 467)

    WaitForRound(20)
    Place("Druid")

    WaitForRound(24)
    Upgrade("Druid", 1, 3, 0, true)     ; 000 -> 130

    WaitForRound(32)
    Place("Spike A")
    Upgrade("Spike A", 1, 0, 2)         ; 000 -> 102
    Targeting("Spike A", 3)             ; Normal -> Smart

    WaitForRound(36)
    Upgrade("Wizard", 0, 1, 0, true)    ; 120 -> 130
    
    WaitForRound(39)
    Upgrade("Spike A", 2, 0, 0, true)   ; 102 -> 302

    WaitForRound(42)
    Place("Alch", true)
    Upgrade("Alch", 3, 0, 1, true)      ; 000 -> 301

    WaitForRound(45)
    Place("Farm", true)
    Upgrade("Farm", 0, 0, 3, true)      ; 000 -> 003

    WaitForRound(46)
    Upgrade("Farm", 0, 2, 0, true)      ; 003 -> 023

    WaitForRound(50)
    Place("Mortar", true)
    Upgrade("Mortar", 0, 2, 3, true)          ; 000 -> 023
    Aim("Mortar", 209, 406)

    WaitForRound(53)
    Upgrade("Spike A", 1, 0, 0, true)         ; 302 -> 402
    
    WaitForRound(55)
    Upgrade("Druid", 0, 1, 0, true)           ; 130 -> 140

    WaitForRound(74)
    Upgrade("Druid", 0, 1, 0, true)     ; 140 -> 150

    WaitForRound(84)
    Place("Spike B", true)
    Upgrade("Spike B", 2, 4, 0, true)         ; 000 -> 240

    WaitForRound(87)
    Upgrade("Spike B", 0, 1, 0, true)         ; 240 -> 250

    WaitForRound(98)
    Upgrade("Wizard", 0, 2, 0, true)    ; 130 -> 150
}
