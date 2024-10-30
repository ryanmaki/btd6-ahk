LogsImpoppable() {
    global TS := Map(
        "Quincy", ["hero", [641, 579]],
        "Ninja", ["ninja", [749, 745]],
        "Alch", ["alch", [891, 833]],
        "Wizard", ["wizard", [755, 680]],
        "Village", ["village", [633, 730]],
        "Heli", ["heli", [785, 861]]
    )

    StartGame()
    Place("Quincy")

    WaitForRound(10)
    Place("Ninja")
    Upgrade("Ninja", 3, 0, 1, true)     ; 000 -> 301

    WaitForRound(23)
    Place("Alch")
    Targeting("Alch", 3)                ; First -> Strong
    Upgrade("Alch", 3, 2, 0, true)      ; 000 -> 320
    Upgrade("Ninja", 1, 0, 0, true)     ; 302 -> 402
    Upgrade("Alch", 1, 0, 0, true)      ; 320 -> 420

    WaitForRound(41)
    Place("Wizard")
    Upgrade("Wizard", 0, 2, 4, true)    ; 000 -> 024
    Open("Wizard")			; Waiting until enough cash is available
    WaitForUpgrade(3)			; for the village
    Close()
    Place("Village")
    Upgrade("Wizard", 0, 0, 1, true)	; 024 -> 025
    Upgrade("Village", 1, 2, 0, true)   ; 000 -> 120
    Open("Village")			; Waiting until enough cash is available
    WaitForUpgrade(1)			; for the heli
    Close()
    Place("Heli")
    Upgrade("Village", 1, 0, 0, true)	; 120 -> 220
    Upgrade("Heli", 5, 0, 2, true)      ; 000 -> 502
    Upgrade("Village", 0, 1, 0, true)   ; 220 -> 230
}
