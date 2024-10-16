#Include maps\_include.ahk
#Include utils\_include.ahk
#Include data\_include.ahk

^!+j:: {
    TestHeroSelection()
}

^!+k:: {
    TestAbility()
}

^!+p:: {
    LogMsg("Script stopped")
    Reload()
}

TestHeroSelection() {
    for hero in HERO_SKINS {
        global hero := hero
        ChangeHero(hero)
    }
}

TestAbility() {
    Ability("sniper", "1", "4")
}
