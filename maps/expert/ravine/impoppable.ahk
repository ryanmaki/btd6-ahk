RavineImpoppable() {
    global mouseRest := [193, 968]
    global TS := Map(
        "Dart A", ["dart", [223, 498]],
        "Dart B", ["dart", [284, 662]],
        "Dart C", ["dart", [742, 796]],
        "Dart D", ["dart", [861, 973]],
        "Ben", ["hero", [1004, 141]],
        "Sniper A", ["sniper", [662, 812]],
        "Sniper B", ["sniper", [1026, 200]],
        "Druid A", ["druid", [1069, 330]],
        "Farm A", ["farm", [110, 989]],
        "Farm B", ["farm", [272, 986]],
        "Druid B", ["druid", [287, 667]],
        "Village A", ["village", [182, 865]],
        "Ace A", ["ace", [290, 753]],
        "Village B", ["village", [301, 864]],
        "Alch A", ["alch", [398, 767]],
        "Farm C", ["farm", [441, 865]],
        "Village C", ["village", [487, 786]],
        "Spike A", ["spike", [591, 813]],
        "Alch B", ["alch", [1077, 431]],
        "Boomer A", ["boomer", [1069, 330]]
    )

    Place("Dart A")
    Targeting("Dart A", 3)
    Place("Dart B")
    Place("Dart C")
    Place("Dart D")
    Targeting("Dart D", 3)

    StartGame()
    
    WaitForRound(11)
    Place("Ben", true)
    
    WaitForRound(12)
    Place("Sniper A", true)
    Targeting("Sniper A", 3)
    
    WaitForRound(14)
    Place("Sniper B", true)
    Targeting("Sniper B", 3)
    
    WaitForRound(15)
    Place("Boomer A", true)

    WaitForRound(16)
    Sell("Dart B")
    Place("Druid B", true)
    Upgrade("Boomer A", 3, 0, 2, true)
    
    WaitForRound(21)
    Upgrade("Druid B", 1, 3, 0, true) 
    
    WaitForRound(26)
    Place("Farm A", true)

    WaitForRound(27)
    Upgrade("Farm A", 2, 0, 0, true)

    WaitForRound(30)
    Place("Farm B", true)

    WaitForRound(32)
    Upgrade("Sniper A", 0, 2, 0, true)
    Targeting("Sniper A", 1)
    Upgrade("Farm B", 2, 0, 0, true)
    
    WaitForRound(35)
    Upgrade("Sniper A", 0, 0, 1, true)
    Upgrade("Sniper B", 1, 0, 0, true)

    WaitForRound(36)
    Upgrade("Sniper A", 0, 0, 1, true)
    Upgrade("Farm A", 0, 0, 3, true)
    
    WaitForRound(39)
    Place("Ace A", true)
    Upgrade("Ace A", 3, 0, 0, true)
    
    WaitForRound(41)
    Sell("Ace A")
    Upgrade("Farm B", 0, 0, 3, true)
    Upgrade("Sniper A", 0, 0, 1, true)
    Upgrade("Sniper B", 1, 0, 2, true)
    Place("Farm C", true)
    global mouseRest := [441, 865]

    WaitForRound(44)
    Upgrade("Farm C", 0, 0, 3, true)

    WaitForRound(46)
    Upgrade("Sniper B", 0, 0, 1, true)
    Upgrade("Farm C", 0, 2, 0, true)
    
    WaitForRound(47)
    Place("Village A", true)
    Upgrade("Village A", 0, 0, 2, true)
    Place("Village B", true)
    Upgrade("Village B", 0, 0, 2, true)
    Place("Ace A", true)
    Upgrade("Ace A", 0, 0, 3, true)
    Upgrade("Ace A", 2, 0, 0, true)
    
    WaitForRound(50)
    Upgrade("Village B", 0, 2, 0, true)
    Place("Alch A", true)
    Upgrade("Alch A", 3, 2, 0, true)
    
    WaitForRound(53)
    Upgrade("Village B", 0, 0, 1, true)
    Upgrade("Village B", 0, 0, 1, true)
    
    WaitForRound(59)
    Sell("Sniper A")
    Sell("Sniper B")
    Sell("Boomer A")
    Upgrade("Ace A", 0, 0, 1, true)
    
    WaitForRound(63)
    Upgrade("Farm C", 0, 0, 1, true)
    
    WaitForRound(65)
    Upgrade("Farm A", 0, 0, 1, true)
    
    WaitForRound(68)
    Upgrade("Farm B", 0, 0, 1, true)
    Upgrade("Alch A", 1, 0, 0, true)
    
    WaitForRound(72)
    Upgrade("Druid B", 0, 2, 0, true)
    
    WaitForRound(78)
    Sell("Village A")
    Sell("Village B")
    Sell("Farm A")
    Sell("Farm B")
    Sell("Farm C")
    Upgrade("Ace A", 0, 0, 1, true)
    Place("Village C", true)
    Upgrade("Village C", 2, 3, 0, true)
    
    WaitForRound(83)
    Sell("Dart C")
    Place("Spike A", true)
    Upgrade("Spike A", 2, 5, 0, true)
    
    WaitForRound(90)
    Upgrade("Alch A", 1, 0, 0, true)
}
