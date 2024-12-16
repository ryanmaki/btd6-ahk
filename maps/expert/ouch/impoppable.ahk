OuchImpoppable() {
    global TS := Map(
        "Ace A", ["ace", [1536, 973]],
        "Alch A", ["alch", [1173, 1028]],
        "Alch B", ["alch", [1608, 1051]],
        "Ben", ["hero", [329, 673]],
        "Boat A", ["boat", [728, 467]],
        "Dart A", ["dart", [562, 326]],
        "Druid A", ["druid", [1462, 781]],
        "Druid B", ["druid", [1505, 836]],
        "Druid C", ["druid", [1404, 892]],
        "Druid D", ["druid", [1479, 898]],
        "Farm A", ["farm", [1181, 789]],
        "Farm B", ["farm", [1343, 789]],
        "Farm C", ["farm", [1168, 930]],
        "Ninja A", ["ninja", [666, 757]],
        "Spike A", ["spike", [1343, 789]],
        "Sniper A", ["sniper", [1127, 117]],
        "Sniper B", ["sniper", [1281, 987]],
        "Sniper C", ["sniper", [1339, 1035]],
        "Sub A", ["sub", [977, 612]],
        "Sub B", ["sub", [981, 546]],
        "Village A", ["village", [1309, 911]],
        "Village B", ["village", [1401, 976]],
    )
    
    Place("Dart A", true)
    Place("Sub A", true)
    
    StartGame()
    
    Place("Ben", true)
    Place("Sniper A", true)
    
    WaitForRound(10)
    Upgrade("Sub A", 0, 0, 1, true)         ; 000 -> 001
    
    WaitForRound(11)
    Upgrade("Sub A", 2, 0, 0, true)         ; 001 -> 201
    
    WaitForRound(13)
    Upgrade("Sub A", 0, 0, 1, true)         ; 201 -> 202
    
    WaitForRound(15)
    Place("Farm A", true)            
    UpdateMouseRest("Farm A")               ; Hover Farm A   
    Upgrade("Farm A", 1, 0, 0, true)        ; 000 -> 100
    Upgrade("Dart A", 0, 0, 2, true)        ; 000 -> 002
    Upgrade("Farm A", 1, 0, 0, true)        ; 100 -> 200
    
    WaitForRound(17)
    Upgrade("Sub A", 0, 0, 1, true)         ; 202 -> 203
    Upgrade("Sniper A", 1, 0, 0, true)      ; 000 -> 100
    Targeting("Sniper A", 3)                ; First -> Strong
    
    WaitForRound(20)
    Place("Farm B", true)               
    UpdateMouseRest("Farm A", "Farm B")     ; Hover Farm A, B
    Upgrade("Farm B", 2, 0, 0, true)        ; 000 -> 200

    WaitForRound(23)
    Place("Farm C", true)               
    UpdateMouseRest("Farm A", "Farm B", "Farm C")   ; Hover Farm A, B, C

    WaitForRound(24)
    Upgrade("Sniper A", 0, 1, 0, true)      ; 000 -> 010
    Upgrade("Farm C", 2, 0, 0, true)        ; 000 -> 200

    WaitForRound(25)
    Place("Boat A", true)                 

    WaitForRound(26)
    Upgrade("Boat A", 0, 1, 0, true)        ; 000 -> 010
    Upgrade("Boat A", 1, 0, 0, true)        ; 010 -> 110

    WaitForRound(27)
    Upgrade("Boat A", 0, 2, 0, true)        ; 110 -> 130 

    WaitForRound(28)
    Upgrade("Boat A", 1, 0, 0, true)        ; 130 -> 230

    WaitForRound(30)
    Place("Village A", true)            
    Upgrade("Village A", 0, 0, 2, true)     ; 000 -> 002

    WaitForRound(31)
    Upgrade("Farm B", 0, 0, 3, true)        ; 200 -> 203
    UpdateMouseRest("Farm A", "Farm C")     ; Hover Farm A, C

    WaitForRound(34)
    Upgrade("Farm C", 0, 0, 3, true)        ; 200 -> 203
    UpdateMouseRest("Farm A")               ; Hover Farm A
    
    WaitForRound(37)
    Place("Sub B", true)                
    Upgrade("Sub B", 2, 0, 3, true)         ; 000 -> 203
    
    WaitForRound(39)
    Place("Druid A", true)              
    Upgrade("Druid A", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid A", 1, 0, 0, true)       ; 030 -> 130
    Upgrade("Farm A", 0, 0, 3, true)        ; 200 -> 203

    WaitForRound(44)                        
    Place("Druid B", true)              
    Upgrade("Druid B", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid B", 1, 0, 0, true)       ; 030 -> 130

    WaitForRound(46)                        
    Place("Druid C", true)              
    Upgrade("Druid C", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid C", 1, 0, 0, true)       ; 030 -> 130
    Place("Ninja A", true)                
    Place("Druid D", true)              
    Upgrade("Druid D", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid D", 1, 0, 0, true)       ; 030 -> 130

    WaitForRound(47)
    Place("Village B", true)            
    Upgrade("Village B", 0, 0, 2, true)     ; 000 -> 002

    WaitForRound(48)                        
    Place("Sniper B", true)             
    Upgrade("Sniper B", 0, 3, 2, true)      ; 000 -> 032

    WaitForRound(50)                                           
    Upgrade("Village A", 0, 0, 1, true)     ; 002 -> 003

    WaitForRound(51)                        
    Upgrade("Village A", 0, 0, 1, true)     ; 003 -> 004
    Upgrade("Village A", 2, 0, 0, true)     ; 004 -> 204

    WaitForRound(54)                        
    Upgrade("Boat A", 0, 1, 0, true)        ; 230 -> 240
    Upgrade("Sub A", 0, 0, 1, true)         ; 203 -> 204
    Upgrade("Sniper B", 0, 1, 0, true)      ; 032 -> 042
    UpdateMouseRest("Sniper B")             ; Hover Sniper B

    WaitForRound(58)                    
    Upgrade("Village B", 0, 2, 0, true)     ; 002 -> 022
    Place("Alch A", true)               
    Upgrade("Alch A", 3, 2, 0, true)        ; 000 -> 320
    
    WaitForRound(61)
    Ability("sniper", "1", "4")

    WaitForRound(62)                    
    Upgrade("Sniper B", 0, 1, 0, true)      ; 042 -> 052
    
    WaitForRound(63)                    
    Upgrade("Alch A", 1, 0, 0, true)        ; 320 -> 420

    WaitForRound(64)                    
    Place("Sniper C", true)             
    Targeting("Sniper C", 4)                ; First -> Elite
    Upgrade("Sniper C", 2, 0, 3, true)      ; 000 -> 203
    
    WaitForRound(65)
    Ability("sniper", "1", "4")
    Upgrade("Sniper C", 0, 0, 1, true)      ; 203 -> 204

    WaitForRound(67)                    
    Ability("sniper", "1", "4")         
    Upgrade("Farm A", 0, 0, 1, true)        ; 203 -> 204

    WaitForRound(70)                    
    Sleep(5000)
    Ability("sniper", "1", "4")         
    Upgrade("Farm B", 0, 0, 1, true)        ; 203 -> 204

    WaitForRound(71)
    Ability("sniper", "1", "4")
    
    WaitForRound(72)                    
    Upgrade("Farm C", 0, 0, 1, true)        ; 203 -> 204

    WaitForRound(73)                    
    Ability("sniper", "1", "4")         
    Upgrade("Sniper C", 0, 0, 1, true)      ; 204 -> 205
    Ability("sniper", "1", "4")
    Place("Ace A", true)                  
    Upgrade("Ace A", 0, 0, 3, true)         ; 000 -> 003
    Upgrade("Ace A", 2, 0, 0, true)         ; 003 -> 203
    Ability("sniper", "1", "4")

    WaitForRound(74)
    Ability("sniper", "1", "4")

    WaitForRound(75)
    Ability("sniper", "1", "4")         
    
    WaitForRound(77)
    Ability("sniper", "1", "4")
    Upgrade("Ace A", 0, 0, 1, true)         ; 203 -> 204
    Ability("sniper", "1", "4")
    
    WaitForRound(78)
    Ability("sniper", "1", "4")         
    Place("Alch B", true)               
    Upgrade("Alch B", 4, 2, 0, true)        ; 000 -> 420
    Ability("sniper", "1", "4")
    
    WaitForRound(79)
    Ability("sniper", "1", "4")         

    WaitForRound(80)
    Sell("Farm A")
    Sell("Farm B")
    Sell("Farm C")
    Upgrade("Ace A", 0, 0, 1, true)         ; 204 -> 205
    Ability("sniper", "1", "4")
    Upgrade("Village B", 0, 1, 0, true)     ; 022 -> 032
    Ability("sniper", "1", "4")

    WaitForRound(81)
    Ability("sniper", "1", "4")

    WaitForRound(82)
    Ability("sniper", "1", "4")
    
    WaitForRound(83)
    Ability("sniper", "1", "4")

    WaitForRound(84)
    Ability("sniper", "1", "4")
    Upgrade("Druid A", 0, 2, 0, true)       ; 130 -> 150
    Ability("sniper", "1", "4")
    Place("Spike A", true)
    Ability("sniper", "1", "4")
    Upgrade("Spike A", 2, 4, 0, true)       ; 000 -> 240  
    Ability("sniper", "1", "4")

    WaitForRound(85)
    Ability("sniper", "1", "4")

    WaitForRound(86)
    Ability("sniper", "1", "4")

    WaitForRound(87)
    Ability("sniper", "1", "4")

    WaitForRound(88)
    Ability("sniper", "1", "4")
    
    WaitForRound(89)
    Ability("sniper", "1", "4")
    Upgrade("Spike A", 0, 1, 0, true)       ; 000 -> 250  
    Ability("sniper", "1", "4")
    
    WaitForRound(90)
    Ability("sniper", "1", "4")

    WaitForRound(93)
    Ability("sniper", "1", "4")

    WaitForRound(95)
    Upgrade("Alch B", 1, 0, 0, true)        ; 420 -> 520
}
