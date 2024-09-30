DarkDungeonsImpoppable() {
    global mouseRest := [1021, 652]
    global TS := Map(
        "Dart A", ["dart", [725, 906]],
        "Dart B", ["dart", [244, 818]],
        "Sniper A", ["sniper", [1547, 166]],
        "Dart C", ["dart", [1547, 431]],
        "Dart D", ["dart", [791, 910]],
        "Dart E", ["dart", [298, 379]],
        "Ben", ["hero", [721, 308]],
        "Sub A", ["sub", [1392, 880]],
        "Sniper B", ["sniper", [196, 159]],
        "Druid A", ["druid", [902, 1043]],
        "Farm A", ["farm", [369, 487]],
        "Druid B", ["druid", [1315, 1040]],
        "Druid C", ["druid", [247, 907]],
        "Farm B", ["farm", [599, 485]],
        "Farm C", ["farm", [741, 644]],
        "Village A", ["village", [881, 666]],
        "Farm D", ["farm", [1021, 652]],
        "Druid D", ["druid", [893, 582]],
        "Druid E", ["druid", [899, 517]],
        "Village B", ["village", [770, 629]],
        "Village C", ["village", [989, 570]],
        "Druid F", ["druid", [784, 521]],
        "Ace A", ["ace", [1073, 663]],
        "Alch A", ["alch", [1106, 593]],
        "Farm E", ["farm", [1061, 494]],
        "Spike A", ["spike", [897, 530]],
        "Ace B", ["ace", [1027, 496]],
    )
    CheckDoubleCash()

    Place("Dart A", true)
    Place("Dart B", true)
    Place("Sniper A", true)
    Targeting("Sniper A", 3)
    Place("Dart C", true)
    
    StartGame()

    WaitForRound(7)
    Place("Dart D")
    Targeting("Dart D", 3)

    WaitForRound(9)
    Place("Dart E", true)

    WaitForRound(13)
    Sleep(10000)
    Sell("Dart C")
    RightTrap()
    Place("Ben")

    WaitForRound(14)
    Place("Sub A", true)

    ; WaitForRound(15)
    Place("Sniper B", true)
    Targeting("Sniper B", 3)
    
    ; WaitForRound(16)
    Place("Druid A", true)
    
    ; WaitForRound(19)
    Place("Farm D", true)

    WaitForRound(21)
    RightTrap()
    Place("Druid B", true)

    ; WaitForRound(22)
    Place("Druid C", true)

    ; WaitForRound(23)
    Upgrade("Farm D", 1, 0, 0, true)

    WaitForRound(24)
    LeftTrap()

    ; WaitForRound(25)
    Upgrade("Farm D", 1, 0, 0, true)
    Upgrade("Druid A", 1, 0, 0, true)
    Targeting("Druid A", 3)

    ; WaitForRound(26)
    Upgrade("Sniper A", 1, 0, 0, true)

    WaitForRound(27)
    Upgrade("Sniper B", 1, 0, 0, true)
    Upgrade("Druid A", 0, 2, 0, true)
    LeftTrap()
    RightTrap()

    ; WaitForRound(29)
    Upgrade("Druid A", 0, 1, 0, true)

    ; WaitForRound(31)
    Upgrade("Sniper A", 0, 2, 0, true)  ; 100 > 120
    Targeting("Sniper A", 1)            ; strong first
    Targeting("Sniper A", 1, 2)         ; camo priority
    Upgrade("Sniper B", 0, 2, 0, true)  ; 100 > 120
    Targeting("Sniper B", 1)            ; strong > first
    Targeting("Sniper B", 1, 2)         ; camo priority

    ; WaitForRound(32)
    Upgrade("Dart A", 0, 0, 2, true)    ; 000 > 002
    
    WaitForRound(34)
    Sell("Sub A")
    Sell("Dart D")
    Sell("Dart E")
    Upgrade("Druid B", 0, 3, 0, true)
    Upgrade("Druid C", 0, 3, 0, true)
    Place("Farm C", true)
    global mouseRest := [881, 648]
    Upgrade("Farm C", 1, 0, 0, true)

    WaitForRound(37)
    Upgrade("Farm C", 1, 0, 0, true)
    Sell("Dart B")
    Upgrade("Dart A", 0, 0, 1, true)
    
    WaitForRound(39)
    Upgrade("Dart A", 0, 0, 1, true)
    Upgrade("Dart A", 0, 1, 0, true)

    
    WaitForRound(41)
    Place("Village A", true)
    Upgrade("Village A", 0, 0, 2, true)
    Upgrade("Farm C", 0, 0, 3, true)
    global mouseRest := [1021, 652]
    Upgrade("Dart A", 0, 1, 0, true)      ; 014 > 024
    Upgrade("Druid B", 1, 0, 0, true)
    Upgrade("Druid C", 1, 0, 0, true)

    WaitForRound(43)
    Sleep(500)
    Send(KEYS["play"])
    LeftTrap()
    RightTrap()
    Sleep(3000)
    Send(KEYS["play"])
    Upgrade("Farm D", 0, 0, 3, true)

    WaitForRound(45)
    Place("Druid D", true)
    Upgrade("Druid D", 0, 3, 0, true)
    Place("Druid E", true)
    Upgrade("Druid E", 0, 3, 0, true)
    Upgrade("Druid D", 1, 0, 0, true)
    Upgrade("Druid E", 1, 0, 0, true)
    
    WaitForRound(47)
    Send(KEYS["play"])
    LeftTrap()
    RightTrap()
    Upgrade("Village A", 0, 2, 0, true)
    Send(KEYS["play"])

    WaitForRound(48)
    Sleep(15000)
    Send(KEYS["play"])
    Sell("Farm C")
    Sell("Farm D")
    Place("Village C", true)
    Upgrade("Village C", 0, 0, 2, true)
    Place("Village B", true)
    Upgrade("Village B", 0, 0, 2, true)
    Upgrade("Village A", 0, 0, 1, true)
    Place("Druid F", true)
    Upgrade("Druid F", 0, 3, 0, true)
    Upgrade("Druid F", 1, 0, 0, true)
    Sell("Village B")
    Send(KEYS["play"])
    Place("Ace A", true)
    Upgrade("Ace A", 0, 0, 3, true)
    Upgrade("Ace A", 2, 0, 0, true)
    Recenter("Ace A", 835, 18)
    Upgrade("Village A", 0, 0, 1, true)
    Place("Alch A", true)
    Upgrade("Alch A", 3, 0, 0, true)    
    Place("Farm C", true)
    global mouseRest := [741, 644]
    Upgrade("Farm C", 0, 0, 3, true)
    Upgrade("Farm C", 0, 2, 0, true)
    Sell("Village C")
    Place("Farm E", true)
    global mouseRest := [1061, 494]
    Upgrade("Farm E", 0, 0, 3, true)    
    Upgrade("Farm E", 0, 2, 0, true)    
    
    WaitForRound(55)
    LeftTrap()
    RightTrap()
    Upgrade("Druid F", 0, 1, 0, true)

    WaitForRound(60)
    Sell("Druid A")
    Sell("Druid B")
    Sell("Druid C")
    Sell("Sniper A")
    Sell("Sniper B")
    Sell("Dart A")
    Upgrade("Ace A", 0, 0, 1, true)
    Upgrade("Farm C", 0, 0, 1, true)
    Upgrade("Farm E", 0, 0, 1, true)
    Upgrade("Alch A", 1, 2, 0, true)

    WaitForRound(73)
    Sell("Druid E")
    Sell("Druid D")
    Upgrade("Druid F", 0, 1, 0, true)

    WaitForRound(80)
    Sell("Farm C")
    Sell("Farm E")
    Upgrade("Ace A", 0, 0, 1, true)
    Place("Spike A", true)
    Upgrade("Spike A", 2, 5, 0, true)
    Place("Ace B", true)
    Upgrade("Ace B", 5, 0, 2, true)
    Upgrade("Alch A", 1, 0, 0, true)  ; 420 > 520

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
