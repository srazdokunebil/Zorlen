
Zorlen_Paladin_FileBuildNumber = 688

--[[
  Zorlen Library - Started by Marcus S. Zarra
 
  4.28
		Fixed: All of the aura casting functions.
 
  4.27
		Fixed: isSealActive()
 
  4.26
		castDevotionAura() added by charroux
		castRetributionAura() added by charroux
		castConcentrationAura() added by charroux
		castShadowResistanceAura() added by charroux
		castFrostResistanceAura() added by charroux
		castFireResistanceAura() added by charroux
		castSealOfTheCrusader() added by charroux
		castSealOfRighteousness() added by charroux
		castSealOfJustice() added by charroux
		castSealOfLight() added by charroux
		castSealOfWisdom() added by charroux
		castJudgement() added by charroux
		castDivineProtection() added by charroux
		
		--AURAS
		isDAA() shortcut function for: isDevotionAuraActive() added by charroux
		isRAA() shortcut function for: isRetributionAuraActive() added by charroux
		isCAA() shortcut function for: isConcentrationAuraActive() added by charroux
		isSRAA() shortcut function for: isShadowResistanceAuraActive() added by charroux
		isFrRAA() shortcut function for: isFrostResistanceAuraActive() added by charroux
		isFiRAA() shortcut function for: isFireResistanceAuraActive() added by charroux

		--BLESSINGS
		isBoMA() shortcut function for: isBlessingOfMightActive() added by charroux
		isBoPA() shortcut function for: isBlessingOfProtectionActive() added by charroux
		isBoWA() shortcut function for: isBlessingOfWisdomActive() added by charroux
		isBoFA() shortcut function for: isHandOfFreedomActive() added by charroux
		isBoSalA() shortcut function for: isBlessingOfSalvationActive() added by charroux
		isBoSacA() shortcut function for: isBlessingOfSacrificeActive() added by charroux
		isBoSanA() shortcut function for: isBlessingOfSanctuaryActive() added by charroux
		isBoLA() shortcut function for: isBlessingOfLightActive() added by charroux
		isGBoKA() shortcut function for: isGreaterBlessingOfKingsActive() added by charroux
		isGBoLA() shortcut function for: isGreaterBlessingOfLightActive() added by charroux
		isGBoMA() shortcut function for: isGreaterBlessingOfMightActive() added by charroux
		isGBoSalA() shortcut function for: isGreaterBlessingOfSalvationActive() added by charroux
		isGBoSanA() shortcut function for: isGreaterBlessingOfSanctuaryActive() added by charroux
		isGBoWA() shortcut function for: isGreaterBlessingOfWisdomActive() added by charroux

		--SEALS
		isSotCA() shortcut function for: isSealOfTheCrusaderActive() added by charroux
		isSoRA() shortcut function for: isSealOfRighteousnessActive() added by charroux
		isSoJA() shortcut function for: isSealOfJusticeActive() added by charroux
		isSoLA() shortcut function for: isSealOfLightActive() added by charroux
		isSoWA() shortcut function for: isSealOfWisdomActive() added by charroux
 
  4.23
		isDevotionAuraActive() added by Nosrac
		isConcentrationAuraActive() added by Nosrac
		isFireResistanceAuraActive() added by Nosrac
		isFrostResistanceAuraActive() added by Nosrac
		isRetributionAuraActive() added by Nosrac
		isShadowResistanceAuraActive() added by Nosrac
		isSanctityAuraActive() added by Nosrac
		isPaladinResistanceAuraActive() added by Nosrac
		isPaladinAuraActive() added by Nosrac
		isHandOfFreedomActive() added by Nosrac
		isBlessingOfKingsActive() added by Nosrac
		isBlessingOfLightActive() added by Nosrac
		isBlessingOfMightActive() added by Nosrac
		isBlessingOfProtectionActive() added by Nosrac
		isBlessingOfSacrificeActive() added by Nosrac
		isBlessingOfSalvationActive() added by Nosrac
		isBlessingOfSanctuaryActive() added by Nosrac
		isBlessingOfWisdomActive() added by Nosrac
		isRegularBlessingActive() added by Nosrac
		isGreaterBlessingOfKingsActive() added by Nosrac
		isGreaterBlessingOfLightActive() added by Nosrac
		isGreaterBlessingOfMightActive() added by Nosrac
		isGreaterBlessingOfSalvationActive() added by Nosrac
		isGreaterBlessingOfSanctuaryActive() added by Nosrac
		isGreaterBlessingOfWisdomActive() added by Nosrac
		isGreaterBlessingActive() added by Nosrac
		isBlessingActive() added by Nosrac
		isSealOfCommandActive() added by Nosrac
		isSealOfJusticeActive() added by Nosrac
		isSealOfLightActive() added by Nosrac
		isSealOfRighteousnessActive() added by Nosrac
		isSealOfWisdomActive() added by Nosrac
		isSealOfTheCrusaderActive() added by Nosrac
		isSealActive() added by Nosrac
		isHolyShieldActive() added by Nosrac
		isHolyShieldActive() added by Nosrac
		isDivineProtectionActive() added by Nosrac
		isSenseUndeadActive() added by Nosrac
		isRighteousFuryActive() added by Nosrac

  3.00  Rewrite by Wynn (Bleeding Hollow), break units into class functions.
		  
--]]






--------   All functions below this line will only load if you are playing the corresponding class   --------
if not Zorlen_isCurrentClassPaladin then return end





--Added by Nosrac
function isDevotionAuraActive()
	local SpellName = LOCALIZATION_ZORLEN.DevotionAura
	return Zorlen_checkBuffByName(SpellName)
end
isDAA = isDevotionAuraActive
	
--Added by Nosrac
function isConcentrationAuraActive()
	local SpellName = LOCALIZATION_ZORLEN.ConcentrationAura
	return Zorlen_checkBuffByName(SpellName)
end
isCAA = isConcentrationAuraActive

--Added by Nosrac
function isFireResistanceAuraActive()
	local SpellName = LOCALIZATION_ZORLEN.FireResistanceAura
	return Zorlen_checkBuffByName(SpellName)
end
isFiRAA = isFireResistanceAuraActive


--Added by Nosrac
function isFrostResistanceAuraActive()
	local SpellName = LOCALIZATION_ZORLEN.FrostResistanceAura
	return Zorlen_checkBuffByName(SpellName)
end
isFrRAA = isFrostResistanceAuraActive

--Added by Nosrac
function isRetributionAuraActive()
	local SpellName = LOCALIZATION_ZORLEN.RetributionAura
	return Zorlen_checkBuffByName(SpellName)
end
isRAA = isRetributionAuraActive

--Added by Nosrac
function isShadowResistanceAuraActive()
	local SpellName = LOCALIZATION_ZORLEN.ShadowResistanceAura
	return Zorlen_checkBuffByName(SpellName)
end
isSRAA = isShadowResistanceAuraActive

--Added by Nosrac
function isSanctityAuraActive()
	local SpellName = LOCALIZATION_ZORLEN.SanctityAura
	return Zorlen_checkBuffByName(SpellName)
end

function isPaladinResistanceAuraActive()
	if isShadowResistanceAuraActive() or isFrostResistanceAuraActive() or isFireResistanceAuraActive() then
		return true
	end
	return false
end

--Added by Nosrac
function isPaladinAuraActive()
	if isPaladinResistanceAuraActive() or isSanctityAuraActive() or isRetributionAuraActive() or isDevotionAuraActive() or isConcentrationAuraActive() then
		return true
	end
	return false
end

--Added by Nosrac
function isHandOfFreedomActive()
	local SpellName = LOCALIZATION_ZORLEN.HandOfFreedom
	return Zorlen_checkBuffByName(SpellName)
end
isBoFA = isHandOfFreedomActive

--Added by Nosrac
function isBlessingOfKingsActive()
	local SpellName = LOCALIZATION_ZORLEN.BlessingOfKings
	return Zorlen_checkBuffByName(SpellName)
end

--Added by Nosrac
function isBlessingOfLightActive()
	local SpellName = LOCALIZATION_ZORLEN.BlessingOfLight
	return Zorlen_checkBuffByName(SpellName)
end
isBoLA = isBlessingOfLightActive

--Added by Nosrac
function isBlessingOfMightActive()
	local SpellName = LOCALIZATION_ZORLEN.BlessingOfMight
	return Zorlen_checkBuffByName(SpellName)
end
isBoMA = isBlessingOfMightActive

--Added by Nosrac
function isBlessingOfProtectionActive()
	local SpellName = LOCALIZATION_ZORLEN.BlessingOfProtection
	return Zorlen_checkBuffByName(SpellName)
end
isBoPA = isBlessingOfProtectionActive

--Added by Dispatch
function isHandOfProtectionActive()
	local SpellName = LOCALIZATION_ZORLEN.HandOfProtection
	return Zorlen_checkBuffByName(SpellName)
end
isBoPA = isHandOfProtectionActive

-- Added by Dispatch
function isHandOfProtectionActive()
	local SpellName = LOCALIZATION_ZORLEN.HandOfProtection
	return Zorlen_checkBuffByName(SpellName)
end
isBoPA = isHandOfProtectionActive

--Added by Nosrac
function isBlessingOfSacrificeActive()
	local SpellName = LOCALIZATION_ZORLEN.BlessingOfSacrifice
	return Zorlen_checkBuffByName(SpellName)
end
isBoSacA = isBlessingOfSacrificeActive

--Added by Nosrac
function isBlessingOfSalvationActive()
	local SpellName = LOCALIZATION_ZORLEN.BlessingOfSalvation
	return Zorlen_checkBuffByName(SpellName)
end
isBoSalA = isBlessingOfSalvationActive

--Added by Nosrac
function isBlessingOfSanctuaryActive()
	local SpellName = LOCALIZATION_ZORLEN.BlessingOfSanctuary
	return Zorlen_checkBuffByName(SpellName)
end
isBoSanA = isBlessingOfSanctuaryActive

--Added by Nosrac
function isBlessingOfWisdomActive()
	local SpellName = LOCALIZATION_ZORLEN.BlessingOfWisdom
	return Zorlen_checkBuffByName(SpellName)
end
isBoWA = isBlessingOfWisdomActive

--Added by Nosrac
function isRegularBlessingActive()
	if isHandOfFreedomActive() or isBlessingOfKingsActive() or isBlessingOfLightActive() or isBlessingOfMightActive() or isBlessingOfProtection() or isBlessingOfSacrificeActive() or isBlessingOfSalvationActive() or isBlessingOfSanctuaryActive() or isBlessingOfWisdomActive() then
		return true
	end
	return false
end

--Added by Nosrac
function isGreaterBlessingOfKingsActive()
	local SpellName = LOCALIZATION_ZORLEN.GreaterBlessingOfKings
	return Zorlen_checkBuffByName(SpellName)
end
isGBoKA = isGreaterBlessingOfKingsActive

--Added by Nosrac
function isGreaterBlessingOfLightActive()
	local SpellName = LOCALIZATION_ZORLEN.GreaterBlessingOfLight
	return Zorlen_checkBuffByName(SpellName)
end
isGBoLA = isGreaterBlessingOfLightActive

--Added by Nosrac
function isGreaterBlessingOfMightActive()
	local SpellName = LOCALIZATION_ZORLEN.GreaterBlessingOfMight
	return Zorlen_checkBuffByName(SpellName)
end
isGBoMA = isGreaterBlessingOfMightActive

--Added by Nosrac
function isGreaterBlessingOfSalvationActive()
	local SpellName = LOCALIZATION_ZORLEN.GreaterBlessingOfSalvation
	return Zorlen_checkBuffByName(SpellName)
end
isGBoSalA = isGreaterBlessingOfSalvationActive

--Added by Nosrac
function isGreaterBlessingOfSanctuaryActive()
	local SpellName = LOCALIZATION_ZORLEN.GreaterBlessingOfSanctuary
	return Zorlen_checkBuffByName(SpellName)
end
isGBoSanA = isGreaterBlessingOfSanctuaryActive

--Added by Nosrac
function isGreaterBlessingOfWisdomActive()
	local SpellName = LOCALIZATION_ZORLEN.GreaterBlessingOfWisdom
	return Zorlen_checkBuffByName(SpellName)
end
isGBoWA = isGreaterBlessingOfWisdomActive

--Added by Nosrac
function isGreaterBlessingActive()
	if isGreaterBlessingOfKingsActive() or isGreaterBlessingOfLightActive() or isGreaterBlessingOfMightActive() or isGreaterBlessingOfSalvationActive() or isGreaterBlessingOfSanctuaryActive() or isGreaterBlessingOfWisdomActive() then
		return true
	end
	return false
end

--Added by Nosrac
function isBlessingActive()
	if isRegularBlessingActive() or isGreaterBlessingActive() then
		return true
	end
	return false
end





--Added by Dispatch
function isJudgementOfLightActive(unit, dispelable)
	local SpellName = LOCALIZATION_ZORLEN.JudgementOfLight
	return Zorlen_checkDebuffByName(SpellName, unit, dispelable)
end

--Added by Dispatch
function isJudgementOfWisdomActive(unit, dispelable)
	local SpellName = LOCALIZATION_ZORLEN.JudgementOfWisdom
	return Zorlen_checkDebuffByName(SpellName, unit, dispelable)
end

--Added by Dispatch
function isJudgementOfJusticeActive(unit, dispelable)
	local SpellName = LOCALIZATION_ZORLEN.JudgementOfJustice
	return Zorlen_checkDebuffByName(SpellName, unit, dispelable)
end

--Added by Dispatch
function isJudgementOfTheCrusaderActive(unit, dispelable)
	local SpellName = LOCALIZATION_ZORLEN.JudgementOfTheCrusader
	return Zorlen_checkDebuffByName(SpellName, unit, dispelable)
end

--Added by Dispatch
function isJudgementOfRighteousnessActive(unit, dispelable)
	local SpellName = LOCALIZATION_ZORLEN.JudgementOfRighteousness
	return Zorlen_checkDebuffByName(SpellName, unit, dispelable)
end

--Added by Dispatch
function isJudgementOfCommandActive(unit, dispelable)
	local SpellName = LOCALIZATION_ZORLEN.JudgementOfCommand
	return Zorlen_checkDebuffByName(SpellName, unit, dispelable)
end

--Added by Nosrac
function isSealOfCommandActive()
	local SpellName = LOCALIZATION_ZORLEN.SealOfCommand
	return Zorlen_checkBuffByName(SpellName)
end

--Added by Nosrac
function isSealOfJusticeActive()
	local SpellName = LOCALIZATION_ZORLEN.SealOfJustice
	return Zorlen_checkBuffByName(SpellName)
end
isSoJA = isSealOfJusticeActive

--Added by Nosrac
function isSealOfLightActive()
	local SpellName = LOCALIZATION_ZORLEN.SealOfLight
	return Zorlen_checkBuffByName(SpellName)
end
isSoLA = isSealOfLightActive

--Added by Nosrac
function isSealOfRighteousnessActive()
	local SpellName = LOCALIZATION_ZORLEN.SealOfRighteousness
	return Zorlen_checkBuffByName(SpellName)
end
isSoRA = isSealOfRighteousnessActive

--Added by Nosrac
function isSealOfWisdomActive()
	local SpellName = LOCALIZATION_ZORLEN.SealOfWisdom
	return Zorlen_checkBuffByName(SpellName)
end
isSoWA = isSealOfWisdomActive

--Added by Nosrac
function isSealOfTheCrusaderActive()
	local SpellName = LOCALIZATION_ZORLEN.SealOfTheCrusader
	return Zorlen_checkBuffByName(SpellName)
end
isSotCA = isSealOfTheCrusaderActive

--Added by Nosrac
function isSealActive()
	if isSealOfCommandActive() or isSealOfJusticeActive() or isSealOfLightActive() or isSealOfRighteousnessActive() or isSealOfWisdomActive() or isSealOfTheCrusaderActive() then
		return true
	end
	return false
end

--Added by Nosrac
function isHolyShieldActive()
	local SpellName = LOCALIZATION_ZORLEN.HolyShield
	return Zorlen_checkBuffByName(SpellName)
end

--Added by Dispatch
function isDivineFavorActive()
	local SpellName = LOCALIZATION_ZORLEN.DivineFavor
	return Zorlen_checkBuffByName(SpellName)
end

--Added by Nosrac
function isDivineProtectionActive()
	local SpellName = LOCALIZATION_ZORLEN.DivineProtection
	return Zorlen_checkBuffByName(SpellName)
end

--Added by Nosrac
function isSenseUndeadActive()
	local SpellName = LOCALIZATION_ZORLEN.SenseUndead
	return Zorlen_checkBuffByName(SpellName)
end

--Added by Nosrac
function isRighteousFuryActive()
	local SpellName = LOCALIZATION_ZORLEN.RighteousFury
	return Zorlen_checkBuffByName(SpellName)
end

--Added by Dispatch
function isBoFReady()
	if vr.api.IsSpellReady("Hand of Freedom") then
		return true;
	end
	return false;
end

--Added by Dispatch
function isBoPReady()
	if vr.api.IsSpellReady("Blessing of Protection") then
		return true;
	end
	return false;
end

--Added by Dispatch
function isDivineFavorReady()
	if vr.api.IsSpellReady("Divine Favor") then
		return true;
	end
	return false;
end

--Added by Dispatch
function isExorcismReady()
	if vr.api.IsSpellReady("Exorcism") then
		return true;
	end
	return false;
end

--Added by Dispatch
function isHolyShockReady()
	if vr.api.IsSpellReady("Holy Shock") then
		return true;
	end
	return false;
end

--Added by Dispatch
function isHammerOfJusticeReady()
	if vr.api.IsSpellReady("Hammer of Justice") then
		return true;
	end
	return false;
end

--Added by Dispatch
function isHammerOfJusticeUsable()
	for i = 1, 120 do
		local t = GetActionTexture(i)
		if t then
			if string.find(t, "Spell_Holy_SealOfMight") then
				Ability_Hammer_of_Justice = i
			end
		end
	end
	if Ability_Hammer_of_Justice and IsActionInRange(Ability_Hammer_of_Justice) == 1 then
		return true
	end
	return false
end

--Added by Dispatch
function isJudgementReady()
	if vr.api.IsSpellReady("Judgement") then
		return true;
	end
	return false;
end

--Added by Dispatch
function isLoHReady()
	if vr.api.IsSpellReady("Lay on Hands") then
		return true;
	end
	return false;
end

----Added by Dispatch
--function canCastBlessingOfSacrifice(unit)
--	local z = {}
--	z.Test = ""
--	z.SpellName = LOCALIZATION_ZORLEN.BlessingOfSacrifice
--	z.BuffName = z.SpellName
--	z.EnemyTargetNotNeeded = 1
--	return Zorlen_CanCastCommonRegisteredSpellOnUnit(z, unit)
--end

--Added by Dispatch
-- function castHandOfFreedom(test)
-- 	local z = {}
-- 	z.Test = test
-- 	z.SpellName = LOCALIZATION_ZORLEN.HandOfFreedom
-- 	z.BuffName = z.SpellName
-- 	z.DoBuff = 1
-- 	z.EnemyTargetNotNeeded = 1
-- 	z.SelfCast = 1
-- 	return Zorlen_CastCommonRegisteredSpellSelfCast(z)
-- end

-- Will only cast the spell on your self if you do not have it on you and will not be able to cast on anything else.
	function selfcastHandOfFreedom(force)
		local SpellName = LOCALIZATION_ZORLEN.HandOfFreedom
		local SpellButton = Zorlen_Button[SpellName]
		local friend = nil;
		if SpellButton then
			local isUsable, notEnoughMana = IsUsableAction(SpellButton)
			local _, duration, _ = GetActionCooldown(SpellButton)
			local isCurrent = IsCurrentAction(SpellButton)
			if ( isUsable == 1 ) and ( not notEnoughMana ) and ( duration == 0 ) and not ( isCurrent == 1 ) and (not isHandOfFreedomActive() or force) then
				if (UnitIsFriend("player", "target") and not UnitIsUnit("player","target")) then
					friend = 1;
					TargetUnit("player");
				end
				UseAction(SpellButton)
				if (friend) then
					TargetLastTarget();
				end
				if SpellIsTargeting() then
					if SpellCanTargetUnit("player") then
						SpellTargetUnit("player")
					else
						SpellStopTargeting()
						return false
					end
				end
				return true
			end
		elseif Zorlen_IsSpellKnown(SpellName) then
			Zorlen_debug(""..SpellName.." was not found on any of the action bars!")
			local SpellID = Zorlen_GetSpellID(SpellName);
			if Zorlen_checkCooldown(SpellID) then
				if (not isHandOfFreedomActive()) then
					if (UnitIsFriend("player", "target") and not UnitIsUnit("player","target")) then
						friend = 1;
						TargetUnit("player");
					end
					CastSpell(SpellID, 0)
					if (friend) then
						TargetLastTarget();
					end
					if SpellIsTargeting() then
						if SpellCanTargetUnit("player") then
							SpellTargetUnit("player")
						else
							SpellStopTargeting()
							return false
						end
					end
					return true
				end
			end
		end
		return false
	end

--Added by Dispatch
function castBlessingOfMight(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.BlessingOfMight
	z.BuffName = z.SpellName
	z.DoBuff = 1
	z.EnemyTargetNotNeeded = 1
	z.SelfCast = 1
	return Zorlen_CastCommonRegisteredSpellSelfCast(z)
end
castBOM = castBlessingOfMight

--Added by Dispatch
function castBlessingOfProtection(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.BlessingOfProtection
	z.BuffName = z.SpellName
	z.DoBuff = 1
	z.EnemyTargetNotNeeded = 1
	z.SelfCast = 1
	return Zorlen_CastCommonRegisteredSpellSelfCast(z)
end
castBOP = castBlessingOfProtection

--Added by Dispatch
function castHandOfProtection(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.HandOfProtection
	z.BuffName = z.SpellName
	z.DoBuff = 1
	z.EnemyTargetNotNeeded = 1
	z.SelfCast = 1
	return Zorlen_CastCommonRegisteredSpellSelfCast(z)
end
castBOP = castHandOfProtection

--Added by Dispatch
function castHandOfFreedom(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.HandOfFreedom
	z.BuffName = z.SpellName
	z.DoBuff = 1
	z.EnemyTargetNotNeeded = 1
	z.SelfCast = 1
	return Zorlen_CastCommonRegisteredSpellSelfCast(z)
end
castBOF = castHandOfFreedom

--Added by Dispatch
function castBlessingOfSanctuary(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.BlessingOfSanctuary
	z.BuffName = z.SpellName
	z.DoBuff = 1
	z.EnemyTargetNotNeeded = 1
	z.SelfCast = 1
	return Zorlen_CastCommonRegisteredSpellSelfCast(z)
end
castBOSanc = castBlessingOfSanctuary

--Added by charroux
function castDevotionAura(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.DevotionAura
	z.BuffName = z.SpellName
	z.EnemyTargetNotNeeded = 1
	return Zorlen_CastCommonRegisteredSpell(z)
end
castDA = castDevotionAura

--Added by Dispatch
function castLayOnHands(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.LayOnHands
	z.BuffName = z.SpellName
	z.DoBuff = 1
	z.EnemyTargetNotNeeded = 1
	z.SelfCast = 1
	return Zorlen_CastCommonRegisteredSpellSelfCast(z)
end
castLOH = castLayOnHands

--Added by charroux
function castRetributionAura(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.RetributionAura
	z.BuffName = z.SpellName
	z.EnemyTargetNotNeeded = 1
	return Zorlen_CastCommonRegisteredSpell(z)
end
castRA = castRetributionAura

--Added by charroux
function castConcentrationAura(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.ConcentrationAura
	z.BuffName = z.SpellName
	z.EnemyTargetNotNeeded = 1
	return Zorlen_CastCommonRegisteredSpell(z)
end
castCA = castConcentrationAura

--Added by Dispatch
function castDivineFavor(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.DivineFavor
	z.BuffName = z.SpellName
	z.EnemyTargetNotNeeded = 1
	return Zorlen_CastCommonRegisteredSpell(z)
end
castDF = castDivineFavor

--Added by Dispatch
function castExorcism(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.Exorcism
	z.BuffName = z.SpellName
	z.EnemyTargetNotNeeded = 1
	return Zorlen_CastCommonRegisteredSpell(z)
end
castEX = castExorcism

--Added by Dispatch
function castHammerOfWrath(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.HammerOfWrath
	z.BuffName = z.SpellName
	z.EnemyTargetNotNeeded = 1
	return Zorlen_CastCommonRegisteredSpell(z)
end
castHOW = castHammerOfWrath

--Added by Dispatch
function castHolyShock(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.HolyShock
	z.BuffName = z.SpellName
	z.EnemyTargetNotNeeded = 1
	return Zorlen_CastCommonRegisteredSpell(z)
end
castHS = castHolyShock

--Added by Dispatch
function castHolyWrath(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.HolyWrath
	z.BuffName = z.SpellName
	z.EnemyTargetNotNeeded = 1
	return Zorlen_CastCommonRegisteredSpell(z)
end
castHW = castHolyWrath

--Added by Dispatch
function castRighteousFury(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.RighteousFury
	z.BuffName = z.SpellName
	z.DoBuff = 1
	z.EnemyTargetNotNeeded = 1
	z.SelfCast = 1
	return Zorlen_CastCommonRegisteredSpellSelfCast(z)
end

--Added by charroux
function castShadowResistanceAura(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.ShadowResistanceAura
	z.BuffName = z.SpellName
	z.EnemyTargetNotNeeded = 1
	return Zorlen_CastCommonRegisteredSpell(z)
end
castSRA = castShadowResistanceAura

--Added by charroux
function castFrostResistanceAura(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.FrostResistanceAura
	z.BuffName = z.SpellName
	z.EnemyTargetNotNeeded = 1
	return Zorlen_CastCommonRegisteredSpell(z)
end
castFrRA = castFrostResistanceAura

--Added by charroux
function castFireResistanceAura(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.FireResistanceAura
	z.BuffName = z.SpellName
	z.EnemyTargetNotNeeded = 1
	return Zorlen_CastCommonRegisteredSpell(z)
end
castFiRA = castFireResistanceAura

--Added by Dispatch
--AnySeal will prevent casting a seal if any other seal is active
function castSealOfCommand(AnySeal, test)
	if AnySeal and isSealActive() then
		return false
	end
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.SealOfCommand
	z.BuffName = z.SpellName
	z.EnemyTargetNotNeeded = 1
	vr.pal.lastSealOfCommandCast = GetTime();
	Zorlen_CastCommonRegisteredSpell(z)
end
castSotC = castSealOfCommand

--Added by charroux
--AnySeal will prevent casting a seal if any other seal is active
function castSealOfTheCrusader(AnySeal, test)
	if AnySeal and isSealActive() then
			return false
	end
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.SealOfTheCrusader
	z.BuffName = z.SpellName
	z.EnemyTargetNotNeeded = 1
	Zorlen_CastCommonRegisteredSpell(z)
end
castSotC = castSealOfTheCrusader

--Added by charroux
function castSealOfRighteousness(AnySeal, test)
	if AnySeal and isSealActive() then
			return false
	end
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.SealOfRighteousness
	z.BuffName = z.SpellName
	z.EnemyTargetNotNeeded = 1
	Zorlen_CastCommonRegisteredSpell(z)
end
castSoR = castSealOfRighteousness

--Added by charroux
function castSealOfJustice(AnySeal, test)
	if AnySeal and isSealActive() then
			return false
	end
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.SealOfJustice
	z.BuffName = z.SpellName
	z.EnemyTargetNotNeeded = 1
	Zorlen_CastCommonRegisteredSpell(z)
end
castSoJ = castSealOfJustice

--Added by charroux
function castSealOfLight(AnySeal, test)
	if AnySeal and isSealActive() then
			return false
	end
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.SealOfLight
	z.BuffName = z.SpellName
	z.EnemyTargetNotNeeded = 1
	Zorlen_CastCommonRegisteredSpell(z)
end
castSoL = castSealOfLight

--Added by charroux
function castSealOfWisdom(AnySeal, test)
	if AnySeal and isSealActive() then
			return false
	end
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.SealOfWisdom
	z.BuffName = z.SpellName
	z.EnemyTargetNotNeeded = 1
	Zorlen_CastCommonRegisteredSpell(z)
end
castSoW = castSealOfWisdom

--Added by charroux
function castJudgement(test)
	if not isSealActive() then
		return false
	end
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.Judgement

	if Zorlen_CastCommonRegisteredSpell(z) then
		vr.pal.lastJudgment = GetTime();
		return true
	else
		return false
	end
	--vr.pal.lastJudgment = GetTime();
	--return Zorlen_CastCommonRegisteredSpell(z)
end

--Added by Dispatch
function castCrusaderStrike(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.CrusaderStrike
	--CastSpellByName("Crusader Strike");
	--vr.api.LastSpellCast = GetTime()
	return Zorlen_CastCommonRegisteredSpell(z)
end

--Added by Dispatch
function castHammerOfJustice(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.HammerOfJustice
	--CastSpellByName("Holy Strike");
	--vr.api.LastSpellCast = GetTime()
	return Zorlen_CastCommonRegisteredSpell(z)
end

--Added by Dispatch
function castHolyStrike(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.HolyStrike
	--CastSpellByName("Holy Strike");
	--vr.api.LastSpellCast = GetTime()
	return Zorlen_CastCommonRegisteredSpell(z)
end

--Added by charroux
function castDivineProtection(test)
	local z = {}
	z.Test = test
	z.SpellName = LOCALIZATION_ZORLEN.DivineProtection
	z.BuffName = z.SpellName
	z.EnemyTargetNotNeeded = 1
	return Zorlen_CastCommonRegisteredSpell(z)
end
