BloodyPuddlesAlternate() {
    global TS := Map(
        "Ace A", ["ace", [668, 236]],
        "Ace B", ["ace", [988, 505]],
        "Alch A", ["alch", [701, 166]],
        "Alch B", ["alch", [1107, 440]],
        "Ben", ["hero", [375, 277]],
        "Boat A", ["boat", [1135, 141]],
        "Boat B", ["boat", [1140, 112]],
        "Boat C", ["boat", [1170, 184]],
        "Boat D", ["boat", [1226, 123]],
        "Dart A", ["dart", [356, 685]],
        "Dart B", ["dart", [394, 517]],
        "Dart C", ["dart", [1281, 860]],
        "Druid A", ["druid", [835, 197]],
        "Druid B", ["druid", [844, 128]],
        "Druid C", ["druid", [841, 450]],
        "Druid D", ["druid", [1113, 362]],
        "Farm A", ["farm", [994, 393]],
        "Farm B", ["farm", [715, 348]],
        "Farm C", ["farm", [966, 141]],
        "Sniper A", ["sniper", [722, 250]],
        "Sniper B", ["sniper", [828, 390]],
        "Sniper C", ["sniper", [934, 339]],
        "Spike A", ["spike", [950, 171]],
        "Sub A", ["sub", [1008, 934]],
        "Sub B", ["sub", [1213, 177]],
        "Sub C", ["sub", [560, 618]],
        "Village A", ["village", [902, 263]],
        "Village B", ["village", [1020, 271]],
    )

    CheckDoubleCash()

    UpdateMouseRest("Farm A")

    Place("Dart A", true)
    Sleep(200)
    Place("Sub A", true)
    Sleep(200)
    Place("Dart B", true)
    Sleep(200)
    Targeting("Dart B", 3)
    Place("Sub B", true)

    StartGame()

    Place("Ben", true)
    Place("Sniper A", true)
    Upgrade("Sniper A", 1, 0, 0, true)      ; 000 -> 100
    Targeting("Sniper A", 3)                ; first > strong

    WaitForRound(11)
    Upgrade("Sub B", 2, 0, 0, true)         ; 000 > 200  
    Upgrade("Sub B", 0, 0, 1, true)         ; 200 > 201
    Upgrade("Dart A", 0, 0, 2, true)        ; 000 -> 002
    Place("Dart C", true)
    Upgrade("Dart C", 0, 0, 2, true)        ; 000 -> 002
    Upgrade("Sub B", 0, 0, 1, true)         ; 201 -> 202
    Upgrade("Sniper A", 0, 1, 0, true)      ; 100 -> 110
    
    Place("Farm A", true)
    Upgrade("Farm A", 2, 0, 0, true)        ; 000 -> 200
    Upgrade("Sub B", 0, 0, 1, true)         ; 202 -> 203
    Place("Druid A", true)
    Place("Sniper B", true)
    Upgrade("Sniper B", 1, 0, 0, true)      ; 000 -> 100
    Targeting("Sniper B", 3)                ; first > strong

    Place("Farm B", true)
    UpdateMouseRest("Farm A", "Farm B")
    Upgrade("Farm B", 2, 0, 0, true)        ; 000 -> 200

    Place("Village A", true)                
    Upgrade("Village A", 0, 0, 2, true)     ; 000 -> 002
    Upgrade("Druid A", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid A", 1, 0, 0, true)       ; 030 -> 130
    
    Sell("Dart B")
    Place("Druid B", true)
    Upgrade("Druid B", 0, 3, 0, true)       ; 000 -> 030

    Upgrade("Druid B", 1, 0, 0, true)       ; 030 -> 130
    Upgrade("Sniper B", 1, 0, 3, true)      ; 100 > 203
    
    Place("Druid C", true)
    Upgrade("Druid C", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid C", 1, 0, 0, true)       ; 030 -> 130
    Upgrade("Village A", 0, 2, 0, true)     ; 002 -> 022
    Place("Village B", true)
    Upgrade("Village B", 0, 0, 2, true)     ; 000 -> 002
    Place("Druid D", true)
    Upgrade("Druid D", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid D", 1, 0, 0, true)       ; 030 -> 130
    
    Upgrade("Farm A", 0, 0, 3, true)        ; 200 -> 203
    
    UpdateMouseRest("Farm B")
    Upgrade("Farm B", 0, 0, 3, true)        ; 200 -> 203
    UpdateMouseRest("Farm C") 
    
    Place("Farm C", true)
    Upgrade("Farm C", 0, 0, 3, true)        ; 000 -> 003
    Upgrade("Farm C", 0, 2, 0, true)        ; 003 -> 023

    Sell("Sniper A")
    Sleep(300)
    Place("Ace A", true)
    Upgrade("Ace A", 0, 0, 3, true)         ; 000 -> 003
    Upgrade("Ace A", 2, 0, 0, true)         ; 003 -> 203

    Place("Boat A", true)
    Upgrade("Boat A", 0, 0, 3, true)        ; 000 -> 003

    Place("Alch A", true)
    Sleep(300)
    Upgrade("Alch A", 3, 2, 0 , true)       ; 000 -> 320
   
    Upgrade("Boat A", 0, 0, 1, true)        ; 003 -> 004
    Upgrade("Sniper B", 0, 0, 1, true)      ; 203 -> 204

    WaitForRound(60)
    Sell("Dart A")
    Sell("Dart C")
    Sell("Sub A")
    ; Sell("Druid A")
    ; Sell("Sub B")
    ; Sell("Druid B")
    ; Sell("Druid D")
    Sell("Boat A")
    Upgrade("Ace A", 0, 0, 1, true)         ; 203 -> 204
    
    WaitForRound(61)
    Upgrade("Village A", 0, 0, 2, true)     ; 022 -> 024
    
    WaitForRound(65)
    Upgrade("Farm C", 0, 0, 1, true)        ; 023 -> 024
    
    WaitForRound(69)
    Upgrade("Sniper B", 0, 0, 1, true)      ; 204 -> 205
    Upgrade("Farm A", 0, 0, 1, true)        ; 203 -> 204
    Place("Ace B", true)
    Upgrade("Ace B", 2, 0, 4, true)         ; 000 -> 204
    Sell("Druid D")
    Place("Alch B", true)
    Upgrade("Alch B", 4, 2, 0, true)        ; 000 -> 420
    
    
    
    WaitForRound(78)
    Sell("Sniper B")
    Sell("Farm A")
    Sell("Farm C")
    Upgrade("Ace B", 0, 0, 1, true)         ; 204 -> 205
    Upgrade("Alch A", 1, 0, 0, true)        ; 320 -> 420

    WaitForRound(81)
    Upgrade("Druid C", 0, 2, 0, true)       ; 130 -> 150
}
