WorkshopChimps(){
    global TS := Map(
        "Dart A", ["dart", [224, 622]],
        "Dart B", ["dart", [603, 502]],
        "Dart C", ["dart", [668, 502]],
        "Dart D", ["dart", [159, 622]],
        "Druid A", ["druid", [942, 625]],
        "Spike A", ["spike", [1598, 715]],
        "Gwen", ["hero", [1019, 499]],
        "Village A", ["village", [1413, 688]],
        "Alch A", ["alch", [1464, 622]],
        "Spike B", ["spike", [1589, 640]],
        "Village B", ["village", [1205, 421]],
        "Tack A", ["tack", [1023, 438]],
        "Alch B", ["alch", [1023, 379]],
        "Ice A", ["ice", [1184, 343]],
        "Glue A", ["glue", [1184, 287]],
        "Mortar A", ["mortar", [1329, 899]],
        "Boomer A", ["boomer", [1388, 347]],
        "Boomer B", ["boomer", [1277, 362]],
        "Alch C", ["alch", [1184, 231]],
    )
    Place("Dart A", true)
    Targeting("Dart A", 1)              ; First -> Last
    Place("Dart B", true)
    Targeting("Dart B", 3)              ; First -> Strong
    Place("Dart C", true)
    StartGame()

    WaitForRound(7)
    Place("Dart D", true)
    Targeting("Dart D", 3)              ; First -> Strong

    WaitForRound(9)
    Place("Druid A", true)

    WaitForRound(14)
    Place("Spike A", true)

    WaitForRound(16)
    Place("Gwen", true)

    WaitForRound(17)
    Upgrade("Spike A", 0, 0, 2, true)   ; 000 -> 002
    Targeting("Spike A", 1)             ; Normal -> Close

    WaitForRound(20)
    Upgrade("Druid A", 1, 0, 0, true)   ; 000 -> 100
    Targeting("Druid A", 3)             ; First -> Strong
    Upgrade("Druid A", 0, 1, 0, true)   ; 100 -> 110

    WaitForRound(25)
    Upgrade("Spike A", 1, 0, 0, true)   ; 002 -> 102
    
    WaitForRound(27)
    Upgrade("Druid A", 1, 2, 0, true)   ; 110 -> 230

    WaitForRound(34)
    Upgrade("Spike A", 0, 0, 1, true)   ; 102 -> 103

    WaitForRound(37)
    Upgrade("Spike A", 0, 0, 1, true)   ; 103 -> 104

    WaitForRound(41)
    Place("Village A", true)
    Upgrade("Village A", 0, 0, 2, true) ; 000 -> 002
    Place("Alch A", true)
    Upgrade("Alch A", 3, 0, 1, true)    ; 000 -> 301

    WaitForRound(44)
    Upgrade("Village A", 2, 0, 0, true) ; 002 -> 202

    WaitForRound(45)
    Upgrade("Alch A", 1, 0, 0, true)    ; 301 -> 401

    WaitForRound(47)
    Place("Spike B", true)
    Upgrade("Spike B", 3, 2, 0, true)   ; 000 -> 320

    WaitForRound(52)
    Upgrade("Spike B", 1, 0, 0, true)   ; 320 -> 420

    WaitForRound(54)
    Place("Village B", true)
    Upgrade("Village B", 0, 0, 2, true) ; 000 -> 002
    Place("Tack A", true)
    Upgrade("Tack A", 2, 0, 4, true)    ; 000 -> 204

    WaitForRound(57)
    Place("Alch B", true)
    Upgrade("Alch B", 3, 2, 0, true)    ; 000 -> 320

    WaitForRound(59)
    Upgrade("Village B", 2, 0, 0, true) ; 002 -> 202
    Place("Ice A", true)
    Upgrade("Ice A", 4, 1, 0, true)     ; 000 -> 410
    Aim("Gwen", 1103, 553)

    WaitForRound(63)
    Ability("Gwen", 1, 1)

    WaitForRound(71)
    Ability("Gwen", 1, 1)

    WaitForRound(75)
    Upgrade("Tack A", 0, 0, 1, true)    ; 204 -> 205
    Upgrade("Village B", 1, 0, 0, true) ; 202 -> 302

    WaitForRound(76)
    Ability("Gwen", 1, 1)
    Upgrade("Alch B", 1, 0, 0, true)    ; 320 -> 420
    Place("Glue A", true)
    Targeting("Glue A", 3)              ; First -> Strong
    Upgrade("Glue A", 0, 1, 3, true)    ; 000 -> 013

    WaitForRound(84)
    Upgrade("Spike A", 1, 0, 1, true)   ; 104 -> 205

    WaitForRound(86)
    Upgrade("Glue A", 0, 1, 1, true)    ; 013 -> 024

    WaitForRound(88)
    Place("Mortar A", true)
    Aim("Mortar A", 1105, 213)
    Upgrade("Mortar A", 1, 0, 4, true)  ; 000 -> 104

    WaitForRound(97)
    Upgrade("Glue A", 0, 0, 1, true)    ; 024 -> 025

    WaitForRound(98)
    Place("Boomer A", true)
    Targeting("Boomer A", 3)            ; First -> Strong
    Upgrade("Boomer A", 2, 0, 4, true)
    
    Place("Boomer B", true)
    Targeting("Boomer B", 3)            ; First -> Strong
    Upgrade("Boomer B", 2, 0, 4, true)
    
    Place("Alch C", true)
    Upgrade("Alch C", 3, 0, 1, true)    ; 000 -> 301


} 