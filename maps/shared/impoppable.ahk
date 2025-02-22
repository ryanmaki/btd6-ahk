IntermediateImpoppable() {
    Place("DartA", true)
    Place("DruidA", true)

    StartGame()

    Place("DruidB", true)
    Place("Hero", true)
    
    Place("SniperA", true)
    Targeting("SniperA", 3)                     ; first -> strong
    Place("SniperB", true)
    
    Place("FarmA", true)
    UpdateMouseRest("FarmA")

    Upgrade("SniperA", 1,0,2, true)             ; 000 -> 102
    Upgrade("SniperB", 0,2,0, true)             ; 000 -> 020
    
    Upgrade("FarmA", 2,0,0, true)               ; 000 -> 200
    
    WaitForRound(27)
    Sell("SniperA")
    Upgrade("DruidA", 0,3,0, true)              ; 000 -> 030
    Upgrade("DruidA", 1,0,0, true)              ; 030 -> 130
    
    Place("FarmB", true)
    UpdateMouseRest("FarmA","FarmB")
    Upgrade("FarmB", 2,0,0, true)               ; 000 -> 200
    Targeting("SniperB", 0, true)               ; camo prio
    Upgrade("SniperB", 0,0,2, true)             ; 020 -> 022
    
    Place("FarmC", true)
    UpdateMouseRest("FarmA","FarmB","FarmC")    
    Upgrade("FarmC", 2,0,0, true)               ; 000 -> 200
    
    Upgrade("DruidB", 1,3,0, true)              ; 000 -> 130
    
    Place("VillageA", true)
    Upgrade("VillageA", 1,0,2, true)            ; 000 -> 102
    
    Place("AceA", true)
    Upgrade("AceA", 0,0,3, true)                ; 000 -> 003
    Upgrade("AceA", 2,0,0, true)                ; 003 -> 203
    
    Place("VillageB", true)
    Upgrade("VillageB", 0,2,2, true)            ; 000 -> 022
    
    Upgrade("FarmA", 0,0,3, true)               ; 200 -> 203
    UpdateMouseRest("FarmB","FarmC")    
    Upgrade("FarmB", 0,0,3, true)               ; 200 -> 203
    UpdateMouseRest("FarmC")    
    Upgrade("FarmC", 0,0,3, true)               ; 200 -> 203
    
    Place("AceB", true)
    Upgrade("AceB", 0,0,3, true)                ; 000 -> 003
    Upgrade("AceB", 2,0,0, true)                ; 003 -> 203
    
    Upgrade("VillageA", 0,0,2, true)            ; 102 -> 104
    Sell("SniperB")

    Upgrade("VillageA", 1,0,0, true)            ; 104 -> 204
    
    Place("AlchA", true)
    Upgrade("AlchA", 3,0,1, true)               ; 000 -> 301
    
    Upgrade("AceA", 0,0,1, true)                ; 203 -> 204
    
    Upgrade("FarmA", 0,0,1, true)               ; 203 -> 204
    Upgrade("FarmB", 0,0,1, true)               ; 203 -> 204
    Upgrade("FarmC", 0,0,1, true)               ; 203 -> 204
    
    Upgrade("AceB", 0,0,1, true)                ; 203 -> 204
    
    Upgrade("AlchA", 1,0,0, true)               ; 301 -> 401
    
    Place("AlchB", true)
    Upgrade("AlchB", 4,0,1, true)               ; 000 -> 401

    WaitForRound(80)
    Sell("FarmA")
    Sell("FarmB")
    Upgrade("AceA", 0,0,1, true)                ; 204 -> 205
    
    Upgrade("VillageB", 0,1,0, true)            ; 022 -> 032
    
    Upgrade("DruidA", 0,2,0, true)              ; 130 -> 150
    
    Sell("FarmC")
    Upgrade("AlchA", 1,0,0, true)               ; 401 -> 501
}