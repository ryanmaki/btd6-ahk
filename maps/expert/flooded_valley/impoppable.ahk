FloodedValleyImpoppable() {
    global mouseRest := [560, 520]
    global enableWiggle := false
    global TS := Map(
        "Sub A", ["sub", [1000, 760]],
        "Sub B", ["sub", [925, 160]],
        "Ben", ["hero", [108, 171]],
        "Spike A", ["spike", [703, 691]],
        "Village A", ["village", [565, 553]],
        "Village B", ["village", [665, 608]],
        "Alch A", ["alch", [656, 742]],
        "Wizard A", ["wizard", [754, 530]],
        "Alch B", ["alch", [741, 417]],
        "Ace A", ["ace", [530, 653]],
        "Farm A", ["farm", [626, 431]],
        "Farm B", ["farm", [425, 537]],
        "Spike B", ["spike", [703, 691]],
        "Druid A", ["druid", [626, 431]],
        "Farm C", ["farm", [520, 766]],
        "Sniper A", ["sniper", [589, 772]]
    )

    CheckDoubleCash()

    Place("Sub A")
    Place("Sub B")
    
    StartGame()

    WaitForRound(11)
    Place("Ben")
    
    WaitForRound(13)
    Upgrade("Sub A", 0, 0, 1)

    WaitForRound(14)
    Upgrade("Sub A", 0, 1, 0, true)

    WaitForRound(17)
    Upgrade("Sub A", 0, 0, 1, true)

    WaitForRound(20)
    Place("Spike A", true)
    Upgrade("Spike A", 0, 0, 1, true)
    
    WaitForRound(24)
    Upgrade("Sub A", 0, 0, 1, true)

    WaitForRound(25)
    Upgrade("Spike A", 0, 0, 1, true)
    Targeting("Spike A", 1)

    WaitForRound(26)
    Upgrade("Sub A", 0, 1, 0, true)
    
    WaitForRound(27)
    Upgrade("Spike A", 1, 0, 0, true)
    
    WaitForRound(28)
    Upgrade("Spike A", 1, 0, 0, true)
    
    WaitForRound(33)
    Upgrade("Spike A", 1, 0, 0, true)
    
    WaitForRound(36)
    Place("Village A")
    Upgrade("Village A", 0, 0, 2)
        
    WaitForRound(39)
    Place("Village B")
    Upgrade("Village B", 0, 0, 2)
    Place("Alch A")
    Upgrade("Alch A", 3, 0, 0, true)
    
    WaitForRound(40)
    Place("Wizard A")

    WaitForRound(41)
    Sleep(300)
    Upgrade("Wizard A", 1, 0, 3, true)
    
    WaitForRound(43)
    Upgrade("Wizard A", 0, 0, 1, true)

    WaitForRound(45)
    Place("Farm A")
    Upgrade("Farm A", 2, 0, 0)
    Place("Farm B", true)
    Upgrade("Farm B", 2, 0, 0, true)

    WaitForRound(47)
    Upgrade("Farm A", 0, 0, 3, true)
    
    WaitForRound(48)
    Upgrade("Farm B", 0, 0, 3, true)
    
    WaitForRound(50)
    Sell("Sub B")
    Upgrade("Village A", 0, 0, 1, true)

    WaitForRound(51)
    Upgrade("Village A", 0, 0, 1, true)

    WaitForRound(52)
    Place("Alch B", true)
    Upgrade("Alch B", 3, 0, 1, true)

    WaitForRound(53)
    Upgrade("Village A", 2, 0, 0, true)
    
    WaitForRound(54)
    Place("Ace A")
    Upgrade("Ace A", 2, 0, 3, true)

    WaitForRound(55)
    Upgrade("Alch A", 0, 0, 1)

    WaitForRound(60)
    Upgrade("Spike A", 1, 0, 0)

    WaitForRound(62)
    Sleep(1000)
    Sell("Sub A")
    Sell("Spike A")
    Upgrade("Wizard A", 0, 0, 1, true)    
    
    WaitForRound(64)
    Upgrade("Farm A", 0, 0, 1, true )
    
    WaitForRound(69)
    Upgrade("Farm B", 0, 0, 1, true)

    WaitForRound(73)
    Upgrade("Ace A", 0, 0, 1, true)

    WaitForRound(82)
    Upgrade("Ace A", 0, 0, 1, true)

    WaitForRound(83)
    Upgrade("Village B", 0, 2, 0)   
    
    WaitForRound(87)    
    Place("Spike B")
    Upgrade("Spike B", 2, 5, 0, true)

    WaitForRound(88)
    Sell("Farm A")
    Sleep(1000)
    Sell("Farm B")
    Place("Druid A", true)
    Upgrade("Druid A", 1, 5, 0, true)

    WaitForRound(91)
    Place("Sniper A")
    Upgrade("Sniper A", 2, 0, 5)
}
