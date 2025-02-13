GlacialTrailImpoppable() {
    global TS := Map(
        "DartA", ["dart", [211, 410]],
        "DruidA", ["druid", [1141, 585]],
        "SpikeA", ["spike", [1432, 670]],
        "Ben", ["hero", [245, 869]],
        "DartB", ["dart", [245, 545]],
        "WizardA", ["wizard", [315, 538]],
        "WizardB", ["wizard", [212, 406]],
        "FarmA", ["farm", [1560, 106]],
        "FarmB", ["farm", [1552, 246]],
        "FarmC", ["farm", [1393, 77]],
        "FarmD", ["farm", [1231, 82]],
        "FarmE", ["farm", [1250, 237]],
        "VillageA", ["village", [1390, 199]],
        "VillageB", ["village", [1401, 301]],
        "IceA", ["ice", [245, 545]],
        "AlchA", ["alch", [1455, 740]],
        "AceA", ["ace", [1257, 252]],
        "AceB", ["ace", [1222, 168]],
        "AceC", ["ace", [1404, 97]],
        "AlchB", ["alch", [1231, 68]]
    )

    /* 
        ********************* DONT USE CheckDoubleCash() *********************
        Glacial Trail freezes all non-ice monkey towers every future 10 rounds
        and the 1 prior after being placed. 
            Example:
            - tower placed on round 18 will freeze on 27 and 28 and every x7 
            and x8 round thereafter
        When a tower is frozen, it cannot attack nor can it be accessed to
        perform actions such upgrades or targeting
    */

    Place("DartA", true)
    Place("DruidA", true)
    Targeting("DartA", 3, true)

    StartGame()

    WaitForRound(8)
    Place("WizardA", true)
    
    WaitForRound(12)
    Place("SpikeA", true)
    
    WaitForRound(14)
    Place("DartB", true)
    Targeting("DartB", 3, true)

    WaitForRound(18)
    Place("Ben", true)
    
    WaitForRound(19)
    Upgrade("WizardA", 0, 2, 0, true)
    
    WaitForRound(22)
    Upgrade("DruidA", 1, 1, 0, true)
    
    WaitForRound(27)
    Upgrade("DruidA", 0, 2, 0, true)
    
    WaitForRound(29)
    Place("FarmA", true)
    UpdateMouseRest("FarmA")
    Upgrade("FarmA", 2, 0, 0, true)
    
    WaitForRound(35)
    Upgrade("WizardA", 0, 1, 0, true)

    WaitForRound(36)
    Upgrade("WizardA", 0, 0, 2, true)
    Place("FarmB", true)
    UpdateMouseRest("FarmA","FarmB")
    Upgrade("FarmB", 2, 0, 0, true)

    WaitForRound(38)
    Place("FarmC", true)
    UpdateMouseRest("FarmA","FarmB","FarmC")
    Upgrade("FarmC", 2, 0, 0, true)

    WaitForRound(41)
    Sell("DartA")
    Sell("DartB")
    Upgrade("FarmA", 0, 0, 3, true)
    UpdateMouseRest("FarmB","FarmC")
    
    WaitForRound(44)
    Place("WizardB", true)
    Upgrade("WizardB", 0, 0, 4, true)
    
    WaitForRound(45)
    Upgrade("WizardB", 0, 2, 0, true)
    
    WaitForRound(46)
    Place("VillageA", true)
    Upgrade("VillageA", 0, 0, 2, true)
    
    WaitForRound(48)
    Upgrade("FarmB", 0, 0, 3, true)
    UpdateMouseRest("FarmC")
    
    WaitForRound(49)
    Upgrade("FarmC", 0, 0, 3, true)
    Place("AceA", true)
    Upgrade("AceA", 2, 0, 3, true)
    Recenter("AceA", 1607, 654)

    WaitForRound(52)
    Place("AceB", true)
    Upgrade("AceB", 2, 0, 3, true)
    Recenter("AceB", 1607, 654)
    Place("VillageB", true)
    Upgrade("VillageB", 0, 0, 2, true)

    WaitForRound(55)
    Sell("SpikeA")
    Upgrade("VillageB", 0, 0, 2, true)

    WaitForRound(57)
    Upgrade("VillageA", 0, 2, 0, true)
    Upgrade("VillageB", 2, 0, 0, true)
    Place("AlchB", true)
    Upgrade("AlchB", 3, 0, 1, true)
    
    WaitForRound(63)
    Sell("FarmC")
    Upgrade("AceB", 0, 0, 1, true)

    WaitForRound(70)
    Upgrade("AceA", 0, 0, 1, true)
    Upgrade("AlchB", 1, 0, 0, true)

    WaitForRound(75)
    Place("AceC", true)
    Upgrade("AceC", 2, 0, 3, true)
    Recenter("AceC", 1607, 654)

    WaitForRound(77)
    Upgrade("AceC", 0, 0, 1, true)

    WaitForRound(78)
    Upgrade("VillageA", 0, 1, 0, true)

    WaitForRound(81)
    Upgrade("DruidA", 0, 2, 0, true)

    WaitForRound(85)
    Upgrade("WizardB", 0, 0, 1, true)

    WaitForRound(94)
    Sell("FarmA")
    Sell("FarmB")
    Upgrade("AceB", 0, 0, 1, true)


/*  
    Occasionally dying r42, trying 032 wizard

    WaitForRound(32)
    Sell("DartB")
    Place("IceA", true)
    Place("AlchA", true)
    Upgrade("AlchA", 2, 0, 0, true)

    WaitForRound(33)
    Upgrade("SpikeA", 0, 0, 2, true)
    Targeting("SpikeA", 3, true)
    Upgrade("SpikeA", 0, 0, 1, true)
    Upgrade("AlchA", 1, 0, 0, true)

    ; MsgBox("Take Manual action now.")
    Send("!{F9}")

    WaitForRound(37)
    Place("FarmB", true)
    UpdateMouseRest("FarmA", "FarmB")
    Upgrade("FarmB", 2, 0, 0, true)

    WaitForRound(39)
    Place("FarmC", true)
    UpdateMouseRest("FarmA","FarmB","FarmC")
    Upgrade("FarmC", 2, 0, 0, true)

    WaitForRound(40)
    Place("FarmD", true)
    UpdateMouseRest("FarmA","FarmB","FarmC","FarmD")
    Upgrade("FarmD", 2, 0, 0, true)

    WaitForRound(41)
    Sell("DartA")
    Upgrade("WizardA", 0, 0, 2, true)
    Upgrade("IceA", 2, 0, 2, true)

    ; MsgBox("Take Manual action now.")

    WaitForRound(43)
    Upgrade("FarmD", 0, 0, 3, true)
    UpdateMouseRest("FarmA","FarmB","FarmC")

    WaitForRound(44)
    Place("WizardB", true)
    Upgrade("WizardB", 0, 2, 2, true)

    WaitForRound(45)
    Upgrade("IceA", 1, 0, 0, true)

    WaitForRound(48)
    Place("FarmE", true)
    Upgrade("FarmE", 0, 0, 3, true)
    Upgrade("FarmE", 0, 2, 0, true)
    Upgrade("WizardB", 0, 0, 1, true)

    WaitForRound(49)
    Upgrade("WizardB", 0, 0, 1, true)
    Place("VillageA", true)
    Upgrade("VillageA", 0, 0, 2, true)
    Upgrade("FarmB", 0, 0, 3, true)
    UpdateMouseRest("FarmA","FarmC")
    Upgrade("FarmA", 0, 0, 3, true)
    UpdateMouseRest("FarmC")
    Upgrade("FarmC", 0, 0, 3, true)

    WaitForRound(53)
    Upgrade("SpikeA", 0, 0, 1, true)
    Upgrade("SpikeA", 0, 2, 0, true)

    WaitForRound(57)
    Place("VillageB", true)
    Upgrade("VillageB", 0, 0, 2, true)
    Upgrade("VillageA", 0, 0, 1, true)

    WaitForRound(58)
    Upgrade("IceA", 1, 0, 0, true)

    WaitForRound(59)
    Upgrade("WizardA", 0, 1, 0, true)

    WaitForRound(60)
    Upgrade("VillageA", 0, 0, 1, true)

    WaitForRound(62)
    Upgrade("WizardA", 0, 1, 0, true)
    
    WaitForRound(63)
    Ability("WizardA",1,3)
    Upgrade("DruidA", 0, 1, 0, true)

    WaitForRound(65)
    Sell("FarmB")
    Place("FarmB", true)
    Upgrade("FarmB", 0, 2, 3, true)

    WaitForRound(66)
    Sell("FarmE")
    Upgrade("FarmB", 0, 0, 1, true)
    
    WaitForRound(67)
    Sell("FarmC")
    Sell("FarmA")
    Place("FarmA", true)
    Upgrade("FarmA", 0, 2, 3, true)

    WaitForRound(68)
    Sell("FarmD")
    Upgrade("FarmA", 0, 0, 1, true)
    Place("AceA", true)
    Upgrade("AceA", 2, 0, 3, true)
    Recenter("AceA", 1607, 654)
    Upgrade("AceA", 0, 0, 1, true)

    WaitForRound(73)
    Upgrade("AlchA", 1, 0, 1, true)

    WaitForRound(74)
    Place("AceB", true)
    Upgrade("VillageA", 2, 0, 0, true)
    Upgrade("VillageB", 0, 2, 0, true)
    Upgrade("AceB", 2, 0, 3, true)
    Recenter("AceB", 1607, 654)
    
    WaitForRound(78)
    Upgrade("AceB", 0, 0, 1, true)

    WaitForRound(82)
    Upgrade("DruidA", 0, 1, 0, true)

    WaitForRound(85)
    Upgrade("IceA", 1, 0, 0, true)

    WaitForRound(88)
    Upgrade("WizardB", 0, 0, 1, true)

    WaitForRound(92)
    Upgrade("WizardA", 0, 1, 0, true)
    Place("AceC", true)
    Upgrade("AceC", 2, 0, 4, true)
    Recenter("AceC", 1607, 654)

    WaitForRound(98)
    Sell("FarmA")
    Sell("FarmB")
    Upgrade("AceB", 0, 0, 1, true) */


}
