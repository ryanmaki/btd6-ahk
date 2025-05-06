; strat has a degree of rng - especially on R93.
; Tweaking the delay in WaitForRound(93, <delay>) may help.
BloodyPuddlesChimps() {
    global TS := Map(
        "Sub A", ["sub", [1006, 935]],
        "Dart A", ["dart", [350, 687]],
        "Dart B", ["dart", [399, 507]],
        "Sub B", ["sub", [1199, 192]],
        "Sniper A", ["sniper", [700, 196]],
        "Dart C", ["dart", [921, 567]],
        "Sniper B", ["sniper", [701, 140]],
        "Sniper C", ["sniper", [311, 27]],
        "Sniper C_Alt", ["sniper", [320, 88]],
        "Dart D", ["dart", [1309, 867]],
        "Dart E", ["dart", [1262, 570]],
        "Dart F", ["dart", [691, 752]],
        "Gwen", ["hero", [720, 255]],
        "Wizard A", ["wizard", [533, 447]],
        "Alch A", ["alch", [1167, 247]],
        "Glue A", ["glue", [518, 387]],
        "Glue B", ["glue", [484, 339]],
        "Village A", ["village", [612, 220]],
        "Alch B", ["alch", [705, 84]],
        "Village B", ["village", [755, 334]],
        "Sniper D", ["sniper", [823, 138]],
        "Alch C", ["alch", [832, 82]],
        "Sniper E", ["sniper", [830, 194]],
        "Alch D", ["alch", [894, 201]],
        "Sniper F", ["sniper", [864, 251]],
        "Sniper G", ["sniper", [804, 401]],
        "Alch E", ["alch", [741, 413]],
        "Glue C", ["glue", [579, 294]],
        "Ice A", ["ice", [661, 288]],
        "Tack A", ["tack", [623, 335]],
        "Tack B", ["tack", [644, 388]],
        "Sniper H", ["sniper", [681, 434]],
        "Boomer A", ["boomer", [519, 195]],
        "Boomer B", ["boomer", [438, 291]],
        "Glue D", ["glue", [1094, 695]],
        "Boomer C", ["boomer", [400, 222]],
        "Ninja A", ["ninja", [460, 412]],
        "Alch F", ["alch", [644, 480]],
    )

    Place("Sub A", true)
    Place("Dart A", true)
    Targeting("Dart A", 1)                  ; First -> Last
    
    StartGame()

    WaitForRound(7)
    Place("Dart B", true)
    Targeting("Dart B", 3)                  ; First -> Strong
    Targeting("Dart A", 3)                  ; Last -> First

    WaitForRound(9)
    Send("{Space}")
    Place("Sub B", true)
    Send("{Space}")

    WaitForRound(10)
    Place("Sniper A", true)
    Place("Dart C", true)

    WaitForRound(12)
    Targeting("Sniper A", 3)                ; First -> Strong

    WaitForRound(13)
    Place("Sniper B", true)
    Targeting("Sniper B", 3)                ; First -> Strong

    WaitForRound(14)
    Place("Sniper C", true)
    Targeting("Sniper C_Alt", 3)            ; First -> Strong

    WaitForRound(16)
    Upgrade("Sub B", 1, 0, 0, true)         ; 000 -> 100

    WaitForRound(17)
    Targeting("Sniper B", 1)                ; Strong -> First
    Upgrade("Sub B", 1, 0, 0, true)         ; 100 -> 200

    WaitForRound(18)
    Targeting("Sniper B", 3)                ; First -> Strong

    WaitForRound(19)
    Upgrade("Sub B", 0, 0, 1, true)         ; 200 -> 201

    WaitForRound(20)
    Place("Dart D", true)
    Place("Dart E", true)
    Upgrade("Sniper A", 1, 0, 0, true)      ; 000 -> 100

    WaitForRound(22)
    Place("Dart F", true)
    Targeting("Dart F", 3)                  ; First -> Strong
    Targeting("Dart C", 3)                  ; First -> Strong

    WaitForRound(24)
    Upgrade("Sniper B", 0, 1, 0, true)      ; 000 -> 010

    WaitForRound(27)
    Upgrade("Sub B", 0, 0, 1, true)         ; 201 -> 202
    Place("Gwen", true)

    WaitForRound(32)
    Upgrade("Dart D", 0, 0, 2, true)        ; 000 -> 002

    WaitForRound(34)
    Place("Wizard A", true)
    Upgrade("Wizard A", 3, 0, 2, true)      ; 000 -> 302

    WaitForRound(36)
    Targeting("Sub B", 2)                   ; First -> Close

    WaitForRound(37)
    Targeting("Sub B", 2)                   ; Close -> First
    Upgrade("Sub B", 0, 0, 1, true)         ; 202 -> 203
    Upgrade("Sniper C_Alt", 1, 0, 0, true)  ; 000 -> 100
    Place("Alch A", true)
    Upgrade("Alch A", 1, 0, 0, true)        ; 000 -> 100

    WaitForRound(39)
    Place("Glue A", true)
    Upgrade("Glue A", 1, 1, 0, true)        ; 000 -> 110
    Place("Glue B", true)
    Upgrade("Glue B", 1, 1, 0, true)        ; 000 -> 110
    Targeting("Glue B", 1)                  ; First -> Last
    Send("{Space}")                         ; Slow down

    WaitForRound(40)
    Upgrade("Alch A", 2, 0, 0, true)        ; 100 -> 300

    WaitForRound(41)
    Send("{Space}")                         ; Fast Forward
    Place("Village A", true)
    Upgrade("Village A", 0, 0, 2, true)     ; 000 -> 002
    Upgrade("Sniper B", 0, 1, 0, true)      ; 010 -> 020
    Targeting("Sniper B", 1)                ; Strong -> First
    Upgrade("Sniper B", 0, 0, 2, true)      ; 020 -> 022

    WaitForRound(44)
    Upgrade("Sniper B", 0, 1, 0, true)      ; 022 -> 032
    Place("Alch B", true)
    Upgrade("Alch B", 3, 0, 1, true)        ; 000 -> 301

    WaitForRound(47)
    Upgrade("Sniper A", 0, 0, 3, true)      ; 100 -> 103

    WaitForRound(48)
    Upgrade("Sniper A", 1, 0, 0, true)      ; 103 -> 203

    WaitForRound(49)
    Upgrade("Village A", 2, 0, 0, true)     ; 002 -> 202

    WaitForRound(51)
    Upgrade("Sniper B", 0, 1, 0, true)      ; 032 -> 042
    Targeting("Glue B", 2)                  ; Last -> Strong

    WaitForRound(61)
    Upgrade("Sniper B", 0, 1, 0, true)      ; 042 -> 052
    Targeting("Sniper B", 1)                ; Elite -> First

    WaitForRound(64)
    Upgrade("Sniper A", 0, 0, 1, true)      ; 203 -> 204
    Targeting("Sniper A", 2)                ; Strong -> First

    WaitForRound(65, 2000)
    Remove(902, 704, 1008, 770)
    Sleep(2000)
    Remove(732, 476, 826, 581)
    Place("Village B", true)
    Upgrade("Village B", 0, 0, 2, true)     ; 000 -> 002

    WaitForRound(66)
    Place("Sniper D", true)
    Targeting("Sniper D", 3)                ; First -> Strong
    Upgrade("Sniper D", 1, 2, 0, true)      ; 000 -> 120
    Upgrade("Sniper D", 3, 0, 0, true)      ; 120 -> 420

    WaitForRound(73)
    Place("Alch C", true)
    Upgrade("Alch C", 3, 0, 1, true)        ; 000 -> 301

    WaitForRound(75)
    Place("Sniper E", true)
    Upgrade("Sniper E", 0, 3, 2, true)      ; 000 -> 032

    WaitForRound(78)
    Place("Alch D", true)
    Upgrade("Alch D", 3, 2, 0, true)        ; 000 -> 320

    WaitForRound(81)
    Upgrade("Sniper A", 0, 0, 1, true)      ; 204 -> 205
    Place("Sniper F", true)
    Upgrade("Sniper F", 0, 3, 2, true)      ; 000 -> 032

    WaitForRound(82)
    Upgrade("Alch D", 1, 0, 0, true)        ; 320 -> 420

    WaitForRound(83)
    Place("Sniper G", true)
    Upgrade("Sniper G", 0, 3, 2, true)      ; 000 -> 032
    Place("Alch E", true)
    Upgrade("Alch E", 3, 2, 0, true)        ; 000 -> 320

    WaitForRound(84)
    Place("Glue C", true)
    Place("Ice A", true)
    Place("Tack A", true)
    Place("Tack B", true)
    Place("Sniper H", true)
    Upgrade("Sniper H", 0, 3, 2, true)      ; 000 -> 032
    Upgrade("Alch E", 1, 0, 0, true)        ; 320 -> 420

    WaitForRound(85)
    Targeting("Glue C", 3)                  ; First -> Strong
    Upgrade("Glue C", 0, 2, 4, true)        ; 000 -> 024

    WaitForRound(89)
    Upgrade("Village B", 0, 2, 0, true)     ; 002 -> 022

    WaitForRound(91)
    Place("Boomer A", true)
    Targeting("Boomer A", 3)                ; First -> Strong
    Upgrade("Boomer A", 2, 0, 4, true)      ; 000 -> 204

    WaitForRound(92)
    Place("Boomer B", true)
    Targeting("Boomer B", 3)                ; First -> Strong
    Upgrade("Boomer B", 0, 0, 4, true)      ; 000 -> 004

    WaitForRound(93, 3000)
    Ability("Gwen", 1, 3)
    Upgrade("Boomer B", 2, 0, 0, true)      ; 004 -> 204


    WaitForRound(94)
    Upgrade("Ice A", 4, 1, 0, true)        ; 000 -> 410
    Upgrade("Village A", 1, 0, 0, true)    ; 202 -> 302
    Place("Glue D", true)
    Targeting("Glue D", 3)                 ; First -> Strong
    Upgrade("Glue D", 0, 0, 3, true)       ; 000 -> 003
    Upgrade("Glue D", 0, 2, 0, true)       ; 003 -> 023

    WaitForRound(96)
    Place("Boomer C", true)
    Targeting("Boomer C", 3)                ; First -> Strong
    Upgrade("Boomer C", 2, 0, 4, true)      ; 000 -> 204
    Upgrade("Tack A", 2, 0, 4, true)       ; 000 -> 204
    Upgrade("Tack B", 2, 0, 4, true)       ; 000 -> 204

    WaitForRound(98)
    Place("Ninja A", true)
    Upgrade("Ninja A", 1, 0, 4, true)       ; 000 -> 104
    Place("Alch F", true)
    Upgrade("Alch F", 3, 2, 0, true)        ; 000 -> 320
}