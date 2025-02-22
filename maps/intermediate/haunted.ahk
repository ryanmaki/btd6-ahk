HAUNTED_DATA := Map(
    "easy", [HauntedEasy, ""],
    "impoppable", [HauntedImpoppable, "benjamin"],
)

HauntedEasy() {
    global TS := Map(
        "Dart", ["dart", [610, 790]],
        "Druid A", ["druid", [1060, 786]],
        "Druid B", ["druid", [539, 786]],
        "Sniper", ["sniper", [839, 996]],
    )
    GeneralEasy()
}

HauntedImpoppable() {
    global TS := Map(
        "AceA", ["ace", [332, 425]],
        "AceB", ["ace", [493, 515]],
        "AlchA", ["alch", [456, 445]],
        "AlchB", ["alch", [426, 360]],
        "DartA", ["dart", [1055, 447]],
        "DruidA", ["druid", [607, 451]],
        "DruidB", ["druid", [607, 519]],
        "FarmA", ["farm", [307, 313]],
        "FarmB", ["farm", [307, 173]],
        "FarmC", ["farm", [470, 133]],
        "Hero", ["hero", [189, 96]],
        "SniperA", ["sniper", [682, 955]],
        "SniperB", ["sniper", [606, 953]],
        "VillageA", ["village", [448, 255]],
        "VillageB", ["village", [517, 339]],
    )
    IntermediateImpoppable()
}