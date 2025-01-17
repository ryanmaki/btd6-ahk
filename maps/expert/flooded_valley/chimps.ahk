FloodedValleyChimps() {
    global TS := Map(
        "Sub A", ["sub", [1066, 884]],
        "Sub B", ["sub", [939, 177]],
        "Pat", ["hero", [1037, 701]],
        "Boat A", ["boat", [1012, 832]],
        "Merm A", ["mermonkey", [1068, 775]],
        "Sniper A", ["sniper", [593, 772]],
        "Engineer A", ["engineer", [757, 619]],
        "Ice A", ["ice", [1031, 667]],
        "Village A", ["village", [1168, 755]],
        "Merm B", ["mermonkey", [1167, 666]],
        "Alch A", ["alch", [1148, 601]],
        "Ninja A", ["ninja", [936, 744]],
    )
   

    Place("Sub A", true)

    StartGame()

    Place("Sub B", true)

    WaitForRound(10)
    Place("Pat", true)

    WaitForRound(13)
    Place("Boat A", true)

    WaitForRound(15)
    Upgrade("Sub A", 0, 0, 1, true)       ; 000 -> 001
    Sleep(3000)
    Ability("Pat", 1, 1)
    Upgrade("Sub A", 0, 1, 0, true)       ; 000 -> 011
    
    WaitForRound(18)
    Upgrade("Boat A", 0, 0, 2, true)       ; 000 -> 002
    Upgrade("Boat A", 2, 0, 0, true)       ; 002 -> 202

    WaitForRound(25)
    Upgrade("Sub A", 0, 1, 0, true)       ; 011 -> 021

    WaitForRound(31)
    Ability("Pat", 1, 1)
    Upgrade("Boat A", 1, 0, 0, true)       ; 202 -> 302

    WaitForRound(36)
    Place("Merm A", true)
    Upgrade("Merm A", 3, 0, 2, true)       ; 000 -> 302

    WaitForRound(39)
    Upgrade("Merm A", 1, 0, 0, true)       ; 302 -> 402

    WaitForRound(40, 2000)
    Ability("Pat", 1, 1)

    WaitForRound(46)
    Upgrade("Boat A", 1, 0, 0, true)       ; 302 -> 402

    WaitForRound(47)
    Place("Sniper A", true)
    Upgrade("Sniper A", 1, 2, 0, true)
    Targeting("Sniper A", 3, true)         ; First -> Strong + Camo Prio

    WaitForRound(48)
    Place("Engineer A", true)
    Upgrade("Engineer A", 0, 3, 0, true)   ; 000 -> 030
    Aim("Engineer A", 917, 857)
    Upgrade("Engineer A", 0, 0, 2, true)   ; 030 -> 032

    WaitForRound(54)
    Ability("Pat", 1, 1)

    WaitForRound(61)
    Ability("Pat", 1, 1)
    Upgrade("Boat A", 1, 0, 0, true)       ; 402 -> 502
    
    WaitForRound(63, 1000)
    Ability("Pat", 1, 1)

    WaitForRound(76)
    Ability("Pat", 1, 1)

    WaitForRound(78, 2000)
    Ability("Pat", 1, 1)
    Upgrade("Merm A", 1, 0, 0, true)       ; 402 -> 502
    Place("Ice A", true)
    Upgrade("Ice A", 0, 3, 1, true)        ; 000 -> 031
    Place("Village A", true)
    Upgrade("Village A", 2, 3, 0, true)    ; 000 -> 230

    WaitForRound(82)
    Place("Merm B", true)
    Upgrade("Merm B", 0, 0, 4, true)       ; 000 -> 004
    Upgrade("Merm B", 2, 0, 0, true)       ; 000 -> 204
    Aim("Merm B", 1068, 775)

    WaitForRound(84)
    Place("Alch A", true)
    Upgrade("Alch A", 3, 2, 0, true)       ; 000 -> 320
    Upgrade("Alch A", 1, 0, 0, true)       ; 320 -> 420

    WaitForRound(88)
    Place("Ninja A", true)
    Upgrade("Ninja A", 1, 0, 4, true)      ; 000 -> 104

    WaitForRound(94, 2000)
    Ability("Pat", 1, 1)

    WaitForRound(96, 7000)
    Ability("Pat", 1, 1)

    WaitForRound(97, 5000)
    Ability("Pat", 1, 2)

    WaitForRound(98, 3500)
    Ability("Pat", 1, 1)
    Upgrade("Ninja A", 0, 0, 1, true)      ; 104 -> 105

}