SULFUR_SPRINGS_DATA := Map(
    "easy", [SulfurSpringsEasy, ""],
    "impoppable", [SulfurSpringsImpoppable, "benjamin"],
)

SulfurSpringsEasy() {
    global TS := Map(
        "Dart", ["dart", [1057, 97]],
        "Druid A", ["druid", [1035, 157]],
        "Druid B", ["druid", [934, 345]],
        "Sniper", ["sniper", [1330, 350]]
    )
    GeneralEasy()
}

SulfurSpringsImpoppable() {
    global TS := Map(
        "AceA", ["ace", [1316, 621]],
        "AceB", ["ace", [1485, 480]],
        "AlchA", ["alch", [1351, 543]],
        "AlchB", ["alch", [1375, 488]],
        "DartA", ["dart", [916, 324]],
        "DruidA", ["druid", [1203, 599]],
        "DruidB", ["druid", [977, 385]],
        "FarmA", ["farm", [1358, 283]],
        "FarmB", ["farm", [1521, 346]],
        "FarmC", ["farm", [1520, 206]],
        "Hero", ["hero", [537, 913]],
        "SniperA", ["sniper", [1253, 696]],
        "SniperB", ["sniper", [1178, 698]],
        "VillageA", ["village", [1310, 427]],
        "VillageB", ["village", [1257, 527]],
    )
    IntermediateImpoppable()
}