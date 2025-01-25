GeneralHard() {

    Place("DartA", true)
    Place("SniperA", true)
    Targeting("SniperA", 3)
    
    StartGame()

    Place("Hero", true)
    
    Place("FarmA", true)
    UpdateMouseRest("FarmA")
    Upgrade("FarmA", 2, 0, 0, true)         ; 000 -> 200
    
    Place("DruidA", true)           
    
    Place("FarmB", true)
    UpdateMouseRest("FarmA", "FarmB")
    Upgrade("FarmB", 2, 0, 0, true)         ; 000 -> 200
    
    Place("FarmC", true)
    UpdateMouseRest("FarmA", "FarmB", "FarmC")
    Upgrade("FarmC", 2, 0, 0, true)         ; 000 -> 200
    
    Upgrade("SniperA", 1, 0, 0, true)       ; 000 -> 100
    
    Place("FarmD", true)
    UpdateMouseRest("FarmA", "FarmB", "FarmC", "FarmD")
    Upgrade("FarmD", 2, 0, 0, true)         ; 000 -> 200
    
    Upgrade("DartA", 0, 2, 3, true)         ; 000 -> 023
    
    Upgrade("FarmD", 0, 0, 3, true)         ; 200 -> 203
    UpdateMouseRest("FarmA", "FarmB", "FarmC")

    Upgrade("FarmC", 0, 0, 3, true)         ; 200 -> 203
    UpdateMouseRest("FarmA", "FarmB")

    Upgrade("DartA", 0, 0, 1, true)         ; 023 -> 024
    
    Upgrade("FarmB", 0, 0, 3, true)         ; 200 -> 203
    UpdateMouseRest("FarmA")

    Upgrade("SniperA", 0, 0, 3, true)       ; 100 -> 103
    
    Upgrade("FarmA", 0, 0, 3, true)         ; 200 -> 203
    
    Upgrade("DruidA", 0, 3, 0, true)        ; 000 -> 030
    Upgrade("DruidA", 1, 0, 0, true)        ; 030 -> 130
    
    Place("AceA", true)
    Upgrade("AceA", 2, 0, 3, true)          ; 000 -> 203
    
    Place("VillageA", true)
    Upgrade("VillageA", 2, 2, 0, true)      ; 000 -> 220

    Upgrade("SniperA", 1, 0, 1, true)       ; 103 -> 204
    Upgrade("DruidA", 0, 1, 0, true)        ; 130 -> 140
    
    Upgrade("AceA", 0, 0, 1, true)          ; 203 -> 204
}