DarkCastleImpoppable() {

    global TS := Map(
        "Ace", ["ace", [828, 757]],
        "Alch A", ["alch", [1015, 662]],
        "Alch B", ["alch", [937, 771]],
        "Alch C", ["alch", [942, 715]],
        "Ben", ["hero", [487, 254]],
        "Dart A", ["dart", [595, 494]],
        "Dart B", ["dart", [210, 285]],
        "Dart C", ["dart", [210, 815]],
        "Druid A", ["druid", [652, 841]],
        "Druid B", ["druid", [715, 804]],
        "Farm A", ["farm", [996, 1009]],
        "Farm B", ["farm", [834, 1009]],
        "Farm C", ["farm", [992, 869]],
        "Farm D", ["farm", [639, 1009]],
        "Sniper A", ["sniper", [720, 743]],
        "Sniper B", ["sniper", [686, 695]],
        "Sniper C", ["sniper", [632, 899]],
        "Spike A", ["spike", [761, 677]],
        "Sub A", ["sub", [1083, 690]],
        "Sub B", ["sub", [1159, 690]],
        "Village A", ["village", [851, 887]],
        "Village B", ["village", [732, 889]],
        "Village C", ["village", [855, 851]],
    )
    
    CheckDoubleCash()

    Place("Dart A", true)
    Targeting("Dart A", 3)                          ; First -> Strong
    Place("Sub A", true)

    StartGame()

    Place("Ben", true)
    Upgrade("Sub A", 1, 0, 0, true)                 ; 000 -> 100

    WaitForRound(12)
    Upgrade("Sub A", 1, 0, 0, true)                 ; 100 -> 200

    WaitForRound(13)
    Upgrade("Sub A", 0, 0, 1, true)                 ; 200 -> 201

    WaitForRound(16)
    Place("Farm A", true)
    UpdateMouseRest("Farm A")                       ; Hover Farm A
    Upgrade("Farm A", 1, 0, 0, true)                ; 000 -> 100
    Upgrade("Sub A", 0, 0, 1, true)                 ; 201 -> 202
    Upgrade("Farm A", 1, 0, 0, true)                ; 100 -> 200

    WaitForRound(22)
    Place("Farm B", true)
    UpdateMouseRest("Farm A", "Farm B")             ; Hover Farm A, B
    Upgrade("Farm B", 2, 0, 0, true)                ; 000 -> 200
    
    WaitForRound(27)
    Place("Alch A", true)
    Targeting("Alch A", 3)                          ; First -> Strong
    Upgrade("Alch A", 2, 0, 0, true)                ; 000 -> 200
    
    WaitForRound(29)
    Place("Farm C", true)
    UpdateMouseRest("Farm A", "Farm B", "Farm C")   ; Hover Farm A, B, C
    Upgrade("Farm C", 2, 0, 0, true)                ; 000 -> 200
    
    WaitForRound(32)
    Upgrade("Dart A", 0, 0, 2, true)                ; 000 -> 002
    Upgrade("Farm B", 0, 0, 3, true)                ; 200 -> 203
    UpdateMouseRest("Farm A", "Farm C")             ; Hover Farm A, C
    Upgrade("Sub A", 0, 0, 1, true)                 ; 202 -> 203
    Upgrade("Alch A", 1, 2, 0, true)                ; 200 -> 320
    
    WaitForRound(37)
    Place("Village A", true)
    Upgrade("Village A", 0, 0, 2, true)             ; 000 -> 002
    Upgrade("Farm C", 0, 0, 3, true)                ; 200 -> 203
    UpdateMouseRest("Farm A")                       ; Hover Farm A
    
    WaitForRound(39)
    Upgrade("Farm A", 0, 0, 3, true)                ; 200 -> 203
    
    WaitForRound(41)
    Place("Village B", true)
    Upgrade("Village B", 0, 0, 2, true)             ; 000 -> 002

    Place("Druid A", true)
    Upgrade("Druid A", 1, 3, 0, true)               ; 000 -> 130
    Place("Druid B", true)
    Upgrade("Druid B", 1, 3, 0, true)               ; 000 -> 130

    Place("Sniper B", true)
    Upgrade("Sniper B", 2, 0, 2, true)              ; 000 -> 202

    Place("Ace", true)
    Upgrade("Ace", 2, 0, 3, true)                   ; 000 -> 203
    Recenter("Ace", 1623, 556)
    Upgrade("Village A", 0, 0, 2, true)             ; 002 -> 004

    WaitForRound(49)
    Upgrade("Village A", 2, 0, 0, true)             ; 004 -> 204
    Upgrade("Village B", 0, 1, 0, true)             ; 002 -> 012

    ; Use the cost of the given towers upgrade to ensure enough cash to unlock obstacle
    Open("Village B")
    WaitForUpgrade(2)
    Close()
    
    Remove(150, 180, 455, 249)                      ; Remove Obstacle A
    Upgrade("Village B", 0, 1, 0, true)             ; 012 -> 022

    WaitForRound(50)
    ; Use the cost of the given towers upgrade to ensure enough cash to unlock obstacle
    Open("Sub A")
    WaitForUpgrade(3)
    Close()
    Remove(150, 380, 455, 494)                      ; Remove Obstacle B
    Remove(150, 680, 455, 779)                      ; Remove Obstacle C
    Remove(150, 930, 455, 950)                      ; Remove Obstacle D

    Place("Sniper A", true)
    Targeting("Sniper A", 3)                        ; First -> Strong
    Upgrade("Sniper A", 4, 0, 0, true)              ; 000 -> 400

    Upgrade("Farm C", 0, 0, 1, true)                ; 203 -> 204
    
    Upgrade("Ace", 0, 0, 1, true)                   ; 203 -> 204
    
    Place("Farm D", true)
    UpdateMouseRest("Farm D")                       ; Hover Farm D
    Upgrade("Farm D", 0, 2, 4, true)                ; 000 -> 024
    Upgrade("Farm B", 0, 0, 1, true)                ; 203 -> 204
    Upgrade("Farm A", 0, 0, 1, true)                ; 203 -> 204
    
    Place("Alch B", true)
    Upgrade("Alch B", 4, 2, 0, true)                ; 000 -> 420
    
    Upgrade("Ace", 0, 0, 1, true)                   ; 204 -> 205
    
    Upgrade("Village B", 0, 1, 0, true)             ; 022 -> 032
    
    Upgrade("Sniper A", 0, 0, 2, true)              ; 400 -> 402
    Upgrade("Sniper B", 0, 0, 3, true)              ; 202 -> 205
    
    Upgrade("Druid B", 0, 2, 0, true)               ; 130 -> 150
    
    Upgrade("Sniper A", 1, 0, 0, true)              ; 402 -> 502
    
    Place("Sniper C", true)
    Upgrade("Sniper C", 0, 5, 2, true)              ; 000 -> 052
    
    Targeting("Sniper B", 4)                        ; First -> Elite

    Place("Alch C", true)
    Upgrade("Alch C", 4, 0, 1, true)                ; 000 -> 401
    Upgrade("Alch C", 1, 0, 0, true)                ; 000 -> 501
    
    Place("Spike A", true)
    Upgrade("Spike A", 2, 5, 0, true)               ; 000 -> 250
    
}
