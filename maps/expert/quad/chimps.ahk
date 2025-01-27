QuadChimps() {
    global TS := Map(
        "DartA", ["dart", [400, 554]],
        "DartB", ["dart", [1282, 563]],
        "DartC", ["dart", [779, 253]],
        "DartD", ["dart", [834, 842]],
        "SniperA", ["sniper", [532, 315]],
        "Sauda", ["hero", [885, 254]],
        "EngineerA", ["engineer", [427, 613]],
        "SniperB", ["sniper", [1131, 797]],
        "SpikeA", ["spike", [367, 822]],
        "VillageA", ["village", [1006, 181]],
        "WizardA", ["wizard", [944, 306]],
        "VillageB", ["village", [494, 789]],
        "WizardB", ["wizard", [622, 730]],
        "AlchA", ["alch", [363, 888]],
        "SpikeB", ["spike", [1066, 254]],
        "AlchB", ["alch", [1105, 198]],
        "TackA", ["tack", [834, 195]],
        "TackB", ["tack", [678, 922]],
        "TackC", ["tack", [635, 880]],
        "AlchC", ["alch", [636, 965]],
        "AlchD", ["alch", [589, 920]],
        "GlueA", ["glue", [936, 129]],
        "IceA", ["ice", [746, 833]],
        "GlueB", ["glue", [699, 790]],
        "BoomerA", ["boomer", [1008, 97]],
        "BoomerB", ["boomer", [482, 1012]],
        "BoomerC", ["boomer", [481, 946]],
        "EngineerB", ["engineer", [747, 746]],
        "EngineerC", ["engineer", [1092, 33]],
        "AlchE", ["alch", [861, 311]],
        "AlchF", ["alch", [738, 114]],
        "BoomerD", ["boomer", [1126, 306]],
        "HeliA", ["heli", [551, 629]],
        "IceB", ["ice", [920, 363]],
        "DruidA", ["druid", [999, 393]],
        "DruidB", ["druid", [828, 384]],
    )

    Place("DartA", true)
    Place("DartB", true)
    Place("DartC", true)

    StartGame()

    WaitForRound(7)
    Targeting("DartB", 3)                   ; first -> strong
    Place("DartD", true)

    WaitForRound(8)
    Targeting("DartB", 1)                   ; strong -> first
    
    WaitForRound(9)
    Targeting("DartA", 3)                   ; first -> strong
    Place("SniperA", true)
    Targeting("SniperA", 3)                 ; first -> strong

    WaitForRound(10)
    Targeting("DartA", 1)                   ; strong -> first
    
    WaitForRound(12)
    Place("Sauda", true)

    WaitForRound(14)
    Place("EngineerA", true)

    WaitForRound(15)
    Place("SniperB", true)
    Targeting("SniperB", 3)                 ; first -> strong
    
    WaitForRound(18)
    Upgrade("EngineerA", 1, 0, 0, true)     ; 000 -> 100
    
    WaitForRound(19)
    Upgrade("SniperA", 1, 0, 0, true)       ; 000 -> 100
    
    WaitForRound(20)
    Upgrade("SniperB", 1, 0, 0, true)       ; 000 -> 100

    WaitForRound(23)
    Place("SpikeA", true)
    
    WaitForRound(26)
    Upgrade("EngineerA", 2, 0, 2, true)     ; 100 -> 302


    WaitForRound(32)
    Place("VillageA", true)
    Upgrade("VillageA", 0, 0, 2, true)      ; 000 -> 002
    
    WaitForRound(35)
    Place("WizardA", true)
    Upgrade("WizardA", 0, 2, 2, true)       ; 000 -> 022
    
    WaitForRound(37)
    Upgrade("VillageA", 2, 0, 0, true)      ; 002 -> 202
    
    WaitForRound(39)
    Upgrade("WizardA", 0, 1, 0, true)       ; 022 -> 032

    WaitForRound(41)
    Upgrade("SniperA", 0, 1, 0, true)       ; 100 -> 110
    Targeting("SniperA", 0, true)           ; camo prio
    Upgrade("SpikeA", 1, 0, 2, true)        ; 000 -> 102
    Targeting("SpikeA", 3)                  ; normal -> smart
    
    WaitForRound(43)
    Place("VillageB", true)
    Upgrade("VillageB", 0, 0, 2, true)      ; 000 -> 002
    Place("WizardB", true)
    
    WaitForRound(44)
    Upgrade("WizardB", 0, 3, 2, true)       ; 000 -> 032
    
    WaitForRound(48)
    Upgrade("VillageB", 2, 0, 0, true)      ; 002 -> 202
    Place("AlchA", true)
    Upgrade("AlchA", 3, 0, 0, true)         ; 000 -> 300

    WaitForRound(49)
    Targeting("SpikeA", 2)                  ; smart -> close
    Place("SpikeB", true)
    Upgrade("SpikeB", 3, 0, 2, true)        ; 000 -> 302
    Targeting("SpikeB", 3)                  ; normal -> smart
    
    WaitForRound(50)
    Place("AlchB", true)
    Upgrade("AlchB", 3, 0, 0, true)         ; 000 -> 300
    
    WaitForRound(51)
    Upgrade("SpikeA", 2, 0, 0, true)        ; 102 -> 302

    WaitForRound(54)
    Remove(835, 34, 945, 320)               ; remove top obstacle
    Place("TackA", true)
    Upgrade("TackA", 0, 0, 4, true)         ; 000 -> 004
    
    WaitForRound(55)
    Upgrade("TackA", 2, 0, 0, true)         ; 004 -> 204
    
    WaitForRound(62)
    Upgrade("SpikeA", 1, 0, 0, true)        ; 302 -> 402
    
    WaitForRound(64)
    Targeting("Sauda", 2)                   ; first -> close
    Targeting("WizardA", 2)                 ; first -> close
    
    WaitForRound(68)
    Upgrade("SpikeB", 1, 0, 0, true)        ; 302 -> 402
    Place("TackB", true)
    
    WaitForRound(69)
    Upgrade("TackB", 2, 0, 4, true)         ; 000 -> 204
    
    WaitForRound(72)
    Place("TackC", true)
    Upgrade("TackC", 2, 0, 4, true)         ; 000 -> 204
    
    WaitForRound(74)
    Place("AlchC", true)
    Upgrade("AlchC", 3, 2, 0, true)         ; 000 -> 320

    WaitForRound(75)
    Place("AlchD", true)
    Upgrade("AlchD", 3, 2, 0, true)         ; 000 -> 320
    
    WaitForRound(78)
    Place("GlueA", true)
    Targeting("GlueA", 3)                   ; first -> strong
    Upgrade("GlueA", 0, 2, 4, true)         ; 000 -> 024

    WaitForRound(79)
    Upgrade("VillageA", 1, 0, 0, true)      ; 202 -> 302
    Upgrade("VillageB", 1, 0, 0, true)      ; 202 -> 302
    
    WaitForRound(80)
    Remove(839, 1000, 945, 930)             ; remove bottom obstacle
    Place("IceA", true)
    Upgrade("IceA", 4, 1, 0, true)          ; 000 -> 410

    WaitForRound(82)
    Place("GlueB", true)
    Targeting("GlueB", 3)                   ; first -> strong
    Upgrade("GlueB", 0, 2, 4, true)         ; 000 -> 024       
    
    WaitForRound(84)
    Place("BoomerA", true)
    Targeting("BoomerA", 3)                 ; first -> strong
    Upgrade("BoomerA", 0, 2, 4, true)       ; 000 -> 024
    
    Place("BoomerB", true)
    Targeting("BoomerB", 3)                 ; first -> strong
    Upgrade("BoomerB", 0, 2, 4, true)       ; 000 -> 024
    
    WaitForRound(85)
    Place("BoomerC", true)
    Targeting("BoomerC", 3)                 ; first -> strong
    Upgrade("BoomerC", 0, 2, 4, true)       ; 000 -> 024
    
    WaitForRound(87)
    Place("EngineerB", true)
    Upgrade("EngineerB", 0, 3, 1, true)     ; 000 -> 031
    Aim("EngineerB", 833, 1042)
    
    WaitForRound(88)
    Place("EngineerC", true)
    Upgrade("EngineerC", 0, 3, 1, true)     ; 000 -> 031
    Aim("EngineerC", 743, 49)

    WaitForRound(89)
    Place("AlchE", true)
    Upgrade("AlchE", 3, 2, 0, true)         ; 000 -> 320

    WaitForRound(91)
    Place("AlchF", true)
    Upgrade("AlchF", 3, 2, 0, true)         ; 000 -> 320
    
    WaitForRound(92)
    Place("BoomerD", true)
    Targeting("BoomerD", 3)                 ; first -> strong
    Upgrade("BoomerD", 0, 2, 4, true)       ; 000 -> 024
    
    WaitForRound(96)
    Upgrade("TackA", 0, 0, 1, true)         ; 204 -> 204
    
    WaitForRound(98)
    Place("HeliA", true)
    Targeting("HeliA", 1)                   ; lock in place
    Aim("HeliA", 591, 780)                  ; set heli position
    Upgrade("HeliA", 0, 2, 3, true)         ; 000 -> 023

    Place("IceB", true)
    Upgrade("IceB", 4, 0, 1, true)          ; 000 -> 401

    Upgrade("AlchF", 1, 0, 0, true)         ; 320 -> 420
    Place("DruidA", true)
    Upgrade("DruidA", 0, 1, 3, true)        ; 000 -> 013
    Place("DruidB", true)
    Upgrade("DruidB", 0, 1, 3, true)        ; 000 -> 013
    
    WaitForRound(100)
    Aim("HeliA", 1112, 355)                 ; set heli position
}