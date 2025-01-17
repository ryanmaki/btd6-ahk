MONKEY_MEADOW_DATA := Map(
    "easy", [MonkeyMeadowEasy, ""],
    "hard", [MonkeyMeadowHard, "obyn"],

)

MonkeyMeadowEasy() {
    global TS := Map(
        "Dart", ["dart", [618, 404]],
        "Druid A", ["druid", [624, 498]],
        "Druid B", ["druid", [497, 660]],
        "Sniper", ["sniper", [1118, 681]],
    )
    GeneralEasy()
}

MonkeyMeadowHard() {
    global TS := Map(
        "AceA", ["ace", [943, 532]],
        "AceB", ["ace", [940, 447]],
        "DartA", ["dart", [622, 569]],
        "DruidA", ["druid", [624, 505]],
        "FarmA", ["farm", [929, 1009]],
        "FarmB", ["farm", [1091, 1009]],
        "FarmC", ["farm", [929, 869]],
        "FarmD", ["farm", [1091, 869]],
        "Hero", ["hero", [691, 559]],
        "SniperA", ["sniper", [805, 665]],
        "VillageA", ["village", [808, 517]],
    )
    GeneralHard()
}