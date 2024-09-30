BloodyPuddlesImpoppable() {
    ; Super RNG based. Failed about 25/100 tries. Should improve after getting others up and running
    global mouseRest := [900, 245]
    global TS := Map(
        "Dart A", ["dart", [356, 685]],
        "Sub A", ["sub", [1008, 934]],
        "Dart B", ["dart", [394, 517]],
        "Sub B", ["sub", [1213, 177]],
        "Sniper A", ["sniper", [701, 213]],
        "Sniper B", ["sniper", [823, 141]],
        "Ben", ["hero", [375, 277]],
        "Sub C", ["sub", [560, 618]],
        "Dart C", ["dart", [1281, 860]],
        "Village A", ["village", [859, 215]],
        "Druid A", ["druid", [815, 375]],
        "Village B", ["village", [966, 259]],
        "Alch A", ["alch", [709, 72]],
        "Farm A", ["farm", [966, 86]],
        "Farm B", ["farm", [994, 462]],
        "Druid B", ["druid", [936, 339]],
        "Druid C", ["druid", [1008, 359]],
        "Ace A", ["ace", [668, 143]],
        "Boat A", ["boat", [1138, 147]],
        "Farm C", ["farm", [1288, 333]],
        "Farm D", ["farm", [696, 316]],
        "Village C", ["village", [1054, 328]],
        "Spike A", ["spike", [950, 171]],
    )

    Place("Dart A")
    Sleep(200)
    Place("Sub A")
    Sleep(200)
    Place("Dart B")
    Sleep(200)
    Targeting("Dart B", 3)
    Place("Sub B")

    StartGame()

    WaitForRound(9)
    Place("Sniper A", true)
    Targeting("Sniper A", 3)    ; first > strong

    WaitForRound(11)
    Place("Sniper B")
    Targeting("Sniper B", 3)    ; first > strong

    WaitForRound(13)
    Upgrade("Sub B", 2, 0, 0, true)     ; 000 > 200  
    
    WaitForRound(15)
    Upgrade("Sub B", 0, 0, 1, true)     ; 200 > 201

    WaitForRound(21)
    Place("Ben")

    WaitForRound(22)
    Place("Sub C")
    Upgrade("Sub C", 0, 0, 1, true)     ;000 > 001
    
    WaitForRound(23)
    Upgrade("Sub C", 1, 0, 0, true)     ; 001 > 101
    
    WaitForRound(24)
    Place("Dart C")

    WaitForRound(25)
    Upgrade("Sniper A", 1, 0, 0, true)      ; 000 > 100

    WaitForRound(27)
    Upgrade("Sub B", 0, 0, 1, true)     ; 201 > 202

    WaitForRound(30)
    Place("Farm A", true)
    
    WaitForRound(31)
    Upgrade("Farm A", 1, 0, 0, true)

    WaitForRound(32)
    Upgrade("Farm A", 1, 0, 0, true)
    Upgrade("Dart C", 0, 0, 2, true)
    Upgrade("Sniper A", 0, 1, 0, true)

    WaitForRound(34)
    Upgrade("Sub B", 0, 0, 1, true)

    WaitForRound(35)
    Upgrade("Sniper B", 1, 0, 0, true)

    WaitForRound(36)
    Place("Farm B", true)
    Upgrade("Farm B", 2, 0, 0, true)

    WaitForRound(37)
    Sleep(7500)
    Place("Farm D", true)
    Upgrade("Farm D", 1, 0, 0, true)    ; 000 > 100

    WaitForRound(38)
    Upgrade("Farm D", 1, 0, 0, true)    ; 100 > 200
    Place("Druid A", true)
    Upgrade("Druid A", 0, 3, 0, true)   ; 000 > 030
    
    WaitForRound(41)
    Sell("Dart B")
    Upgrade("Dart A", 0, 0, 2, true)    ; 000 > 002
    Place("Village A", true)
    Upgrade("Village A", 0, 0, 2, true)
    Upgrade("Druid A", 2, 0, 0, true)   ; 030 > 230

    WaitForRound(42)
    Place("Druid B", true)
    Upgrade("Druid B", 1, 1, 0, true)   ; 000 > 110
    Upgrade("Sniper B", 0, 0, 1, true)  ; 100 > 101
    
    WaitForRound(43)
    Place("Village B", true)
    Upgrade("Village B", 0, 0, 2, true)
    Upgrade("Druid B", 0, 2, 0, true)

    WaitForRound(45)
    Upgrade("Village A", 0, 2, 0, true)

    WaitForRound(46)
    Place("Druid C", true)
    Upgrade("Druid C", 1, 3, 0, true)
    Upgrade("Sniper B", 0, 0, 1, true)  ; 101 > 102
    Upgrade("Farm A", 0, 0, 3, true)    
    
    WaitForRound(48)    
    Upgrade("Sniper B", 2, 0, 0, true) ; 102 > 302
    
    WaitForRound(49)
    Upgrade("Farm B", 0, 0, 3, true)
    Upgrade("Farm D", 0, 0, 3, true)

    WaitForRound(51)
    Place("Ace A", true)
    Upgrade("Ace A", 0, 0, 3, true)
    Sell("Sniper A")
    Upgrade("Ace A", 2, 0, 0, true)

    WaitForRound(52)
    Place("Boat A", true)
    Upgrade("Boat A", 0, 0, 3, true)

    WaitForRound(53)
    Place("Alch A")
    Sleep(300)
    Upgrade("Alch A", 3, 0, 1, true)
   
    WaitForRound(55)
    Upgrade("Boat A", 0, 0, 1, true)

    WaitForRound(60)
    Sell("Dart A")
    Sell("Dart C")
    Sell("Sub A")
    Sell("Sub C")
    Sell("Druid A")
    Sell("Sub B")
    Sell("Sniper B")
    Upgrade("Ace A", 0, 0, 1, true) ; 203 > 204

    WaitForRound(62)
    Sell("Druid C")
    Place("Village C")
    Upgrade("Village C", 0, 0, 2, true)
    Upgrade("Village B", 0, 0, 1, true) ; 002 > 003
    
    WaitForRound(63)
    Upgrade("Village B", 2, 0, 0, true) ; 003 > 203
    Sell("Village C")
    Sell("Boat A")
    Upgrade("Village B", 0, 0, 1, true) ; 203 > 204
    Place("Farm C", true)
    Upgrade("Farm C", 0, 2, 3, true)

    WaitForRound(65)
    Upgrade("Farm C", 0, 0, 1, true)

    WaitForRound(69)
    Upgrade("Farm A", 0, 0, 1, true)

    WaitForRound(71)
    Upgrade("Farm B", 0, 0, 1, true)
    
    WaitForRound(72)
    Place("Boat A", true)
    Upgrade("Boat A", 0, 0, 4, true)

    WaitForRound(73)
    Place("Sniper B")
    Upgrade("Sniper B", 2, 0, 4, true)

    WaitForRound(75)
    Upgrade("Sniper B", 0, 0, 1, true)

    WaitForRound(78)
    Sleep(5000)
    Sell("Farm A")
    Sell("Farm B")
    Sell("Farm C")
    Sell("Boat A")
    Upgrade("Ace A", 0, 0, 1, true)     ; 204 > 205
    Upgrade("Alch A", 1, 0, 0, true)    ; 301 > 401

    WaitForRound(81)
    Upgrade("Druid B", 0, 2, 0, true)     ; 130 > 150

    WaitForRound(87)
    Place("Spike A")
    Upgrade("Spike A", 2, 5, 0)     ; 000 > 250

    WaitForRound(93)
    Upgrade("Alch A", 1, 0, 0)      ; 401 > 501
}
