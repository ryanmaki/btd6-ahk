; copied from MuddyPuddlesImpoppable(). may need to adjust
MuddyPuddlesHard() {
    global TS := Map(
        "Ace A", ["ace", [954, 863]],
        "Alch A", ["alch", [1075, 710]],
        "Alch B", ["alch", [846, 849]],
        "Ben", ["hero", [1219, 569]],
        "Dart A", ["dart", [405, 180]],
        "Dart B", ["dart", [1115, 210]],
        "Druid A", ["druid", [1059, 599]],
        "Druid B", ["druid", [1173, 727]],
        "Druid C", ["druid", [1202, 788]],
        "Druid D", ["druid", [1161, 662]],
        "Farm A", ["farm", [1516, 574]],
        "Farm B", ["farm", [1516, 715]],
        "Farm C", ["farm", [1507, 856]],
        "Sniper A", ["sniper", [877, 598]],
        "Sniper B", ["sniper", [1018, 737]],
        "Sniper C", ["sniper", [1069, 772]],
        "Sub A", ["sub", [772, 586]],
        "Village A", ["village", [1371, 711]],
        "Village B", ["village", [990, 661]],
        "Village C", ["village", [851, 769]],
    )

    Place("Dart A", true)
    Place("Sub A", true)

    StartGame()
    
    Upgrade("Sub A", 2, 0, 0, true)         ; 000 -> 200
    Place("Dart B", true)
    Upgrade("Sub A", 0, 0, 1, true)         ; 200 -> 201
    Place("Ben", true)
    Upgrade("Sub A", 0, 0, 1, true)         ; 201 -> 202
    UpdateMouseRest("Farm A")
    Place("Farm A", true)
    Upgrade("Farm A", 2, 0, 0, true)        ; 000 -> 200
    Place("Sniper A", true)
    Targeting("Sniper A", 3)                ; First -> Strong
    Upgrade("Sniper A", 1, 0, 1, true)      ; 000 -> 101
    Place("Farm B", true)
    UpdateMouseRest("Farm A", "Farm B")
    Upgrade("Farm B", 2, 0, 0, true)        ; 000 -> 200
    Upgrade("Dart A", 0, 0, 2, true)        ; 000 -> 002
    Upgrade("Dart B", 0, 0, 2, true)        ; 000 -> 002
    Upgrade("Sub A", 0, 0, 1, true)         ; 202 -> 203
    Place("Farm C", true)
    UpdateMouseRest("Farm A", "Farm B", "Farm C")   ; Hover Farm A, B, C

    Upgrade("Farm C", 2, 0, 0, true)        ; 000 -> 200

    Place("Druid A", true)
    Upgrade("Druid A", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid A", 1, 0, 0, true)       ; 030 -> 130

    Place("Village A", true)
    Upgrade("Village A", 0, 0, 2, true)     ; 000 -> 002
    Upgrade("Farm A", 0, 0, 3, true)        ; 200 -> 203
    UpdateMouseRest("Farm B", "Farm C")     ; Hover Farm B, C
    Place("Druid B", true)
    Upgrade("Druid B", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid B", 1, 0, 0, true)       ; 030 -> 130

    Place("Druid C", true)
    Upgrade("Druid C", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid C", 1, 0, 0, true)       ; 030 -> 130
    Place("Druid D", true)
    Upgrade("Druid D", 0, 3, 0, true)       ; 000 -> 030
    Upgrade("Druid D", 1, 0, 0, true)       ; 030 -> 130
    Upgrade("Farm B", 0, 0, 3, true)        ; 200 -> 203
    UpdateMouseRest("Farm C")               ; Hover Farm C
    Upgrade("Farm C", 0, 0, 3, true)        ; 200 -> 203

    Sell("Village A")
    Place("Village B", true)
    Upgrade("Village B", 0, 0, 2, true)     ; 000 -> 002
    Place("Village C", true)
    Upgrade("Village C", 0, 0, 2, true)     ; 000 -> 002

    Upgrade("Village B", 2, 0, 0, true)     ; 002 -> 202

    Upgrade("Village B", 0, 0, 1, true)     ; 202 -> 203
    Place("Sniper B", true)
    Upgrade("Sniper B", 0, 3, 2, true)      ; 000 -> 032
    Upgrade("Sub A", 0, 0, 1, true)         ; 203 -> 204

    Upgrade("Sniper B", 0, 1, 0, true)      ; 032 -> 042

    Upgrade("Sniper B", 0, 1, 0, true)      ; 042 -> 052
    Place("Alch A", true)
    Upgrade("Alch A", 3, 2, 0, true)        ; 000 -> 320

    Upgrade("Alch A", 1, 0, 0, true)        ; 320 -> 420

    Place("Sniper C", true)
    Targeting("Sniper C", 4)                ; First -> Elite
    Upgrade("Sniper C", 2, 0, 3, true)      ; 000 -> 203
    Upgrade("Sniper C", 0, 0, 1, true)      ; 203 -> 204


    Upgrade("Farm A", 0, 0, 1, true)        ; 203 -> 204

    Upgrade("Farm B", 0, 0, 1, true)        ; 203 -> 204

    Upgrade("Farm C", 0, 0, 1, true)        ; 203 -> 204

    Upgrade("Sniper C", 0, 0, 1, true)      ; 204 -> 205
    Place("Ace A", true)
    Upgrade("Ace A", 0, 0, 3, true)         ; 000 -> 003
    Upgrade("Ace A", 2, 0, 0, true)         ; 003 -> 203
    Upgrade("Ace A", 0, 0, 1, true)         ; 203 -> 204

    Place("Alch B", true)
    Upgrade("Alch B", 3, 2, 0, true)        ; 000 -> 320
    Upgrade("Alch B", 1, 0, 0, true)        ; 320 -> 420
    Upgrade("Sniper A", 3, 0, 0, true)      ; 101 -> 401
    Upgrade("Ace A", 0, 0, 1, true)         ; 204 -> 205

}
