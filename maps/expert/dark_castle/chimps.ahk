DarkCastleChimps() {
    global TS := Map(
        "Obyn", ["hero", [865, 447]],
        "Dart A", ["dart", [795, 657]],
        "Dart B", ["dart", [730, 657]],
        "Sub A", ["sub", [1083, 690]],
        "Sub B", ["sub", [1086, 398]],
        "Alch A", ["alch", [1010, 657]],
        "Alch B", ["alch", [666, 387]],
        "Alch C", ["alch", [711, 346]],
        "Druid A", ["druid", [715, 433]],
        "Druid B", ["druid", [789, 447]],
        "Druid C", ["druid", [941, 448]],
        "Druid D", ["druid", [766, 384]],
        "Druid E", ["druid", [842, 384]],
        "Druid F", ["druid", [918, 385]],
        "Spike", ["spike", [1003, 403]],
        "Village", ["village", [869, 303]]
    )

    Place("Dart A")
    Place("Sub A")

    StartGame()

    WaitForRound(7)
    Place("Dart B", true)
    Targeting("Dart B", 3)             ; First -> Strong
    Targeting("Dart A", 3)             ; First -> Strong

    WaitForRound(10)
    Place("Obyn", true)

    WaitForRound(11)
    Upgrade("Sub A", 1, 0, 0, true)     ; 000 -> 100

    WaitForRound(14)
    Upgrade("Sub A", 1, 0, 0, true)      ; 100 -> 200

    WaitForRound(15)
    Upgrade("Sub A", 0, 0, 1, true)     ; 200 -> 201

    WaitForRound(19)
    Upgrade("Sub A", 0, 0, 1, true)     ; 201 -> 202

    WaitForRound(20)
    Upgrade("Dart A", 0, 0, 2, true)    ; 000 -> 002

    WaitForRound(25)
    Upgrade("Sub A", 0, 0, 1, true)      ; 202 -> 203

    WaitForRound(27)
    Place("Alch A", true)

    WaitForRound(28)
    Upgrade("Alch A", 2, 0, 0, true)    ; 000 -> 200

    WaitForRound(32)
    Upgrade("Alch A", 1, 0, 0, true)    ; 200 -> 300

    WaitForRound(33)
    Upgrade("Alch A", 0, 2, 0, true)    ; 300 -> 320

    WaitForRound(37)
    Upgrade("Alch A", 1, 0, 0, true)    ; 320 -> 420

    WaitForRound(39)
    Place("Druid A", true)
    Place("Druid B", true)
    Place("Druid C", true)
    Place("Druid D", true)
    Place("Druid E", true)
    Place("Druid F", true)
    
    WaitForRound(41)
    Place("Village", true)
    Upgrade("Village", 2, 0, 0, true)   ; 000 -> 200

    WaitForRound(42)
    Upgrade("Druid A", 0, 1, 3, true)   ; 000 -> 013
    Upgrade("Druid B", 0, 1, 3, true)   ; 000 -> 013
    Upgrade("Druid C", 0, 1, 3, true)   ; 000 -> 013
    Upgrade("Druid D", 0, 1, 3, true)   ; 000 -> 013
    Upgrade("Druid E", 0, 1, 3, true)   ; 000 -> 013
    Upgrade("Druid F", 0, 1, 3, true)   ; 000 -> 013
    
    WaitForRound(47)
    Place("Alch B", true)
    Upgrade("Alch B", 3, 2, 0, true)    ; 000 -> 320
    
    WaitForRound(49)
    Upgrade("Druid A", 0, 0, 1, true)   ; 013 -> 014
    Upgrade("Druid D", 0, 0, 1, true)   ; 013 -> 014
    Upgrade("Druid B", 0, 0, 1, true)   ; 013 -> 014
    Upgrade("Druid C", 0, 0, 1, true)   ; 013 -> 014
    Upgrade("Druid E", 0, 0, 1, true)   ; 013 -> 014

    WaitForRound(54)
    Aim("Obyn", 1008, 552)
    Ability("Obyn", "1", "2")
    Upgrade("Druid F", 0, 0, 1, true)   ; 013 -> 014
    

    WaitForRound(56)
    Upgrade("Alch B", 1, 0, 0, true)    ; 320 -> 420
    
    WaitForRound(62)
    Place("Alch C", true)
    Upgrade("Alch C", 3, 2, 0, true)    ; 000 -> 320
    
    WaitForRound(81)
    Upgrade("Druid A", 0, 0, 1, true)   ; 014 -> 015

    WaitForRound(84)
    Upgrade("Village", 0, 3, 0, true)   ; 200 -> 230

    WaitForRound(86)
    Place("Spike", true)
    Upgrade("Spike", 0, 2, 4, true)     ; 000 -> 024
    Targeting("Spike", 1)               ; Normal -> Close

    WaitForRound(87)
    Upgrade("Alch C", 1, 0, 0, true)    ; 320 -> 420

    WaitForRound(96)
    Upgrade("Spike", 0, 0, 1, true)     ; 024 -> 025

    WaitForRound(98)
    Place("Sub B", true)
    Upgrade("Sub B", 2, 4, 0, true)     ; 000 -> 240
}
