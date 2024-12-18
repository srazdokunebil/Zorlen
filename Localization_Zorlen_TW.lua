﻿
Zorlen_TW_FileBuildNumber = 687

-- Chinese (traditional) Translation
-- If you want to translate this to another language, make sure the names of buffs and abilities are *EXACTLY* the same as in-game. Spelling, punctuation, upper/lowercase letters, etc. MUST BE EXACT. Also, any 'foreign' characters must be converted to UNICODE.
-- Unicode resource:
-- http://www.utf8-chartable.de/unicode-utf8-table.pl?start=128&number=1024&utf8=dec
-- http://home.tiscali.nl/t876506/utf8tbl.html
-- http://www.allegro-c.de/unicode/zcodes.htm
-- You will need to use the UTF-8 decimal numbers with a back slash in front of them in the same way that Å is represented by: \195\133


-- To lower the upkeep we will not be adding Localization for english words that do not break compatibility in other game clients.
-- This Localization is only added for compatibility so that it may work in non english game clients and not as a translation.

if GetLocale() ~= "zhTW" then return end

-- All file Localization
	LOCALIZATION_ZORLEN["EatMacroName"] = "進食"
	LOCALIZATION_ZORLEN["DrinkMacroName"] = "喝水"
	LOCALIZATION_ZORLEN["Conjured"] = "魔法"
	LOCALIZATION_ZORLEN["Water"] = "水"
	LOCALIZATION_ZORLEN["AllConjuredWater"] = "魔法.*水"
	LOCALIZATION_ZORLEN["well_fed"] = "持續"
	LOCALIZATION_ZORLEN["HitsOrCritsArray"] = {"你的(.+)擊中(.*)造成(%d+)點", "你的(.+)對(.*)致命一擊造成(%d+)點"}
	LOCALIZATION_ZORLEN["EnemyDies"] = "^(.*)死亡了。$"
	LOCALIZATION_ZORLEN["Rank"] = "等級"
	LOCALIZATION_ZORLEN["sit"] = "坐下"
	LOCALIZATION_ZORLEN["You_dodge"] = "(.*)發起了攻擊。你閃躲開了。"
	LOCALIZATION_ZORLEN["ImmuneArray"] = {"你的(.+)施放失敗。(.*)對此免疫。"}
	LOCALIZATION_ZORLEN["no_weapons_equipped"] = "必須裝備近戰武器做為主手武器"
	LOCALIZATION_ZORLEN["dodged"] = "你的(.+)被(.*)閃躲過去。"
	LOCALIZATION_ZORLEN["dodges"] = "你發起了攻擊。(.*)閃躲開了。"
	--LOCALIZATION_ZORLEN["pet_is_not_dead"] = ""
	--LOCALIZATION_ZORLEN["pet_is_dead"] = ""
	LOCALIZATION_ZORLEN["You fail to perform (.+): A more powerful spell is already active."] = "你施放(.+)失敗：已經有一個更強大的法術在發揮作用"
	--LOCALIZATION_ZORLEN["Asleep"] = ""
	LOCALIZATION_ZORLEN["RequiresLevel"] = "需要等級"
	
	--LOCALIZATION_ZORLEN["GreaterHealingWard"] = ""
	--LOCALIZATION_ZORLEN["LavaSpoutTotem"] = ""
	
	LOCALIZATION_ZORLEN["HealingBonusWordsArray"] = {"治療", "治療法術", "提高神聖效果"}
	LOCALIZATION_ZORLEN["HealingBonusPhraseArray"] = {"提高法術和魔法效果所造成的治療效果，最多(%d+)點。"}
	
	LOCALIZATION_ZORLEN["SpellDamageAndHealingBonusWordsArray"] = {"治療和法術傷害", "傷害及治療法術", "贊達拉魔精徽記"}
	LOCALIZATION_ZORLEN["SpellDamageAndHealingBonusPhraseArray"] = {"提高法術和魔法效果所造成的傷害和治療效果，最多(%d+)點。"}
	
	LOCALIZATION_ZORLEN["SpellDamageBonusWordsArray"] = {"法術傷害"}
	LOCALIZATION_ZORLEN["SpellDamageBonusPhraseArray"] = {"提高法術和魔法效果所造成的傷害效果，最多(%d+)點。"}
	LOCALIZATION_ZORLEN["BrilliantWizardOil"] = "卓越巫師之油"
	LOCALIZATION_ZORLEN["WizardOil"] = "巫師之油"
	LOCALIZATION_ZORLEN["LesserWizardOil"] = "次級巫師之油"
	LOCALIZATION_ZORLEN["MinorWizardOil"] = "初級巫師之油"
	--LOCALIZATION_ZORLEN["SupremePower"] = ""
	LOCALIZATION_ZORLEN["GreaterArcaneElixir"] = "強效祕法藥劑"
	LOCALIZATION_ZORLEN["ArcaneElixir"] = "祕法藥劑"
	
	LOCALIZATION_ZORLEN["ShadowDamageBonusWordsArray"] = {"陰影傷害"}
	LOCALIZATION_ZORLEN["ShadowDamageBonusPhraseArray"] = {"提高陰影法術和效果所造成的傷害，最多(%d+)點。"}
	LOCALIZATION_ZORLEN["ShadowPower"] = "暗影之力"
	
-- Battleground Names
	LOCALIZATION_ZORLEN["WarsongGulch"] = "戰歌峽谷"
	LOCALIZATION_ZORLEN["AlteracValley"] = "奧特蘭克山谷"
	LOCALIZATION_ZORLEN["ArathiBasin"] = "阿拉希盆地"
	
-- Raid Target Names
	LOCALIZATION_ZORLEN["WhiteSkull"] = "頭顱"
	LOCALIZATION_ZORLEN["RedX"] = "十字"
	LOCALIZATION_ZORLEN["BlueSquare"] = "方形"
	LOCALIZATION_ZORLEN["WhiteCrescentMoon"] = "月亮"
	LOCALIZATION_ZORLEN["GreenTriangle"] = "三角"
	LOCALIZATION_ZORLEN["PurpleDiamond"] = "菱形"
	LOCALIZATION_ZORLEN["OrangeCircle"] = "圈圈"
	LOCALIZATION_ZORLEN["YellowStar"] = "星星"

-- Example: /script Zorlen_GiveName_OffHandType()
-- The example above will give the name required for ["Shields
-- You must have a shield equipped to get the correct name.
-- You can also get the correct name from the auction house filters under the Armor section.
	LOCALIZATION_ZORLEN["Shields"] = "盾牌"
	
-- Example: /script Zorlen_GiveName_MainHandType()
-- The example above will give the name required for the weapons below.
-- You must have the weapon equipped to get the correct name.
-- You can also get the correct names from the auction house filters under the Weapon section.
	LOCALIZATION_ZORLEN["Daggers"] = "匕首"
	LOCALIZATION_ZORLEN["One-Handed Swords"] = "單手劍"
	LOCALIZATION_ZORLEN["Two-Handed Swords"] = "雙手劍"
	LOCALIZATION_ZORLEN["One-Handed Axes"] = "單手斧"
	LOCALIZATION_ZORLEN["Two-Handed Axes"] = "雙手斧"
	LOCALIZATION_ZORLEN["One-Handed Maces"] = "單手錘"
	LOCALIZATION_ZORLEN["Two-Handed Maces"] = "雙手錘"
	LOCALIZATION_ZORLEN["Polearms"] = "長柄武器"
	LOCALIZATION_ZORLEN["Staves"] = "法杖"
	LOCALIZATION_ZORLEN["Fist Weapons"] = "拳套"
	LOCALIZATION_ZORLEN["Fishing Pole"] = "魚竿"

-- Item Sub Types:
	LOCALIZATION_ZORLEN["Bag"] = "容器"
	LOCALIZATION_ZORLEN["Soul Bag"] = "靈魂碎片背包"


-- Food Item Tool Tip Text:
	LOCALIZATION_ZORLEN["FoodToolTipTextAny"] = "使用： 在(%d+)秒內恢復總計(%d+)點生命力，.*坐姿"
	LOCALIZATION_ZORLEN["FoodToolTipText3180"] = "使用： 在30秒內恢復總計3180點生命力，.*坐姿"
	LOCALIZATION_ZORLEN["FoodToolTipText2148"] = "使用： 在30秒內恢復總計2148點生命力，.*坐姿"
	LOCALIZATION_ZORLEN["FoodToolTipText1392"] = "使用： 在30秒內恢復總計1392點生命力，.*坐姿"
	LOCALIZATION_ZORLEN["FoodToolTipText874"] = "使用： 在27秒內恢復總計874點生命力，.*坐姿"
	LOCALIZATION_ZORLEN["FoodToolTipText552"] = "使用： 在24秒內恢復總計552點生命力，.*坐姿"
	LOCALIZATION_ZORLEN["FoodToolTipText243"] = "使用： 在21秒內恢復總計243點生命力，.*坐姿"
	LOCALIZATION_ZORLEN["FoodToolTipText61"] = "使用： 在18秒內恢復總計61點生命力，.*坐姿"
-- Drink Item Tool Tip Text:
	LOCALIZATION_ZORLEN["DrinkToolTipTextAny"] = "使用： 在(%d+)秒內恢復總計(%d+)點法力，.*坐姿"
	LOCALIZATION_ZORLEN["DrinkToolTipText4200"] = "使用： 在30秒內恢復總計4200點法力，.*坐姿"
	LOCALIZATION_ZORLEN["DrinkToolTipText2934"] = "用： 在30秒內恢復總計2934點法力，.*坐姿"
	LOCALIZATION_ZORLEN["DrinkToolTipText1992"] = "使用： 在30秒內恢復總計1992點法力，.*坐姿"
	LOCALIZATION_ZORLEN["DrinkToolTipText1344"] = "使用： 在27秒內恢復總計1344點法力，.*坐姿"
	LOCALIZATION_ZORLEN["DrinkToolTipText835"] = "使用： 在24秒內恢復總計835點法力，.*坐姿"
	LOCALIZATION_ZORLEN["DrinkToolTipText436"] = "使用： 在21秒內恢復總計436點法力，.*坐姿"
	LOCALIZATION_ZORLEN["DrinkToolTipText151"] = "使用： 在18秒內恢復總計151點法力，.*坐姿"
-- Drink and Food --add by longbow
	LOCALIZATION_ZORLEN["FoodDrinkToolTipText30"] = "使用： 在(%d+)秒內恢復總計(%d+)點生命力和(%d+)點法力，.*坐姿"
	LOCALIZATION_ZORLEN["FoodDrinkToolTipText20"] = "使用： 每秒恢復總生命力和法力的5%%，.*坐姿"
-- Zorlen_Other.lua file Localization
	LOCALIZATION_ZORLEN["Attack"] = "攻擊"
	LOCALIZATION_ZORLEN["Throw"] = "投擲"
	LOCALIZATION_ZORLEN["ShootBow"] = "弓射擊"
	LOCALIZATION_ZORLEN["ShootCrossbow"] = "弩射擊"
	LOCALIZATION_ZORLEN["ShootGun"] = "槍械射擊"
	LOCALIZATION_ZORLEN["Shoot"] = "射擊"
-- Human Racial
	LOCALIZATION_ZORLEN["Perception"] = "感知"
-- Dwarf Racial
	LOCALIZATION_ZORLEN["FindTreasure"] = "尋找財寶"
	LOCALIZATION_ZORLEN["Stoneform"] = "石像形態"
-- Gnome Racial
	LOCALIZATION_ZORLEN["EscapeArtist"] = "脫逃大師"
-- Night Elf Racial
	LOCALIZATION_ZORLEN["Shadowmeld"] = "影遁"
-- Orc Racial
	LOCALIZATION_ZORLEN["BloodFury"] = "血性狂暴"
-- Undead Racial
	LOCALIZATION_ZORLEN["Cannibalize"] = "食屍"
	LOCALIZATION_ZORLEN["WillOfTheForsaken"] = "亡靈意志"
-- Tauren Racial
	LOCALIZATION_ZORLEN["WarStomp"] = "戰爭踐踏"
-- Troll Racial
	LOCALIZATION_ZORLEN["Berserking"] = "狂暴"



-- Zorlen_Pets.lua file Localization
-- Hunter Pets
	LOCALIZATION_ZORLEN["Dash"] = "突進"
	--LOCALIZATION_ZORLEN["Dive"] = ""
	LOCALIZATION_ZORLEN["Bite"] = "撕咬"
	LOCALIZATION_ZORLEN["Claw"] = "爪擊"
	--LOCALIZATION_ZORLEN["Cower"] = ""
	--LOCALIZATION_ZORLEN["Growl"] = ""
	--LOCALIZATION_ZORLEN["Prowl"] = ""
	--LOCALIZATION_ZORLEN["Charge"] = ""
	--LOCALIZATION_ZORLEN["Screech"] = ""
	--LOCALIZATION_ZORLEN["FuriousHowl"] = ""
	--LOCALIZATION_ZORLEN["LightningBreath"] = ""
	--LOCALIZATION_ZORLEN["ShellShield"] = ""
	--LOCALIZATION_ZORLEN["Thunderstomp"] = ""
	--LOCALIZATION_ZORLEN["ScorpidPoison"] = ""
-- Warlock Pets
	--LOCALIZATION_ZORLEN["Felhunter"] = ""
	--LOCALIZATION_ZORLEN["Imp"] = ""
	--LOCALIZATION_ZORLEN["Succubus"] = ""
	--LOCALIZATION_ZORLEN["Voidwalker"] = ""
	--LOCALIZATION_ZORLEN["BloodPact"] = ""
	--LOCALIZATION_ZORLEN["FireShield"] = ""
	--LOCALIZATION_ZORLEN["Firebolt"] = ""
	--LOCALIZATION_ZORLEN["PhaseShift"] = ""
	--LOCALIZATION_ZORLEN["ConsumeShadows"] = ""
	--LOCALIZATION_ZORLEN["Sacrifice"] = ""
	--LOCALIZATION_ZORLEN["Suffering"] = ""
	--LOCALIZATION_ZORLEN["Torment"] = ""
	--LOCALIZATION_ZORLEN["DevourMagic"] = ""
	--LOCALIZATION_ZORLEN["Paranoia"] = ""
	--LOCALIZATION_ZORLEN["SpellLock"] = ""
	--LOCALIZATION_ZORLEN["TaintedBlood"] = ""
	--LOCALIZATION_ZORLEN["LashOfPain"] = ""
	--LOCALIZATION_ZORLEN["Seduction"] = ""
	--LOCALIZATION_ZORLEN["SoothingKiss"] = ""
	--LOCALIZATION_ZORLEN["LesserInvisibility"] = ""



-- Zorlen_Hunter.lua file Localization
	--LOCALIZATION_ZORLEN["FeedPet"] = ""
	LOCALIZATION_ZORLEN["ImprovedAspectOfTheHawk"] = "強化雄鷹守護"
	LOCALIZATION_ZORLEN["ImprovedMendPet"] = "強化治療寵物"
	LOCALIZATION_ZORLEN["MendPet"] = "治療寵物"
	LOCALIZATION_ZORLEN["CallPet"] = "召喚寵物"
	LOCALIZATION_ZORLEN["RevivePet"] = "復活寵物"
	LOCALIZATION_ZORLEN["DismissPet"] = "解散野獸"
	LOCALIZATION_ZORLEN["AutoShot"] = "自動射擊"
	LOCALIZATION_ZORLEN["MongooseBite"] = "貓鼬撕咬"
	LOCALIZATION_ZORLEN["ArcaneShot"] = "祕法射擊"
	LOCALIZATION_ZORLEN["ConcussiveShot"] = "震盪射擊"
	LOCALIZATION_ZORLEN["RaptorStrike"] = "猛禽一擊"
	LOCALIZATION_ZORLEN["SerpentSting"] = "毒蛇釘刺"
	LOCALIZATION_ZORLEN["ViperSting"] = "腹蛇釘刺"
	LOCALIZATION_ZORLEN["ScorpidSting"] = "毒蠍釘刺"
	LOCALIZATION_ZORLEN["DistractingShot"] = "擾亂射擊"
	LOCALIZATION_ZORLEN["AimedShot"] = "瞄準射擊"
	LOCALIZATION_ZORLEN["HuntersMark"] = "獵人印記"
	LOCALIZATION_ZORLEN["AspectOfTheHawk"] = "雄鷹守護"
	LOCALIZATION_ZORLEN["AspectOfTheMonkey"] = "靈猴守護"
	LOCALIZATION_ZORLEN["AspectOfTheCheetah"] = "獵豹守護"
	LOCALIZATION_ZORLEN["AspectOfThePack"] = "豹群守護"
	LOCALIZATION_ZORLEN["AspectOfTheWild"] = "野性守護"
	LOCALIZATION_ZORLEN["AspectOfTheBeast"] = "野獸守護"
	LOCALIZATION_ZORLEN["WingClip"] = "摔絆"
	LOCALIZATION_ZORLEN["FreezingTrap"] = "冰凍陷阱"
	LOCALIZATION_ZORLEN["FrostTrap"] = "冰霜陷阱"
	LOCALIZATION_ZORLEN["ExplosiveTrap"] = "爆炸陷阱"
	LOCALIZATION_ZORLEN["ImmolationTrap"] = "獻祭陷阱"
	LOCALIZATION_ZORLEN["FeignDeath"] = "假死"
	LOCALIZATION_ZORLEN["Counterattack"] = "反擊"
	LOCALIZATION_ZORLEN["TranquilizingShot"] = "寧神射擊"
	LOCALIZATION_ZORLEN["Disengage"] = "逃脫"
	LOCALIZATION_ZORLEN["EyesOfTheBeast"] = "野獸之眼"
	LOCALIZATION_ZORLEN["BeastLore"] = "野獸知識"
	LOCALIZATION_ZORLEN["TrackBeasts"] = "追蹤野獸"
	LOCALIZATION_ZORLEN["TrackDemons"] = "追蹤惡魔"
	LOCALIZATION_ZORLEN["TrackDragonkin"] = "追蹤龍類"
	LOCALIZATION_ZORLEN["TrackElementals"] = "追蹤元素生物"
	LOCALIZATION_ZORLEN["TrackGiants"] = "追蹤巨人"
	LOCALIZATION_ZORLEN["TrackHumanoids"] = "追蹤人型生物"
	LOCALIZATION_ZORLEN["TrackUndead"] = "追蹤亡靈"
	LOCALIZATION_ZORLEN["TrackHidden"] = "追蹤隱藏生物"
	LOCALIZATION_ZORLEN["BestialWrath"] = "狂野怒火"
	LOCALIZATION_ZORLEN["TrueshotAura"] = "強擊光環"
	LOCALIZATION_ZORLEN["ScatterShot"] = "驅散射擊"
	LOCALIZATION_ZORLEN["WyvernSting"] = "翼龍釘刺"
	LOCALIZATION_ZORLEN["Deterrence"] = "威懾"
	LOCALIZATION_ZORLEN["EagleEye"] = "鷹眼術"
	LOCALIZATION_ZORLEN["RapidFire"] = "急速射擊"
	LOCALIZATION_ZORLEN["MultiShot"] = "多重射擊"
	LOCALIZATION_ZORLEN["Flare"] = "照明彈"
	LOCALIZATION_ZORLEN["ScareBeast"] = "恐嚇野獸"
	LOCALIZATION_ZORLEN["Volley"] = "亂射"
	LOCALIZATION_ZORLEN["Intimidation"] = "脅迫"



-- Zorlen_Warlock.lua file Localization
	--LOCALIZATION_ZORLEN["SoulSiphon"] = ""
	--LOCALIZATION_ZORLEN["SeedOfCorruption"] = ""
	--LOCALIZATION_ZORLEN["FelArmor"] = ""
	--LOCALIZATION_ZORLEN["RitualOfSouls"] = ""
	--LOCALIZATION_ZORLEN["Soulshatter"] = ""
	--LOCALIZATION_ZORLEN["Incinerate"] = ""
	--LOCALIZATION_ZORLEN["UnstableAffliction"] = ""
	--LOCALIZATION_ZORLEN["DemonicAegis"] = ""
	--LOCALIZATION_ZORLEN["SummonFelGuard"] = ""
	--LOCALIZATION_ZORLEN["Shadowfury"] = ""
	
	--LOCALIZATION_ZORLEN["Bane"] = ""
	--LOCALIZATION_ZORLEN["AmplifyCurse"] = ""
	--LOCALIZATION_ZORLEN["CurseOfAgony"] = ""
	--LOCALIZATION_ZORLEN["CurseOfDoom"] = ""
	--LOCALIZATION_ZORLEN["CurseOfShadow"] = ""
	--LOCALIZATION_ZORLEN["CurseOfTheElements"] = ""
	--LOCALIZATION_ZORLEN["CurseOfWeakness"] = ""
	--LOCALIZATION_ZORLEN["CurseOfExhaustion"] = ""
	--LOCALIZATION_ZORLEN["CurseOfRecklessness"] = ""
	--LOCALIZATION_ZORLEN["CurseOfTongues"] = ""
	--LOCALIZATION_ZORLEN["Corruption"] = ""
	--LOCALIZATION_ZORLEN["ImprovedCorruption"] = ""
	--LOCALIZATION_ZORLEN["Immolate"] = ""
	--LOCALIZATION_ZORLEN["SiphonLife"] = ""
	--LOCALIZATION_ZORLEN["DrainLife"] = ""
	--LOCALIZATION_ZORLEN["DrainMana"] = ""
	--LOCALIZATION_ZORLEN["Hellfire"] = ""
	--LOCALIZATION_ZORLEN["RainOfFire"] = ""
	--LOCALIZATION_ZORLEN["DrainSoul"] = ""
	--LOCALIZATION_ZORLEN["LifeTap"] = ""
	--LOCALIZATION_ZORLEN["ImprovedLifeTap"] = ""
	--LOCALIZATION_ZORLEN["DarkPact"] = ""
	--LOCALIZATION_ZORLEN["Nightfall"] = ""
	--LOCALIZATION_ZORLEN["ShadowBolt"] = ""
	--LOCALIZATION_ZORLEN["Banish"] = ""
	--LOCALIZATION_ZORLEN["Conflagrate"] = ""
	--LOCALIZATION_ZORLEN["CreateFirestoneLesser"] = ""
	--LOCALIZATION_ZORLEN["CreateFirestone"] = ""
	--LOCALIZATION_ZORLEN["CreateFirestoneGreater"] = ""
	--LOCALIZATION_ZORLEN["CreateFirestoneMajor"] = ""
	--LOCALIZATION_ZORLEN["CreateHealthstoneMinor"] = ""
	--LOCALIZATION_ZORLEN["CreateHealthstoneLesser"] = ""
	--LOCALIZATION_ZORLEN["CreateHealthstone"] = ""
	--LOCALIZATION_ZORLEN["CreateHealthstoneGreater"] = ""
	--LOCALIZATION_ZORLEN["CreateHealthstoneMajor"] = ""
	--LOCALIZATION_ZORLEN["CreateSoulstoneMinor"] = ""
	--LOCALIZATION_ZORLEN["CreateSoulstoneLesser"] = ""
	--LOCALIZATION_ZORLEN["CreateSoulstone"] = ""
	--LOCALIZATION_ZORLEN["CreateSoulstoneGreater"] = ""
	--LOCALIZATION_ZORLEN["CreateSoulstoneMajor"] = ""
	--LOCALIZATION_ZORLEN["CreateSpellstone"] = ""
	--LOCALIZATION_ZORLEN["CreateSpellstoneGreater"] = ""
	--LOCALIZATION_ZORLEN["CreateSpellstoneMajor"] = ""
	--LOCALIZATION_ZORLEN["DeathCoil"] = ""
	--LOCALIZATION_ZORLEN["DemonArmor"] = ""
	--LOCALIZATION_ZORLEN["DemonSkin"] = ""
	--LOCALIZATION_ZORLEN["DemonicSacrifice"] = ""
	--LOCALIZATION_ZORLEN["DetectLesserInvisibility"] = ""
	--LOCALIZATION_ZORLEN["DetectInvisibility"] = ""
	--LOCALIZATION_ZORLEN["DetectGreaterInvisibility"] = ""
	--LOCALIZATION_ZORLEN["EnslaveDemon"] = ""
	--LOCALIZATION_ZORLEN["EyeOfKilrogg"] = ""
	--LOCALIZATION_ZORLEN["Fear"] = ""
	--LOCALIZATION_ZORLEN["FelDomination"] = ""
	--LOCALIZATION_ZORLEN["HealthFunnel"] = ""
	--LOCALIZATION_ZORLEN["HowlOfTerror"] = ""
	--LOCALIZATION_ZORLEN["Inferno"] = ""
	--LOCALIZATION_ZORLEN["RitualOfDoom"] = ""
	--LOCALIZATION_ZORLEN["RitualOfSummoning"] = ""
	--LOCALIZATION_ZORLEN["SearingPain"] = ""
	--LOCALIZATION_ZORLEN["SenseDemons"] = ""
	--LOCALIZATION_ZORLEN["ShadowWard"] = ""
	--LOCALIZATION_ZORLEN["Shadowburn"] = ""
	--LOCALIZATION_ZORLEN["SoulFire"] = ""
	--LOCALIZATION_ZORLEN["SoulLink"] = ""
	--LOCALIZATION_ZORLEN["SummonDreadsteed"] = ""
	--LOCALIZATION_ZORLEN["SummonFelhunter"] = ""
	--LOCALIZATION_ZORLEN["SummonFelsteed"] = ""
	--LOCALIZATION_ZORLEN["SummonImp"] = ""
	--LOCALIZATION_ZORLEN["SummonSuccubus"] = ""
	--LOCALIZATION_ZORLEN["SummonVoidwalker"] = ""
	--LOCALIZATION_ZORLEN["UnendingBreath"] = ""
	--LOCALIZATION_ZORLEN["FelConcentration"] = ""



-- Zorlen_Druid.lua file Localization
	LOCALIZATION_ZORLEN["TravelForm"] = "旅行形態"
	LOCALIZATION_ZORLEN["MoonkinForm"] = "梟獸形態"
	LOCALIZATION_ZORLEN["BearForm"] = "熊形態"
	LOCALIZATION_ZORLEN["DireBearForm"] = "巨熊形態"
	LOCALIZATION_ZORLEN["CatForm"] = "獵豹形態"
	LOCALIZATION_ZORLEN["AquaticForm"] = "水棲形態"
	LOCALIZATION_ZORLEN["ChallengingRoar"] = "挑戰咆哮"
	LOCALIZATION_ZORLEN["DemoralizingRoar"] = "挫志咆哮"
	LOCALIZATION_ZORLEN["AbolishPoison"] = "驅毒術"
	LOCALIZATION_ZORLEN["Barkskin"] = "樹皮術"
	LOCALIZATION_ZORLEN["Bash"] = "重擊"
	LOCALIZATION_ZORLEN["Claw"] = "爪擊"
	LOCALIZATION_ZORLEN["Cower"] = "畏縮"
	LOCALIZATION_ZORLEN["Dash"] = "急奔"
	LOCALIZATION_ZORLEN["Enrage"] = "狂怒"
	LOCALIZATION_ZORLEN["EntanglingRoots"] = "糾纏根鬚"
	LOCALIZATION_ZORLEN["FaerieFire"] = "精靈之火"
	LOCALIZATION_ZORLEN["FaerieFireFeral"] = "精靈之火 (野性)"
	LOCALIZATION_ZORLEN["FeralCharge"] = "野性衝鋒"
	LOCALIZATION_ZORLEN["FerociousBite"] = "兇猛撕咬"
	LOCALIZATION_ZORLEN["FrenziedRegeneration"] = "狂暴回復"
	LOCALIZATION_ZORLEN["GiftOfTheWild"] = "野性賜福"
	LOCALIZATION_ZORLEN["HealingTouch"] = "治療之觸"
	LOCALIZATION_ZORLEN["Hibernate"] = "休眠"
	LOCALIZATION_ZORLEN["Hurricane"] = "颶風"
	LOCALIZATION_ZORLEN["Innervate"] = "啟動"
	LOCALIZATION_ZORLEN["InsectSwarm"] = "蟲群"
	LOCALIZATION_ZORLEN["LeaderOfThePack"] = "獸群領袖"
	LOCALIZATION_ZORLEN["MarkOfTheWild"] = "野性印記"
	LOCALIZATION_ZORLEN["Maul"] = "槌擊"
	LOCALIZATION_ZORLEN["Moonfire"] = "月火術"
	LOCALIZATION_ZORLEN["NaturesGrasp"] = "自然之握"
	LOCALIZATION_ZORLEN["NaturesSwiftness"] = "自然迅捷"
	LOCALIZATION_ZORLEN["OmenOfClarity"] = "清晰預兆"
	LOCALIZATION_ZORLEN["Pounce"] = "突襲"
	LOCALIZATION_ZORLEN["Prowl"] = "潛行"
	LOCALIZATION_ZORLEN["Rake"] = "掃擊"
	LOCALIZATION_ZORLEN["Ravage"] = "毀滅"
	LOCALIZATION_ZORLEN["Rebirth"] = "複生"
	LOCALIZATION_ZORLEN["Regrowth"] = "癒合"
	LOCALIZATION_ZORLEN["Rejuvenation"] = "回春術"
	LOCALIZATION_ZORLEN["RemoveCurse"] = "解除詛咒"
	LOCALIZATION_ZORLEN["Rip"] = "撕扯"
	LOCALIZATION_ZORLEN["Shred"] = "撕碎"
	LOCALIZATION_ZORLEN["SootheAnimal"] = "安撫動物"
	LOCALIZATION_ZORLEN["Starfire"] = "星火術"
	LOCALIZATION_ZORLEN["Swipe"] = "揮擊"
	LOCALIZATION_ZORLEN["Thorns"] = "荊棘術"
	LOCALIZATION_ZORLEN["TigersFury"] = "猛虎之怒"
	LOCALIZATION_ZORLEN["TrackHumanoids"] = "追蹤人型生物"
	LOCALIZATION_ZORLEN["Tranquility"] = "寧靜"
	LOCALIZATION_ZORLEN["Wrath"] = "憤怒"
	LOCALIZATION_ZORLEN["ImprovedWrath"] = "強化憤怒"
	LOCALIZATION_ZORLEN["ImprovedNaturesGrasp"] = "強化自然之握"
	LOCALIZATION_ZORLEN["ImprovedEntanglingRoots"] = "強化糾纏根鬚"
	LOCALIZATION_ZORLEN["ImprovedMoonfire"] = "強化月火術"
	LOCALIZATION_ZORLEN["NaturalWeapons"] = "武器平衡"
	LOCALIZATION_ZORLEN["NaturalShapeshifter"] = "自然變形"
	LOCALIZATION_ZORLEN["ImprovedThorns"] = "強化荊棘術"
	LOCALIZATION_ZORLEN["NaturesReach"] = "自然延伸"
	LOCALIZATION_ZORLEN["Vengeance"] = "復仇"
	LOCALIZATION_ZORLEN["ImprovedStarfire"] = "強化星火術"
	LOCALIZATION_ZORLEN["NaturesGrace"] = "自然之賜"
	LOCALIZATION_ZORLEN["Moonglow"] = "月光"
	LOCALIZATION_ZORLEN["Moonfury"] = "月怒"
	LOCALIZATION_ZORLEN["Ferocity"] = "兇暴"
	LOCALIZATION_ZORLEN["FeralAggression"] = "野性侵略"
	LOCALIZATION_ZORLEN["FeralInstinct"] = "野性本能"
	LOCALIZATION_ZORLEN["BrutalImpact"] = "野蠻衝撞"
	LOCALIZATION_ZORLEN["ThickHide"] = "厚皮"
	LOCALIZATION_ZORLEN["FelineSwiftness"] = "豹之迅捷"
	LOCALIZATION_ZORLEN["SharpenedClaws"] = "鋒利獸爪"
	LOCALIZATION_ZORLEN["ImprovedShred"] = "強化撕碎"
	LOCALIZATION_ZORLEN["PredatoryStrikes"] = "猛獸攻擊"
	LOCALIZATION_ZORLEN["BloodFrenzy"] = "血之狂暴"
	LOCALIZATION_ZORLEN["PrimalFury"] = "原始狂怒"
	LOCALIZATION_ZORLEN["SavageFury"] = "野蠻暴怒"
	LOCALIZATION_ZORLEN["HeartOfTheWild"] = "野性之心"
	LOCALIZATION_ZORLEN["ImprovedMarkOfTheWild"] = "強化野性印記"
	LOCALIZATION_ZORLEN["Furor"] = "激怒"
	LOCALIZATION_ZORLEN["ImprovedHealingTouch"] = "強化治療之觸"
	LOCALIZATION_ZORLEN["NaturesFocus"] = "自然集中"
	LOCALIZATION_ZORLEN["ImprovedEnrage"] = "強化狂怒"
	LOCALIZATION_ZORLEN["Reflection"] = "反射"
	LOCALIZATION_ZORLEN["Subtlety"] = "微妙"
	LOCALIZATION_ZORLEN["TranquilSpirit"] = "寧靜之魂"
	LOCALIZATION_ZORLEN["ImprovedRejuvenation"] = "強化回春術"
	LOCALIZATION_ZORLEN["GiftOfNature"] = "自然賜福"
	LOCALIZATION_ZORLEN["ImprovedTranquility"] = "強化寧靜"
	LOCALIZATION_ZORLEN["ImprovedRegrowth"] = "強化癒合"
	LOCALIZATION_ZORLEN["Swiftmend"] = "迅癒"



-- Zorlen_Mage.lua file Localization
	LOCALIZATION_ZORLEN["ConjuredCinnamonRoll"] = "魔法肉桂麵包"
	LOCALIZATION_ZORLEN["ConjuredSweetRoll"] = "魔法甜麵包"
	LOCALIZATION_ZORLEN["ConjuredSourdough"] = "魔法發酵麵包"
	LOCALIZATION_ZORLEN["ConjuredPumpernickel"] = "魔法粗麵包"
	LOCALIZATION_ZORLEN["ConjuredRye"] = "魔法黑麵包"
	LOCALIZATION_ZORLEN["ConjuredBread"] = "魔法麵包"
	LOCALIZATION_ZORLEN["ConjuredMuffin"] = "魔法鬆餅"
	LOCALIZATION_ZORLEN["ConjuredCrystalWater"] = "魔法晶水"
	LOCALIZATION_ZORLEN["ConjuredSparklingWater"] = "魔法蘇打水"
	LOCALIZATION_ZORLEN["ConjuredMineralWater"] = "魔法礦泉水"
	LOCALIZATION_ZORLEN["ConjuredSpringWater"] = "魔法泉水"
	LOCALIZATION_ZORLEN["ConjuredPurifiedWater"] = "魔法純淨水"
	LOCALIZATION_ZORLEN["ConjuredFreshWater"] = "魔法淡水"
	LOCALIZATION_ZORLEN["ConjuredWater"] = "魔法水"
	LOCALIZATION_ZORLEN["AmplifyMagic"] = "魔法增效"
	LOCALIZATION_ZORLEN["ArcaneBrilliance"] = "祕法光輝"
	LOCALIZATION_ZORLEN["ArcaneExplosion"] = "魔爆術"
	LOCALIZATION_ZORLEN["ArcaneIntellect"] = "祕法智慧"
	LOCALIZATION_ZORLEN["ArcaneMissiles"] = "祕法飛彈"
	LOCALIZATION_ZORLEN["ArcanePower"] = "祕法強化"
	LOCALIZATION_ZORLEN["BlastWave"] = "衝擊波"
	LOCALIZATION_ZORLEN["Blink"] = "閃現術"
	LOCALIZATION_ZORLEN["Blizzard"] = "暴風雪"
	LOCALIZATION_ZORLEN["ColdSnap"] = "急速冷卻"
	LOCALIZATION_ZORLEN["Combustion"] = "燃燒"
	LOCALIZATION_ZORLEN["ConeOfCold"] = "冰錐術"
	LOCALIZATION_ZORLEN["ConjureFood"] = "造食術"
	LOCALIZATION_ZORLEN["ConjureManaAgate"] = "製造法力瑪瑙"
	LOCALIZATION_ZORLEN["ConjureManaJade"] = "製造魔法翡翠"
	LOCALIZATION_ZORLEN["ConjureManaCitrine"] = "製造魔法黃寶石"
	LOCALIZATION_ZORLEN["ConjureManaRuby"] = "製造魔法紅寶石"
	LOCALIZATION_ZORLEN["ConjureWater"] = "造水術"
	LOCALIZATION_ZORLEN["Counterspell"] = "魔法反制"
	LOCALIZATION_ZORLEN["DampenMagic"] = "魔法抑制"
	LOCALIZATION_ZORLEN["DetectMagic"] = "偵測魔法"
	LOCALIZATION_ZORLEN["Evocation"] = "喚醒"
	LOCALIZATION_ZORLEN["FireBlast"] = "火焰衝擊"
	LOCALIZATION_ZORLEN["FireWard"] = "防護火焰結界"
	LOCALIZATION_ZORLEN["Fireball"] = "火球術"
	LOCALIZATION_ZORLEN["Flamestrike"] = "烈焰風暴"
	LOCALIZATION_ZORLEN["FrostArmor"] = "霜甲術"
	LOCALIZATION_ZORLEN["FrostNova"] = "冰霜新星"
	LOCALIZATION_ZORLEN["FrostWard"] = "防護冰霜結界"
	LOCALIZATION_ZORLEN["Frostbolt"] = "寒冰箭"
	LOCALIZATION_ZORLEN["IceArmor"] = "冰甲術"
	LOCALIZATION_ZORLEN["IceBarrier"] = "寒冰護體"
	LOCALIZATION_ZORLEN["IceBlock"] = "寒冰屏障"
	LOCALIZATION_ZORLEN["MageArmor"] = "魔甲術"
	LOCALIZATION_ZORLEN["ManaShield"] = "法力護盾"
	LOCALIZATION_ZORLEN["Polymorph"] = "變形術"
	LOCALIZATION_ZORLEN["PortalDarnassus"] = "傳送門： 達納蘇斯"
	LOCALIZATION_ZORLEN["PortalIronforge"] = "傳送門： 鐵爐堡"
	LOCALIZATION_ZORLEN["PortalOrgrimmar"] = "傳送門： 奧格瑪"
	LOCALIZATION_ZORLEN["PortalStormwind"] = "傳送門： 暴風城"
	LOCALIZATION_ZORLEN["PortalThunderBluff"] = "傳送門： 雷霆崖"
	LOCALIZATION_ZORLEN["PortalUndercity"] = "傳送門： 幽暗城"
	LOCALIZATION_ZORLEN["TeleportDarnassus"] = "傳送： 達納蘇斯"
	LOCALIZATION_ZORLEN["TeleportIronforge"] = "傳送： 鐵爐堡"
	LOCALIZATION_ZORLEN["TeleportOrgrimmar"] = "傳送： 奧格瑪"
	LOCALIZATION_ZORLEN["TeleportStormwind"] = "傳送： 暴風城"
	LOCALIZATION_ZORLEN["TeleportThunderBluff"] = "傳送： 雷霆崖"
	LOCALIZATION_ZORLEN["TeleportUndercity"] = "傳送： 幽暗城"
	LOCALIZATION_ZORLEN["PresenceOfMind"] = "氣定神閒"
	LOCALIZATION_ZORLEN["Pyroblast"] = "炎爆術"
	LOCALIZATION_ZORLEN["RemoveLesserCurse"] = "解除次級詛咒"
	LOCALIZATION_ZORLEN["Scorch"] = "灼燒"
	LOCALIZATION_ZORLEN["SlowFall"] = "緩落術" 



-- Zorlen_Paladin.lua file Localization
	LOCALIZATION_ZORLEN["HandOfFreedom"] = "自由祝福"
	LOCALIZATION_ZORLEN["BlessingOfKings"] = "王者祝福"
	LOCALIZATION_ZORLEN["BlessingOfLight"] = "光明祝福"
	LOCALIZATION_ZORLEN["BlessingOfMight"] = "力量祝福"
	LOCALIZATION_ZORLEN["BlessingOfProtection"] = "保護祝福"
	LOCALIZATION_ZORLEN["BlessingOfSacrifice"] = "犧牲祝福"
	LOCALIZATION_ZORLEN["BlessingOfSalvation"] = "拯救祝福"
	LOCALIZATION_ZORLEN["BlessingOfSanctuary"] = "庇護祝福"
	LOCALIZATION_ZORLEN["BlessingOfWisdom"] = "智慧祝福"
	LOCALIZATION_ZORLEN["Cleanse"] = "清潔術"
	LOCALIZATION_ZORLEN["ConcentrationAura"] = "專注光環"
	LOCALIZATION_ZORLEN["Consecration"] = "奉獻"
	LOCALIZATION_ZORLEN["DevotionAura"] = "虔誠光環"
	LOCALIZATION_ZORLEN["DivineFavor"] = "神恩術"
	LOCALIZATION_ZORLEN["DivineIntervention"] = "神聖干涉"
	LOCALIZATION_ZORLEN["DivineProtection"] = "聖佑術"
	--LOCALIZATION_ZORLEN["DivineShield"] = ""
	LOCALIZATION_ZORLEN["Exorcism"] = "驅邪術"
	--LOCALIZATION_ZORLEN["FireResistanceAura"] = ""
	LOCALIZATION_ZORLEN["FlashOfLight"] = "聖光閃現"
	--LOCALIZATION_ZORLEN["FrostResistanceAura"] = ""
	LOCALIZATION_ZORLEN["GreaterBlessingOfKings"] = "強效王者祝福"
	LOCALIZATION_ZORLEN["GreaterBlessingOfLight"] = "強效光明祝福"
	LOCALIZATION_ZORLEN["GreaterBlessingOfMight"] = "強效力量祝福"
	LOCALIZATION_ZORLEN["GreaterBlessingOfSalvation"] = "強效拯救祝福"
	LOCALIZATION_ZORLEN["GreaterBlessingOfSanctuary"] = "強效庇護祝福"
	LOCALIZATION_ZORLEN["GreaterBlessingOfWisdom"] = "強效智慧祝福"
	LOCALIZATION_ZORLEN["HammerOfJustice"] = "制裁之鎚"
	--LOCALIZATION_ZORLEN["HammerOfWrath"] = ""
	LOCALIZATION_ZORLEN["HolyLight"] = "聖光術"
	LOCALIZATION_ZORLEN["HolyShield"] = "神聖之盾"
	LOCALIZATION_ZORLEN["HolyShock"] = "神聖震擊"
	--LOCALIZATION_ZORLEN["HolyWrath"] = ""
	LOCALIZATION_ZORLEN["Judgement"] = "審判"
	LOCALIZATION_ZORLEN["LayOnHands"] = "聖療術"
	LOCALIZATION_ZORLEN["Purify"] = "純淨術"
	LOCALIZATION_ZORLEN["Redemption"] = "救贖"
	LOCALIZATION_ZORLEN["Repentance"] = "懺悔"
	LOCALIZATION_ZORLEN["RetributionAura"] = "懲罰光環"
	LOCALIZATION_ZORLEN["RighteousFury"] = "正義之怒"
	LOCALIZATION_ZORLEN["SanctityAura"] = "聖潔光環"
	LOCALIZATION_ZORLEN["SealOfCommand"] = "命令聖印"
	LOCALIZATION_ZORLEN["SealOfJustice"] = "公正聖印"
	LOCALIZATION_ZORLEN["SealOfLight"] = "光明聖印"
	LOCALIZATION_ZORLEN["SealOfRighteousness"] = "正義聖印"
	--LOCALIZATION_ZORLEN["SealOfWisdom"] = ""
	LOCALIZATION_ZORLEN["SealOfTheCrusader"] = "十字軍聖印"
	LOCALIZATION_ZORLEN["SenseUndead"] = "感知不死生物"
	LOCALIZATION_ZORLEN["ShadowResistanceAura"] = "暗影抗性光環"
	--LOCALIZATION_ZORLEN["SummonCharger"] = ""
	--LOCALIZATION_ZORLEN["SummonWarhorse"] = ""
	LOCALIZATION_ZORLEN["TurnUndead"] = "超渡不死生物"



-- Zorlen_Priest.lua file Localization
	LOCALIZATION_ZORLEN["PowerInfusion"] = "注入能量"
	LOCALIZATION_ZORLEN["Lightwell"] = "光束泉"
	LOCALIZATION_ZORLEN["AbolishDisease"] = "驅除疾病"
	LOCALIZATION_ZORLEN["CureDisease"] = "祛病術"
	LOCALIZATION_ZORLEN["DesperatePrayer"] = "絕望禱言"
	LOCALIZATION_ZORLEN["DevouringPlague"] = "噬靈瘟疫"
	LOCALIZATION_ZORLEN["DispelMagic"] = "驅散魔法"
	LOCALIZATION_ZORLEN["DivineSpirit"] = "神聖之靈"
	LOCALIZATION_ZORLEN["ElunesGrace"] = "伊露恩的賜福"
	LOCALIZATION_ZORLEN["Fade"] = "漸隱術"
	LOCALIZATION_ZORLEN["FearWard"] = "防護恐懼結界"
	LOCALIZATION_ZORLEN["Feedback"] = "反饋"
	LOCALIZATION_ZORLEN["FlashHeal"] = "快速治療"
	LOCALIZATION_ZORLEN["FocusedCasting"] = "專注施法"
	LOCALIZATION_ZORLEN["LesserHeal"] = "次級治療術"
	LOCALIZATION_ZORLEN["Heal"] = "治療術"
	LOCALIZATION_ZORLEN["GreaterHeal"] = "強效治療術"
	LOCALIZATION_ZORLEN["HexOfWeakness"] = "虛弱詛咒"
	LOCALIZATION_ZORLEN["HolyFire"] = "神聖之火"
	LOCALIZATION_ZORLEN["HolyNova"] = "神聖新星"
	LOCALIZATION_ZORLEN["InnerFire"] = "心靈之火"
	LOCALIZATION_ZORLEN["InnerFocus"] = "心靈專注"
	LOCALIZATION_ZORLEN["Levitate"] = "漂浮術"
	LOCALIZATION_ZORLEN["ManaBurn"] = "法力燃燒"
	LOCALIZATION_ZORLEN["MindBlast"] = "心靈震爆"
	LOCALIZATION_ZORLEN["MindControl"] = "精神控制"
	LOCALIZATION_ZORLEN["MindFlay"] = "精神鞭笞"
	LOCALIZATION_ZORLEN["MindSoothe"] = "安撫心靈"
	LOCALIZATION_ZORLEN["MindVision"] = "心靈視界"
	LOCALIZATION_ZORLEN["PowerWordFortitude"] = "真言術：韌"
	LOCALIZATION_ZORLEN["PowerWordShield"] = "真言術：盾"
	LOCALIZATION_ZORLEN["PrayerOfFortitude"] = "堅韌禱言"
	LOCALIZATION_ZORLEN["PrayerOfHealing"] = "治療禱言"
	LOCALIZATION_ZORLEN["PsychicScream"] = "心靈尖嘯"
	LOCALIZATION_ZORLEN["Renew"] = "恢復"
	LOCALIZATION_ZORLEN["Resurrection"] = "復活術"
	LOCALIZATION_ZORLEN["ShackleUndead"] = "束縛不死生物"
	LOCALIZATION_ZORLEN["ShadowProtection"] = "暗影防護"
	LOCALIZATION_ZORLEN["ShadowWordPain"] = "暗言術：痛"
	LOCALIZATION_ZORLEN["Shadowform"] = "暗影形態"
	LOCALIZATION_ZORLEN["Shadowguard"] = "暗影守護"
	LOCALIZATION_ZORLEN["Silence"] = "沉默"
	LOCALIZATION_ZORLEN["Smite"] = "懲擊"
	LOCALIZATION_ZORLEN["SpiritOfRedemption"] = "救贖之魂"
	LOCALIZATION_ZORLEN["Starshards"] = "星辰碎片"
	LOCALIZATION_ZORLEN["TouchOfWeakness"] = "虛弱之觸"
	LOCALIZATION_ZORLEN["VampiricEmbrace"] = "吸血鬼的擁抱"



-- Zorlen_Rogue.lua file Localization
	LOCALIZATION_ZORLEN["DirtyDeeds"] = "陰險動作"
	LOCALIZATION_ZORLEN["ImprovedSinisterStrike"] = "強化邪惡攻擊"
	LOCALIZATION_ZORLEN["CripplingPoison"] = "致殘毒藥"
	LOCALIZATION_ZORLEN["CripplingPoisonII"] = "致殘毒藥 II"
	LOCALIZATION_ZORLEN["DeadlyPoison"] = "致命毒藥"
	LOCALIZATION_ZORLEN["DeadlyPoisonII"] = "致命毒藥 II"
	LOCALIZATION_ZORLEN["DeadlyPoisonIII"] = "致命毒藥 III"
	LOCALIZATION_ZORLEN["DeadlyPoisonIV"] = "致命毒藥 IV"
	LOCALIZATION_ZORLEN["DeadlyPoisonV"] = "致命毒藥 V"
	LOCALIZATION_ZORLEN["InstantPoison"] = "速效毒藥"
	LOCALIZATION_ZORLEN["InstantPoisonII"] = "速效毒藥 II"
	LOCALIZATION_ZORLEN["InstantPoisonIII"] = "速效毒藥 III"
	LOCALIZATION_ZORLEN["InstantPoisonIV"] = "速效毒藥 IV"
	LOCALIZATION_ZORLEN["InstantPoisonV"] = "速效毒藥 V"
	LOCALIZATION_ZORLEN["InstantPoisonVI"] = "速效毒藥 VI"
	LOCALIZATION_ZORLEN["MindnumbingPoison"] = "麻痺毒藥"
	LOCALIZATION_ZORLEN["MindnumbingPoisonII"] = "麻痺毒藥 II"
	LOCALIZATION_ZORLEN["MindnumbingPoisonIII"] = "麻痺毒藥 III"
	LOCALIZATION_ZORLEN["WoundPoison"] = "致傷毒藥"
	LOCALIZATION_ZORLEN["WoundPoisonII"] = "致傷毒藥 II"
	LOCALIZATION_ZORLEN["WoundPoisonIII"] = "致傷毒藥 III"
	LOCALIZATION_ZORLEN["WoundPoisonIV"] = "致傷毒藥 IV"
	LOCALIZATION_ZORLEN["AdrenalineRush"] = "衝動"
	LOCALIZATION_ZORLEN["Ambush"] = "伏擊"
	LOCALIZATION_ZORLEN["Backstab"] = "背刺"
	LOCALIZATION_ZORLEN["BladeFlurry"] = "劍刃亂舞"
	LOCALIZATION_ZORLEN["Blind"] = "致盲"
	LOCALIZATION_ZORLEN["BlindingPowder"] = "致盲粉"
	LOCALIZATION_ZORLEN["CheapShot"] = "偷襲"
	LOCALIZATION_ZORLEN["ColdBlood"] = "冷血"
	LOCALIZATION_ZORLEN["DetectTraps"] = "偵測陷阱"
	LOCALIZATION_ZORLEN["DisarmTrap"] = "解除陷阱"
	LOCALIZATION_ZORLEN["Distract"] = "擾亂"
	LOCALIZATION_ZORLEN["Evasion"] = "閃避"
	LOCALIZATION_ZORLEN["Eviscerate"] = "剔骨"
	LOCALIZATION_ZORLEN["ExposeArmor"] = "破甲"
	LOCALIZATION_ZORLEN["Feint"] = "佯攻"
	LOCALIZATION_ZORLEN["Garrote"] = "絞喉"
	LOCALIZATION_ZORLEN["GhostlyStrike"] = "鬼魅攻擊"
	LOCALIZATION_ZORLEN["Gouge"] = "鑿擊"
	LOCALIZATION_ZORLEN["Hemorrhage"] = "出血"
	LOCALIZATION_ZORLEN["Kick"] = "腳踢"
	LOCALIZATION_ZORLEN["KidneyShot"] = "腎擊"
	LOCALIZATION_ZORLEN["PickLock"] = "開鎖"
	LOCALIZATION_ZORLEN["PickPocket"] = "偷竊"
	LOCALIZATION_ZORLEN["Premeditation"] = "預謀"
	LOCALIZATION_ZORLEN["Preparation"] = "伺機待發"
	LOCALIZATION_ZORLEN["RelentlessStrikes"] = "無情打擊"
	LOCALIZATION_ZORLEN["Riposte"] = "還擊"
	LOCALIZATION_ZORLEN["Rupture"] = "割裂"
	LOCALIZATION_ZORLEN["Sap"] = "悶棍"
	LOCALIZATION_ZORLEN["SinisterStrike"] = "邪惡攻擊"
	LOCALIZATION_ZORLEN["SliceAndDice"] = "切割"
	LOCALIZATION_ZORLEN["Sprint"] = "疾跑"
	LOCALIZATION_ZORLEN["Stealth"] = "潛行"
	LOCALIZATION_ZORLEN["Vanish"] = "消失"



-- Zorlen_Shaman.lua file Localization
	--LOCALIZATION_ZORLEN["DiseaseCleansingTotem"] = ""
	--LOCALIZATION_ZORLEN["EarthbindTotem"] = ""
	--LOCALIZATION_ZORLEN["FireNovaTotem"] = ""
	--LOCALIZATION_ZORLEN["FireResistanceTotem"] = ""
	--LOCALIZATION_ZORLEN["FlametongueTotem"] = ""
	--LOCALIZATION_ZORLEN["FrostResistanceTotem"] = ""
	--LOCALIZATION_ZORLEN["GraceOfAirTotem"] = ""
	--LOCALIZATION_ZORLEN["GroundingTotem"] = ""
	--LOCALIZATION_ZORLEN["HealingStreamTotem"] = ""
	--LOCALIZATION_ZORLEN["MagmaTotem"] = ""
	--LOCALIZATION_ZORLEN["ManaSpringTotem"] = ""
	--LOCALIZATION_ZORLEN["ManaTideTotem"] = ""
	--LOCALIZATION_ZORLEN["NatureResistanceTotem"] = ""
	--LOCALIZATION_ZORLEN["PoisonCleansingTotem"] = ""
	--LOCALIZATION_ZORLEN["SearingTotem"] = ""
	--LOCALIZATION_ZORLEN["SentryTotem"] = ""
	--LOCALIZATION_ZORLEN["StoneclawTotem"] = ""
	--LOCALIZATION_ZORLEN["StoneskinTotem"] = ""
	--LOCALIZATION_ZORLEN["StrengthOfEarthTotem"] = ""
	--LOCALIZATION_ZORLEN["TremorTotem"] = ""
	--LOCALIZATION_ZORLEN["WindfuryTotem"] = ""
	--LOCALIZATION_ZORLEN["WindwallTotem"] = ""
	--LOCALIZATION_ZORLEN["EarthShock"] = ""
	--LOCALIZATION_ZORLEN["FlameShock"] = ""
	--LOCALIZATION_ZORLEN["FrostShock"] = ""
	--LOCALIZATION_ZORLEN["FlametongueWeapon"] = ""
	--LOCALIZATION_ZORLEN["FrostbrandWeapon"] = ""
	--LOCALIZATION_ZORLEN["RockbiterWeapon"] = ""
	--LOCALIZATION_ZORLEN["WindfuryWeapon"] = ""
	--LOCALIZATION_ZORLEN["AncestralSpirit"] = ""
	--LOCALIZATION_ZORLEN["AstralRecall"] = ""
	--LOCALIZATION_ZORLEN["ChainHeal"] = ""
	--LOCALIZATION_ZORLEN["ChainLightning"] = ""
	--LOCALIZATION_ZORLEN["CureDisease"] = ""
	--LOCALIZATION_ZORLEN["CurePoison"] = ""
	--LOCALIZATION_ZORLEN["ElementalFocus"] = ""
	--LOCALIZATION_ZORLEN["ElementalMastery"] = ""
	--LOCALIZATION_ZORLEN["FarSight"] = ""
	--LOCALIZATION_ZORLEN["GhostWolf"] = ""
	--LOCALIZATION_ZORLEN["LesserHealingWave"] = ""
	--LOCALIZATION_ZORLEN["HealingWave"] = ""
	--LOCALIZATION_ZORLEN["LightningBolt"] = ""
	--LOCALIZATION_ZORLEN["LightningShield"] = ""
	--LOCALIZATION_ZORLEN["NaturesSwiftness"] = ""
	--LOCALIZATION_ZORLEN["Purge"] = ""
	--LOCALIZATION_ZORLEN["Reincarnation"] = ""
	--LOCALIZATION_ZORLEN["Stormstrike"] = ""
	--LOCALIZATION_ZORLEN["WaterBreathing"] = ""
	--LOCALIZATION_ZORLEN["WaterWalking"] = ""



-- Zorlen_Warrior.lua file Localization
	--LOCALIZATION_ZORLEN["Devastate"] = ""
	--LOCALIZATION_ZORLEN["ImprovedWhirlwind"] = ""
	--LOCALIZATION_ZORLEN["FocusedRage"] = ""
	--LOCALIZATION_ZORLEN["CommandingShout"] = ""
	--LOCALIZATION_ZORLEN["SpellReflection"] = ""
	--LOCALIZATION_ZORLEN["Intervene"] = ""
	--LOCALIZATION_ZORLEN["VictoryRush"] = ""
	--LOCALIZATION_ZORLEN["EndlessRage"] = ""
	--LOCALIZATION_ZORLEN["Rampage"] = ""
	
	LOCALIZATION_ZORLEN["ImprovedBloodrage"] = "強化血性狂暴"
	LOCALIZATION_ZORLEN["ImprovedOverpower"] = "強化壓制"
	LOCALIZATION_ZORLEN["ImprovedBerserkerRage"] = "強化狂暴之怒"
	LOCALIZATION_ZORLEN["ImprovedExecute"] = "強化斬殺"
	LOCALIZATION_ZORLEN["Execute"] = "斬殺"
	LOCALIZATION_ZORLEN["ImprovedHeroicStrike"] = "強化英勇打擊"
	LOCALIZATION_ZORLEN["HeroicStrike"] = "英勇打擊"
	LOCALIZATION_ZORLEN["ImprovedSunderArmor"] = "強化破甲攻擊"
	LOCALIZATION_ZORLEN["SunderArmor"] = "破甲攻擊"
	LOCALIZATION_ZORLEN["ImprovedThunderClap"] = "強化雷霆一擊"
	LOCALIZATION_ZORLEN["ThunderClap"] = "雷霆一擊"
	LOCALIZATION_ZORLEN["MortalStrike"] = "致死打擊"
	LOCALIZATION_ZORLEN["Bloodthirst"] = "嗜血"
	LOCALIZATION_ZORLEN["ShieldSlam"] = "盾牌猛擊"
	LOCALIZATION_ZORLEN["Charge"] = "衝鋒"
	LOCALIZATION_ZORLEN["Taunt"] = "嘲諷"
	LOCALIZATION_ZORLEN["Intercept"] = "攔截"
	LOCALIZATION_ZORLEN["Overpower"] = "壓制"
	LOCALIZATION_ZORLEN["Revenge"] = "復仇"
	LOCALIZATION_ZORLEN["Rend"] = "撕裂"
	LOCALIZATION_ZORLEN["Hamstring"] = "斷筋"
	LOCALIZATION_ZORLEN["ShieldBash"] = "盾擊"
	LOCALIZATION_ZORLEN["Pummel"] = "拳擊"
	LOCALIZATION_ZORLEN["ShieldBlock"] = "盾牌格擋"
	LOCALIZATION_ZORLEN["DemoralizingShout"] = "挫志怒吼"
	LOCALIZATION_ZORLEN["BattleShout"] = "戰鬥怒吼"
	LOCALIZATION_ZORLEN["BerserkerRage"] = "狂暴之怒"
	LOCALIZATION_ZORLEN["Enrage"] = "狂怒"
	LOCALIZATION_ZORLEN["DefensiveStance"] = "防禦姿態"
	LOCALIZATION_ZORLEN["BattleStance"] = "戰鬥姿態"
	LOCALIZATION_ZORLEN["BerserkerStance"] = "狂暴姿態"
	LOCALIZATION_ZORLEN["AngerManagement"] = "憤怒掌控"
	LOCALIZATION_ZORLEN["Bloodrage"] = "血性狂暴"
	LOCALIZATION_ZORLEN["ChallengingShout"] = "挑戰怒吼"
	LOCALIZATION_ZORLEN["Cleave"] = "順劈斬"
	LOCALIZATION_ZORLEN["ConcussionBlow"] = "震盪猛擊"
	LOCALIZATION_ZORLEN["DeathWish"] = "死亡之願"
	LOCALIZATION_ZORLEN["Disarm"] = "繳械"
	LOCALIZATION_ZORLEN["IntimidatingShout"] = "破膽怒吼"
	LOCALIZATION_ZORLEN["LastStand"] = "破釜沉舟"
	LOCALIZATION_ZORLEN["MockingBlow"] = "慫戒痛擊"
	LOCALIZATION_ZORLEN["PiercingHowl"] = "刺耳怒吼"
	LOCALIZATION_ZORLEN["Recklessness"] = "魯莽"
	LOCALIZATION_ZORLEN["Retaliation"] = "反擊風暴"
	LOCALIZATION_ZORLEN["ShieldWall"] = "盾牆"
	LOCALIZATION_ZORLEN["Slam"] = "猛擊"
	LOCALIZATION_ZORLEN["SweepingStrikes"] = "橫掃攻擊"
	LOCALIZATION_ZORLEN["Whirlwind"] = "旋風斬"
	LOCALIZATION_ZORLEN["TacticalMastery"] = "戰術專精"



-- Fire Immune MOB's
 -- Molten Core
	--LOCALIZATION_ZORLEN["Firelord"] = ""
	--LOCALIZATION_ZORLEN["Firewalker"] = ""
	--LOCALIZATION_ZORLEN["Flameguard"] = ""
	--LOCALIZATION_ZORLEN["LavaSpawn"] = ""
	--LOCALIZATION_ZORLEN["BaronGeddon"] = ""
	--LOCALIZATION_ZORLEN["Ragnaros"] = ""
 -- Upper Blackrock Spire
	--LOCALIZATION_ZORLEN["PyroguardEmberseer"] = ""
 -- Blackrock Depths
	--LOCALIZATION_ZORLEN["Fireguard"] = ""
	--LOCALIZATION_ZORLEN["FireguardDestroyer"] = ""
	--LOCALIZATION_ZORLEN["BlazingFireguard"] = ""
	--LOCALIZATION_ZORLEN["AmbassadorFlamelash"] = ""
	--LOCALIZATION_ZORLEN["LordIncendius"] = ""
 --Searing Gorge
	--LOCALIZATION_ZORLEN["BlazingElemental"] = ""
	--LOCALIZATION_ZORLEN["InfernoElemental"] = ""
 --Un'Goro Crater
	--LOCALIZATION_ZORLEN["ScorchingElemental"] = ""
	--LOCALIZATION_ZORLEN["LivingBlaze"] = ""
	--LOCALIZATION_ZORLEN["Blazerunner"] = ""

-- Drain Life Immune MOB's
 -- Blackrock Depths
	--LOCALIZATION_ZORLEN["MoltenWarGolem"] = ""
	--LOCALIZATION_ZORLEN["PanzorTheInvincible"] = ""
 --Searing Gorge
	--LOCALIZATION_ZORLEN["HeavyWarGolem"] = ""
	--LOCALIZATION_ZORLEN["FaultyWarGolem"] = ""
	--LOCALIZATION_ZORLEN["TemperedWarGolem"] = ""
	--LOCALIZATION_ZORLEN["RagereaverGolem"] = ""
