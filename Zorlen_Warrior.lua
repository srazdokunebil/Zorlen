
Zorlen_Warrior_FileBuildNumber = 681

--[[
  Zorlen Library - Started by Marcus S. Zarra
  
  4.20
		castLastStand() added by BigRedBrent
		isPiercingHowl() added by BigRedBrent
  
  4.15
		castPiercingHowl() added by BigRedBrent
  
  3.97
		castShieldBlock() will now only cast if your target is targeting you
  
  3.78
		Zorlen_TacticalMasteryRagePoints() added by BigRedBrent
		Zorlen_BerserkerRageRagePoints() added by BigRedBrent
		Zorlen_BloodrageRagePoints() added by BigRedBrent
  
  3.76.00
		castConcussionBlow() added by BigRedBrent

  3.75.00
		Hamstring should now detect immunity again

  3.70.00
		Fixed Zorlen_WarriorAOE() so that it does not switch stances back and forth if you have Sweeping Strikes

  3.68.00
		Updated the rage cost of Shield Slam

  3.64.00
		Improved Sunder Armor casting some

  3.63.00
		isDeepWounds() added by BigRedBrent
		isShieldBlockActive() added by BigRedBrent

  3.58.01
		Updated: Zorlen_WarriorAOE()

  3.57.00
		castUnlimitedSunderArmor() added by BigRedBrent

  3.55.00
		castBattleStance() added by BigRedBrent
		castDefensiveStance() added by BigRedBrent
		castBerserkerStance() added by BigRedBrent
		isBattleStance() added by BigRedBrent
		isDefensiveStance() added by BigRedBrent
		isBerserkerStance() added by BigRedBrent

  3.51.00
		castSweepingStrikes() added by BigRedBrent
		Zorlen_WarriorAOE() added by BigRedBrent

  3.34.00
		castCleave() added by BigRedBrent
		castWhirlwind() added by BigRedBrent

  3.33.33
		isDisarm() added by BigRedBrent
		Replaced the alt key modifier with the control key.

  3.33.00
		Pressing and holding down the Control Key will now suppress the debuff checking for rend.
  
  3.17.00
		castBerserkerRageSwap() added by BigRedBrent
		forceBerserkerRage() added by BigRedBrent
  
  3.9.15
		Updated castDisarm() to not cast a second time for the same target unless targets change if the target does not have a weapon to disarm.
  
  3.9.14
		Updated castSunderArmor(), castHamstring(), and castRend() to not cast for 7 seconds if the target is immune.
  
  3.9.13
		Updated castSunderArmor() to detect misses.
  
  3.9.12
		swapChargeAndIntercept() added by BigRedBrent
  
  3.9.9h
		castBerserkerRageDefensiveStanceSwap() added by BigRedBrent
  
  3.9.9e
		castChargeAndIntercept() added by BigRedBrent
		forceChargeAndIntercept() added by BigRedBrent
		castBloodrage() added by BigRedBrent
  
  3.9.7
		castDisarm() added by BigRedBrent
  
  3.9.0
		castSunderArmor() will now only cast if sunder stack is not full or 20 seconds after the last sunder if it is full.
		Zorlen_TargetEnemyThenChargeOrIntercept() added by BigRedBrent
		castDeathWish() added by BigRedBrent
  
  3.5.0
		Zorlen_RegisterWarriorStance() added by BigRedBrent
		Zorlen_CheckWarriorStance(stance) added by BigRedBrent
		isSunderFull() added by BigRedBrent
		castSunderArmor() added by BigRedBrent
		
  
  3.2.3
		isEnrageActive() added by BigRedBrent
		castEnrage() added by BigRedBrent
  
  3.0.3b  
		castMortalStrike() added by BigRedBrent
		castBloodthirst() added by BigRedBrent
		castShieldSlam() added by BigRedBrent
		Removed: Zorlen_WarriorEndTierTalentRageCost()
  
  3.0.3  
		isThunderClap() added by BigRedBrent
		isBattleShoutActive() added by BigRedBrent
		Zorlen_ExecuteRageCost() added by BigRedBrent
		Zorlen_HeroicStrikeRageCost() added by BigRedBrent
		Zorlen_SunderArmorRageCost() added by BigRedBrent
		Zorlen_ThunderClapRageCost() added by BigRedBrent
		Zorlen_MortalStrikeRageCost() added by BigRedBrent
		Zorlen_BloodthirstRageCost() added by BigRedBrent
		Zorlen_ShieldSlamRageCost() added by BigRedBrent
		castCharge() added by BigRedBrent
		castTaunt() added by BigRedBrent
		castIntercept() added by BigRedBrent
		castOverpower() added by BigRedBrent
		castRevenge() added by BigRedBrent
		castRend() added by BigRedBrent
		castHamstring() added by BigRedBrent
		castExecute() added by BigRedBrent
		castThunderClap() added by BigRedBrent
		castShieldBash() added by BigRedBrent
		castPummel() added by BigRedBrent
		castShieldBlock() added by BigRedBrent
		castHeroicStrike() added by BigRedBrent
		castDemoralizingShout() added by BigRedBrent
		castBattleShout() added by BigRedBrent
		castBerserkerRage() added by BigRedBrent

  3.0.0  Rewrite by Wynn (Bleeding Hollow), break units into class functions.
		isSunder() added by Wynn
		isRend() added by Wynn
		isHamstring() added by Wynn
		isDemoralized() added by Wynn
--]]



function Zorlen_Warrior_SpellTimerSet()
	local Number = 0
	local TargetName = Zorlen_CastingSpellTargetName
	local SpellName = Zorlen_CastingSpellName
	
	if SpellName == LOCALIZATION_ZORLEN.SunderArmor then
		Number = 30
		TargetName = nil
	
	elseif SpellName == LOCALIZATION_ZORLEN.Devastate then
		if isSunder() then
			Number = 30
			TargetName = nil
			SpellName = LOCALIZATION_ZORLEN.SunderArmor
		end
		
	elseif SpellName == LOCALIZATION_ZORLEN.Rend then
		if Zorlen_CastingSpellRank <= 5 then
			Number = 6 + (Zorlen_CastingSpellRank * 3)
		else
			Number = 21
		end
		
	elseif SpellName == LOCALIZATION_ZORLEN.Overpower then
		Zorlen_ClearTimer("TargetDodgedYou_Overpower", nil, "InternalZorlenMiscTimer")
		
	end
	
	Zorlen_SetTimer(Number, SpellName, TargetName, "InternalZorlenSpellTimers", nil, nil, 1)
end


function Zorlen_Warrior_OnUpdate(arg1, TimerRunDown)
	if not Zorlen_isCurrentClassWarrior then
		return false
	end
	if TimerRunDown then
			if Zorlen_IsTimer("CheckForHamstringDebuffWindow_timer", nil, "InternalZorlenMiscTimer") then
				if Zorlen_GetTimer("CheckForHamstringDebuffWindow_timer", nil, "InternalZorlenMiscTimer") <= 0 then
					if isHamstring() then
						Zorlen_RegisterIfWasHamstring()
					else
						Zorlen_debug("Target is immune to "..LOCALIZATION_ZORLEN.Hamstring.."!")
						Zorlen_WasHamstringSpellCastImmune = 1
						Zorlen_SetTimer(7, LOCALIZATION_ZORLEN.Hamstring, "immune", "InternalZorlenMiscTimer")
					end
					Zorlen_ClearTimer("CheckForHamstringDebuffWindow_timer", nil, "InternalZorlenMiscTimer")
				end
			end
			if Zorlen_IsTimer("CastChargeDelay", nil, "InternalZorlenMiscTimer") then
				if (Zorlen_GetTimer("CastChargeDelay", nil, "InternalZorlenMiscTimer") <= 0) or (Zorlen_Button[LOCALIZATION_ZORLEN.Charge] and IsActionInRange(Zorlen_Button[LOCALIZATION_ZORLEN.Charge]) ~= 1) then
					Zorlen_ClearTimer("CastChargeDelay", nil, "InternalZorlenMiscTimer")
				end
			end
			if Zorlen_IsTimer("castBerserkerRageSwap_SwapWindow", nil, "InternalZorlenMiscTimer") then
				if Zorlen_GetTimer("castBerserkerRageSwap_SwapWindow", nil, "InternalZorlenMiscTimer") <= 0 then
					Zorlen_castBerserkerRageSwap_SwapStart = nil
					Zorlen_castBerserkerRageSwap_SwapBack = nil
					Zorlen_castBerserkerRageSwap_OldStance = nil
					Zorlen_ClearTimer("castBerserkerRageSwap_SwapWindow", nil, "InternalZorlenMiscTimer")
				end
			end
	else
		return false
	end
	return true
end


function Zorlen_Warrior_OnEvent_UPDATE_BONUS_ACTIONBAR()
	Zorlen_RegisterWarriorStance()
	if Zorlen_IsTimer("castBerserkerRageSwap_SwapWindow", nil, "InternalZorlenMiscTimer") then
		Zorlen_castBerserkerRageSwap_SwapStart = nil
		Zorlen_castBerserkerRageSwap_SwapBack = nil
		Zorlen_castBerserkerRageSwap_OldStance = nil
		Zorlen_ClearTimer("castBerserkerRageSwap_SwapWindow", nil, "InternalZorlenMiscTimer")
	elseif Zorlen_castBerserkerRageSwap_SwapStart then
		Zorlen_castBerserkerRageSwap_SwapStart = nil
		Zorlen_SetTimer(30, "castBerserkerRageSwap_SwapWindow", nil, "InternalZorlenMiscTimer", 2, 1)
	end
end


function Zorlen_Warrior_OnEvent_PLAYER_TARGET_CHANGED()
	Zorlen_WasSunderSpellCastImmune = nil
	Zorlen_WasRendSpellCastImmune = nil
	Zorlen_DemoSpellCastImmune = nil
	Zorlen_PiercingHowlSpellCastImmune = nil
	Zorlen_DisarmSpellCastImmune = nil
	Zorlen_WasHamstring = nil
	Zorlen_WasHamstringSpellCastImmune = nil
	Zorlen_ClearTimer(LOCALIZATION_ZORLEN.SunderArmor, "immune", "InternalZorlenMiscTimer")
	Zorlen_ClearTimer(LOCALIZATION_ZORLEN.Rend, "immune", "InternalZorlenMiscTimer")
	Zorlen_ClearTimer(LOCALIZATION_ZORLEN.Hamstring, "immune", "InternalZorlenMiscTimer")
	Zorlen_ClearTimer("CastChargeDelay", nil, "InternalZorlenMiscTimer")
	Zorlen_ClearTimer("CheckForHamstringDebuffWindow_timer", nil, "InternalZorlenMiscTimer")
	Zorlen_RegisterIfWasHamstring()
end


function Zorlen_Warrior_OnEvent_CHAT_MSG_COMBAT_SELF_MISSES(arg1, arg2, arg3)
	if string.find(arg1, LOCALIZATION_ZORLEN.dodges) then
		Zorlen_debug("Target dodged your attack. "..LOCALIZATION_ZORLEN.Overpower.." now!")
		Zorlen_SetTimer(5, "TargetDodgedYou_Overpower", nil, "InternalZorlenMiscTimer", 2, 1)
	end
end


-- function Zorlen_Warrior_OnEvent_CHAT_MSG_SPELL_SELF_DAMAGE(arg1, arg2, arg3, TargetName, failed, immune, hit)
-- 	if failed and Zorlen_LastCastingSpellName == LOCALIZATION_ZORLEN.Devastate then
-- 		Zorlen_ClearTimer(LOCALIZATION_ZORLEN.SunderArmor, nil, "InternalZorlenSpellTimers", 1)
-- 	end
-- 	if not immune and string.find(arg1, LOCALIZATION_ZORLEN.dodged) then
-- 		Zorlen_debug("Target dodged. "..LOCALIZATION_ZORLEN.Overpower.." now!")
-- 		Zorlen_SetTimer(5, "TargetDodgedYou_Overpower", nil, "InternalZorlenMiscTimer", 2, 1)
-- 	elseif not immune and not failed and hit and string.find(arg1, Zorlen_gsub(LOCALIZATION_ZORLEN.HitsOrCritsArray[hit], "%(%.%+%)", LOCALIZATION_ZORLEN.Hamstring, "%(%.%*%)", TargetName)) then
-- 		Zorlen_SetTimer(1, "CheckForHamstringDebuffWindow_timer", nil, "InternalZorlenMiscTimer", 2, 1)
-- 	elseif not immune then
-- 		return
-- 	elseif string.find(arg1, Zorlen_gsub_immune(LOCALIZATION_ZORLEN.Hamstring, TargetName)) then
-- 		Zorlen_debug("Target is immune to "..LOCALIZATION_ZORLEN.Hamstring.."!")
-- 		Zorlen_WasHamstringSpellCastImmune = 1
-- 		Zorlen_SetTimer(7, LOCALIZATION_ZORLEN.Hamstring, "immune", "InternalZorlenMiscTimer")
-- 	elseif string.find(arg1, Zorlen_gsub_immune(LOCALIZATION_ZORLEN.SunderArmor, TargetName)) then
-- 		Zorlen_debug("Target is immune to "..LOCALIZATION_ZORLEN.SunderArmor.."!")
-- 		Zorlen_WasSunderSpellCastImmune = 1
-- 		Zorlen_SetTimer(7, LOCALIZATION_ZORLEN.SunderArmor, "immune", "InternalZorlenMiscTimer")
-- 	elseif string.find(arg1, Zorlen_gsub_immune(LOCALIZATION_ZORLEN.Rend, TargetName)) then
-- 		Zorlen_debug("Target is immune to "..LOCALIZATION_ZORLEN.Rend.."!")
-- 		Zorlen_WasRendSpellCastImmune = 1
-- 		Zorlen_SetTimer(7, LOCALIZATION_ZORLEN.Rend, "immune", "InternalZorlenMiscTimer")
-- 	end
-- end

function Zorlen_Warrior_OnEvent_CHAT_MSG_SPELL_SELF_DAMAGE(arg1, arg2, arg3, TargetName, failed, immune, hit)
	if failed and Zorlen_LastCastingSpellName and Zorlen_LastCastingSpellName == LOCALIZATION_ZORLEN.Devastate and string.find(arg1, Zorlen_LastCastingSpellName) then
		Zorlen_ClearTimer(LOCALIZATION_ZORLEN.SunderArmor, nil, "InternalZorlenSpellTimers", 1)
	end
	if not immune and string.find(arg1, LOCALIZATION_ZORLEN.dodged) then
		Zorlen_debug("Target dodged. "..LOCALIZATION_ZORLEN.Overpower.." now!")
		Zorlen_SetTimer(5, "TargetDodgedYou_Overpower", nil, "InternalZorlenMiscTimer", 2, 1)
	elseif not immune and not failed and hit and string.find(arg1, Zorlen_gsub(LOCALIZATION_ZORLEN.HitsOrCritsArray[hit], "%(%.%+%)", LOCALIZATION_ZORLEN.Hamstring, "%(%.%*%)", TargetName)) then
		Zorlen_SetTimer(1, "CheckForHamstringDebuffWindow_timer", nil, "InternalZorlenMiscTimer", 2, Zorlen_CheckForHamstringDebuffWindow_timer_function)
	elseif not immune then
		return
	elseif string.find(arg1, Zorlen_gsub(LOCALIZATION_ZORLEN.ImmuneArray[immune], "%(%.%+%)", LOCALIZATION_ZORLEN.Hamstring, "%(%.%*%)", TargetName)) then
		Zorlen_debug("Target is immune to "..LOCALIZATION_ZORLEN.Hamstring.."!")
		Zorlen_WasHamstringSpellCastImmune = 1
		Zorlen_SetTimer(7, LOCALIZATION_ZORLEN.Hamstring, "immune", "InternalZorlenMiscTimer")
	elseif string.find(arg1, Zorlen_gsub(LOCALIZATION_ZORLEN.ImmuneArray[immune], "%(%.%+%)", LOCALIZATION_ZORLEN.SunderArmor, "%(%.%*%)", TargetName)) then
		Zorlen_debug("Target is immune to "..LOCALIZATION_ZORLEN.SunderArmor.."!")
		Zorlen_WasSunderSpellCastImmune = 1
		Zorlen_SetTimer(7, LOCALIZATION_ZORLEN.SunderArmor, "immune", "InternalZorlenMiscTimer")
	elseif string.find(arg1, Zorlen_gsub(LOCALIZATION_ZORLEN.ImmuneArray[immune], "%(%.%+%)", LOCALIZATION_ZORLEN.Rend, "%(%.%*%)", TargetName)) then
		Zorlen_debug("Target is immune to "..LOCALIZATION_ZORLEN.Rend.."!")
		Zorlen_WasRendSpellCastImmune = 1
		Zorlen_SetTimer(7, LOCALIZATION_ZORLEN.Rend, "immune", "InternalZorlenMiscTimer")
	end
end


function Zorlen_Warrior_OnEvent_CHAT_MSG_SPELL_FAILED_LOCALPLAYER(arg1, arg2, arg3)
	if string.find(arg1, Zorlen_gsub(LOCALIZATION_ZORLEN.no_weapons_equipped, "%(%.%+%)", LOCALIZATION_ZORLEN.Disarm)) then
			Zorlen_debug(LOCALIZATION_ZORLEN.Disarm.." failed!")
			Zorlen_DisarmSpellCastImmune = 1
	elseif string.find(arg1, Zorlen_gsub(LOCALIZATION_ZORLEN.A_more_powerful_spell_is_already_active, "%(%.%+%)", LOCALIZATION_ZORLEN.SunderArmor)) then
		Zorlen_debug(LOCALIZATION_ZORLEN.SunderArmor.." failed!")
		Zorlen_WasSunderSpellCastImmune = 1
		Zorlen_SetTimer(7, LOCALIZATION_ZORLEN.SunderArmor, "immune", "InternalZorlenMiscTimer")
	end
end



function castUnlimitedSunderArmor(test)
	return castSunderArmor(99, test)
end

function castSunderArmor(RemainingDurationCastTime, test)
	local RemainingDurationCastTime = RemainingDurationCastTime or 5
	local SpellName = LOCALIZATION_ZORLEN.SunderArmor
	local DebuffImmune = Zorlen_IsTimer(SpellName, "immune", "InternalZorlenMiscTimer")
	local ManaNeeded = nil
	if Zorlen_GetTimer(SpellName, nil, "InternalZorlenSpellTimers") <= RemainingDurationCastTime or not isSunderFull() then
		if not Zorlen_Button[SpellName] then
			ManaNeeded = Zorlen_SunderArmorRageCost()
		end
		return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, DebuffImmune, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
	end
	return false
end

-- Will return false if Sunder Armor is stacked less than 5 times on the target.
function isSunderFull(unit)
	if Zorlen_GetDebuffStack("Ability_Warrior_Sunder", unit) == 5 then
		return true
	else
		return false
	end
end






-- this is called when ever the main bar changes due to chainging stance
-- Example: Zorlen_CurrentStance == "Battle Stance"
-- The example above will return true if you are currently in the Battle Stance.
function Zorlen_RegisterWarriorStance()
	local i;
	local max = GetNumShapeshiftForms();
	for i = 1 , max do
		local _, name, isActive = GetShapeshiftFormInfo(i);
		if isActive then
			Zorlen_debug("You are now in "..name..".");
			Zorlen_CurrentStance = name;
			return;
		end
	end
	Zorlen_CurrentStance = "Default";
end

function Zorlen_RegisterIfWasHamstring()
	if not Zorlen_WasHamstring then
		if isHamstring() then
			Zorlen_debug(LOCALIZATION_ZORLEN.Hamstring.." was found on target: "..UnitName("target").."");
			Zorlen_ClearTimer("CheckForHamstringDebuffWindow_timer", nil, "InternalZorlenMiscTimer")
			Zorlen_WasHamstring = 1;
		end
	end
end
	
-- Will return true if you are in the queried stance.
-- Example: Zorlen_CheckWarriorStance("Battle Stance")
-- The example above will return true if you are currently in the Battle Stance.
function Zorlen_CheckWarriorStance(stance)
	if stance == Zorlen_CurrentStance then
		return true
	else
		return false
	end
end

function isBattleStance()
	if LOCALIZATION_ZORLEN.BattleStance == Zorlen_CurrentStance then
		return true
	else
		return false
	end
end

function isDefensiveStance()
	if LOCALIZATION_ZORLEN.DefensiveStance == Zorlen_CurrentStance then
		return true
	else
		return false
	end
end

function isBerserkerStance()
	if LOCALIZATION_ZORLEN.BerserkerStance == Zorlen_CurrentStance then
		return true
	else
		return false
	end
end

function isSunder(unit, dispelable)
	return Zorlen_checkDebuff("Ability_Warrior_Sunder", unit, dispelable)
end

function isDeepWounds(unit, dispelable)
	return Zorlen_checkDebuff("Ability_BackStab", unit, dispelable)
end

function isRend(unit, dispelable)
	return Zorlen_checkDebuff("Ability_Gouge", unit, dispelable)
end

function isHamstring(unit, dispelable)
	return Zorlen_checkDebuff("Ability_ShockWave", unit, dispelable)
end

function isPiercingHowl(unit, dispelable)
	return Zorlen_checkDebuff("Spell_Shadow_DeathScream", unit, dispelable)
end

function isDemoralized(unit, dispelable)
	return Zorlen_checkDebuff("Ability_Warrior_WarCry", unit, dispelable)
end

function isThunderClap(unit, dispelable)
	return Zorlen_checkDebuff("Spell_Nature_ThunderClap", unit, dispelable)
end

function isDisarm(unit, dispelable)
	return Zorlen_checkDebuff("Ability_Warrior_Disarm", unit, dispelable)
end

function isShieldBlockActive()
	return Zorlen_checkBuff("Ability_Defend")
end

function isBattleShoutActive()
	return Zorlen_checkBuff("Ability_Warrior_BattleShout")
end

function isEnrageActive()
	return Zorlen_checkBuff("Spell_Shadow_UnholyFrenzy")
end



-- Returns the number of rage points the Tactical Mastery ability will allow you to keep when you switch stances.
-- Will return 0 if no rank of the ability has been learned.
function Zorlen_TacticalMasteryRagePoints()
	return (5 * Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.TacticalMastery))
end

-- Returns the number of rage points the Berserker Rage ability will give.
-- Will return 0 if no rank of the ability has been learned from the Warrior Trainer.
function Zorlen_BerserkerRageRagePoints()
	if Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.BerserkerRage) then
		return (5 * Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.ImprovedBerserkerRage))
	end
	return 0
end

-- Returns the number of rage points the Bloodrage ability will give.
-- Will return 0 if no rank of the ability has been learned from the Warrior Trainer.
function Zorlen_BloodrageRagePoints()
	if not Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.Bloodrage) then
		return 0
	end
	local t = Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.ImprovedBloodrage)
	if (t == 2) then
		return 15
	elseif (t == 1) then
		return 12
	end
	return 10
end


-- Returns the number of rage points the Execute ability will need for it to cast (even if talent points are spent on it to lower its required rage points).
-- Will return 0 if no rank of the ability has been learned from the Warrior Trainer.
function Zorlen_ExecuteRageCost()
	if (not Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.Execute)) then
		return 0
	end
	local t = Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.ImprovedExecute)
	local f = Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.FocusedRage)
	if (t == 2) then
		return (10 - f)
	elseif (t == 1) then
		return (13 - f)
	end
	return (15 - f)
end

-- Returns the number of rage points the Heroic Strike ability will need for it to cast (even if talent points are spent on it to lower its required rage points).
-- Will return 0 if no rank of the ability has been learned from the Warrior Trainer.
function Zorlen_HeroicStrikeRageCost()
	if Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.HeroicStrike) then
		return (15 - (Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.ImprovedHeroicStrike) + Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.FocusedRage)))
	end
	return 0
end

-- Returns the number of rage points the "Sunder Armor" ability will need for it to cast (even if talent points are spent on it to lower its required rage points).
-- Will return 0 if no rank of the ability has been learned from the Warrior Trainer.
function Zorlen_SunderArmorRageCost()
	if Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.SunderArmor) then
		return (15 - Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.ImprovedSunderArmor))
	end
	return 0
end

function Zorlen_WhirlwindRageCost()
	if Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.Whirlwind) then
		return (25 - ((Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.ImprovedWhirlwind) * 2) + Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.FocusedRage)))
	end
	return 0
end

function Zorlen_RendRageCost()
	if Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.Rend) then
		return (10 - Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.FocusedRage))
	end
	return 0
end

-- Returns the number of rage points the Thunder Clap ability will need for it to cast (even if talent points are spent on it to lower its required rage points).
-- Will return 0 if no rank of the ability has been learned from the Warrior Trainer.
function Zorlen_ThunderClapRageCost()
	if not Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.ThunderClap) then
		return 0
	end
	local t = Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.ImprovedThunderClap)
	local f = Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.FocusedRage)
	if (t == 3) then
		return (16 - f)
	elseif (t == 2) then
		return (18 - f)
	elseif (t == 1) then
		return (19 - f)
	end
	return (20 - f)
end

-- Returns a value of 30 if the talent Mortal Strike has been learned and will return 0 if the talent has not been learned.
function Zorlen_MortalStrikeRageCost()
	if Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.MortalStrike) == 1 then
		return (30 - Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.FocusedRage))
	end
	return 0
end

-- Returns a value of 30 if the talent Bloodthirst has been learned and will return 0 if the talent has not been learned.
function Zorlen_BloodthirstRageCost()
	if Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.Bloodthirst) == 1 then
		return (30 - Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.FocusedRage))
	end
	return 0
end

-- Returns a value of 30 if the talent Shield Slam has been learned and will return 0 if the talent has not been learned.
function Zorlen_ShieldSlamRageCost()
	if Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.ShieldSlam) == 1 then
		return (20 - Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.FocusedRage))
	end
	return 0
end

-------------------------------------------------------------------------------

function castBattleShout(test)
	local SpellName = LOCALIZATION_ZORLEN.BattleShout
	local ManaNeeded = 10
	local EnemyTargetNotNeeded = 1
	local BuffName = SpellName
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, ManaNeeded, nil, EnemyTargetNotNeeded, BuffName, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castBattleStance(test)
	local SpellName = LOCALIZATION_ZORLEN.BattleStance
	local EnemyTargetNotNeeded = 1
	if Zorlen_CheckWarriorStance(SpellName) then
		return false
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, nil, nil, EnemyTargetNotNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castBerserkerRage(test)
	local SpellName = LOCALIZATION_ZORLEN.BerserkerRage
	local EnemyTargetNotNeeded = 1
	if not Zorlen_Button[SpellName] then
		if not isBerserkerStance() then
			return false
		end
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, nil, nil, EnemyTargetNotNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castBerserkerStance(test)
	local SpellName = LOCALIZATION_ZORLEN.BerserkerStance
	local EnemyTargetNotNeeded = 1
	if Zorlen_CheckWarriorStance(SpellName) then
		return false
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, nil, nil, EnemyTargetNotNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castBloodrage(test)
	--print('Invoking castBloodrage()')
	local SpellName = LOCALIZATION_ZORLEN.Bloodrage
	local SelfHealthGreaterThanPercent = 20
	local EnemyTargetNotNeeded = 1
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, nil, SelfHealthGreaterThanPercent, EnemyTargetNotNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castBloodthirst(test)
	local SpellName = LOCALIZATION_ZORLEN.Bloodthirst
	local ManaNeeded = 30
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castChallengingShout(test)
	print('Invoking castChallengingShout()')
	local SpellName = LOCALIZATION_ZORLEN.ChallengingShout
	local EnemyTargetNotNeeded = 1
	local ManaNeeded = 5
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, nil, nil, EnemyTargetNotNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castCharge(test)
	local SpellName = LOCALIZATION_ZORLEN.Charge
	if not Zorlen_Button[SpellName] then
		if not isBattleStance() or Zorlen_inCombat() then
			return false
		end
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castCleave(test)
	local SpellName = LOCALIZATION_ZORLEN.Cleave
	local ManaNeeded = 20
	if not Zorlen_Button[SpellName] then
		if not Zorlen_isMainHandEquipped() then
			return false
		end
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castConcussionBlow(test)
	local SpellName = LOCALIZATION_ZORLEN.ConcussionBlow
	local ManaNeeded = 15
	if not Zorlen_Button[SpellName] then
		if not Zorlen_isMainHandEquipped() then
			return false
		end
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castDeathWish(test)
	local SpellName = LOCALIZATION_ZORLEN.DeathWish
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castDefensiveStance(test)
	local SpellName = LOCALIZATION_ZORLEN.DefensiveStance
	local EnemyTargetNotNeeded = 1
	if Zorlen_CheckWarriorStance(SpellName) then
		return false
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, nil, nil, EnemyTargetNotNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castDemoralizingShout(test)
	local SpellName = LOCALIZATION_ZORLEN.DemoralizingShout
	local DebuffName = SpellName
	local DebuffImmune = Zorlen_DemoSpellCastImmune
	local ManaNeeded = 10
	local NoRangeCheck = 1
	if not CheckInteractDistance("target", 3) then
		return false
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, DebuffName, DebuffImmune, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, NoRangeCheck, test)
end

function castDisarm(test)
	local SpellName = LOCALIZATION_ZORLEN.Disarm
	local DebuffName = SpellName
	local DebuffImmune = Zorlen_DisarmSpellCastImmune
	local ManaNeeded = 20
	if not Zorlen_Button[SpellName] then
		if not isDefensiveStance() then
			return false
		end
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, DebuffName, DebuffImmune, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

-- Will some times make getting critted on much more likely.
-- This may cause you more damage so use cautiously.
function castEnrage()
	local u = UnitHealth("player") / UnitHealthMax("player") > 0.2
	local t = Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.Enrage) > 0
	local e = isEnrageActive()
	if not e and t and u and not Zorlen_TargetIsDieingEnemy() then
		ClearTarget()
		DoEmote(LOCALIZATION_ZORLEN.sit)
		backOff()
		return true
	elseif Zorlen_inCombat() and not UnitExists("target") and (e or (t and not u)) then
		TargetLastEnemy()
		return true
	end
	return false
end

function castExecute(test)
	local SpellName = LOCALIZATION_ZORLEN.Execute
	local ManaNeeded = nil
	if not Zorlen_Button[SpellName] then
		if isDefensiveStance() or not Zorlen_TargetIsDieingEnemy() or not Zorlen_isMainHandEquipped() then
			return false
		end
		ManaNeeded = Zorlen_ExecuteRageCost()
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castHamstring(test)
	local SpellName = LOCALIZATION_ZORLEN.Hamstring
	local DebuffName = SpellName
	local DebuffImmune = Zorlen_IsTimer(SpellName, "immune", "InternalZorlenMiscTimer")
	local ManaNeeded = 10
	if not Zorlen_Button[SpellName] then
		if isDefensiveStance() or not Zorlen_isMainHandEquipped() then
			return false
		end
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, DebuffName, DebuffImmune, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castHeroicStrike(test)
	local SpellName = LOCALIZATION_ZORLEN.HeroicStrike
	local ManaNeeded = nil
	if not Zorlen_Button[SpellName] then
		if not Zorlen_isMainHandEquipped() then
			return false
		end
		ManaNeeded = Zorlen_HeroicStrikeRageCost()
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castIntercept(test)
	local SpellName = LOCALIZATION_ZORLEN.Intercept
	local ManaNeeded = 10
	if not Zorlen_Button[SpellName] then
		if not isBerserkerStance() then
			return false
		end
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castLastStand(test)
	local SpellName = LOCALIZATION_ZORLEN.LastStand
	local EnemyTargetNotNeeded = 1
	if Zorlen_HealthDamagePercent("player") < 30 then
		return false
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, nil, nil, EnemyTargetNotNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castMockingBlow(test)
	local SpellName = LOCALIZATION_ZORLEN.MockingBlow
	if not Zorlen_Button[SpellName] then
		if not isBattleStance() then
			return false
		end
	end
	if not Zorlen_TargetIsEnemyTargetingFriendButNotYou() then
		return false
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castMortalStrike(test)
	local SpellName = LOCALIZATION_ZORLEN.MortalStrike
	local ManaNeeded = 30
	if not Zorlen_Button[SpellName] then
		if not Zorlen_isMainHandEquipped() then
			return false
		end
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castOverpower(test)
	local SpellName = LOCALIZATION_ZORLEN.Overpower
	local ManaNeeded = 5
	if not Zorlen_Button[SpellName] then
		if not Zorlen_isMainHandEquipped() then
			return false
		end
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castPiercingHowl(test)
	local SpellName = LOCALIZATION_ZORLEN.PiercingHowl
	local DebuffName = SpellName
	local DebuffImmune = Zorlen_PiercingHowlSpellCastImmune
	local ManaNeeded = 10
	local NoRangeCheck = 1
	if not CheckInteractDistance("target", 3) then
		return false
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, DebuffName, DebuffImmune, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, NoRangeCheck, test)
end

function castPummel(test)
	local SpellName = LOCALIZATION_ZORLEN.Pummel
	local ManaNeeded = 10
	if not Zorlen_Button[SpellName] then
		if not isBerserkerStance() then
			return false
		end
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castRend(test)
	local SpellName = LOCALIZATION_ZORLEN.Rend
	local DebuffName = SpellName
	local DebuffImmune = Zorlen_IsTimer(SpellName, "immune", "InternalZorlenMiscTimer")
	local ManaNeeded = 10
	if not Zorlen_Button[SpellName] then
		if isBerserkerStance() or not Zorlen_isMainHandEquipped() then
			return false
		end
	end
	local DebuffTimer = 1
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, DebuffName, DebuffImmune, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test, DebuffTimer)
end

function castRevenge(test)
	local SpellName = LOCALIZATION_ZORLEN.Revenge
	local ManaNeeded = 5
	if not Zorlen_Button[SpellName] then
		if not isDefensiveStance() or not Zorlen_isMainHandEquipped() then
			return false
		end
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castShieldBash(test)
	local SpellName = LOCALIZATION_ZORLEN.ShieldBash
	local ManaNeeded = 10
	if not Zorlen_Button[SpellName] then
		if isBerserkerStance() or not Zorlen_isShieldEquipped() then
			return false
		end
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castShieldBlock(test)
	local SpellName = LOCALIZATION_ZORLEN.ShieldBlock
	local ManaNeeded = 10
	local BuffName = SpellName
	if not Zorlen_Button[SpellName] then
		if not isDefensiveStance() or not Zorlen_isShieldEquipped() then
			return false
		end
	end
	if not Zorlen_TargetIsEnemyTargetingYou() then
		return false
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, ManaNeeded, nil, nil, BuffName, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castShieldSlam(test)
	local SpellName = LOCALIZATION_ZORLEN.ShieldSlam
	local ManaNeeded = 20
	if not Zorlen_Button[SpellName] then
		if not Zorlen_isShieldEquipped() then
			return false
		end
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castSweepingStrikes(test)
	local SpellName = LOCALIZATION_ZORLEN.SweepingStrikes
	local ManaNeeded = 30
	if not Zorlen_Button[SpellName] then
		if not isBattleStance() then
			return false
		end
	end
	if not Zorlen_isMainHandEquipped() then
		return false
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castTaunt(test)
	local SpellName = LOCALIZATION_ZORLEN.Taunt
	if not Zorlen_Button[SpellName] then
		if not isDefensiveStance() then
			return false
		end
	end
	if not Zorlen_TargetIsEnemyTargetingFriendButNotYou() then
		return false
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

function castThunderClap(test)
	local SpellName = LOCALIZATION_ZORLEN.ThunderClap
	local DebuffName = SpellName
	local ManaNeeded = nil
	local NoRangeCheck = 1
	if not Zorlen_Button[SpellName] then
		if not isBattleStance() then
			return false
		end
		ManaNeeded = Zorlen_ThunderClapRageCost()
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, DebuffName, nil, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, NoRangeCheck, test)
end

function castWhirlwind(test)
	local SpellName = LOCALIZATION_ZORLEN.Whirlwind
	local ManaNeeded = 25
	if not Zorlen_Button[SpellName] then
		if not isBerserkerStance() or not Zorlen_isMainHandEquipped() then
			return false
		end
	end
	return Zorlen_CastCommonRegisteredSpell(nil, SpellName, nil, nil, ManaNeeded, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, test)
end

-------------------------------------------------------------------------------

function Zorlen_TargetEnemyThenChargeOrIntercept()
	if not Zorlen_TargetIsEnemy() then
		Zorlen_TargetEnemy()
		return true
	elseif castCharge() then
		return true
	elseif castIntercept() then
		return true
	end
	return false
end


function swapChargeAndIntercept()
	return castChargeAndIntercept("swap")
end


function forceChargeAndIntercept()
	return castChargeAndIntercept("force")
end


function castChargeAndIntercept(mode)
	if Zorlen_TargetIsEnemy() then
		if castCharge() then
			Zorlen_SetTimer(5, "CastChargeDelay_timer", nil, "InternalZorlenMiscTimer", 2, 1)
			return true
		elseif castIntercept() then
			return true
		elseif Zorlen_Button[LOCALIZATION_ZORLEN.Charge] and (mode == "force" or mode == "swap" or mode == "mid") and IsActionInRange(Zorlen_Button[LOCALIZATION_ZORLEN.Charge]) == 1 and not isBattleStance() and Zorlen_notInCombat() and Zorlen_checkCooldownByName(LOCALIZATION_ZORLEN.Charge) then
			return castBattleStance()
		elseif Zorlen_Button[LOCALIZATION_ZORLEN.Intercept] and (mode == "force" or mode == "swap" or (mode == "mid" and UnitHealth("player") / UnitHealthMax("player") >= 0.5)) and (Zorlen_checkCooldownByName(LOCALIZATION_ZORLEN.Charge) or not Zorlen_IsTimer("CastChargeDelay", nil, "InternalZorlenMiscTimer")) and IsActionInRange(Zorlen_Button[LOCALIZATION_ZORLEN.Intercept]) == 1 and not isBerserkerStance() and Zorlen_checkCooldownByName(LOCALIZATION_ZORLEN.Intercept) and ((UnitMana("player") >= 10 and Zorlen_TacticalMasteryRagePoints() >= 10) or ((mode == "force" or mode == "mid") and ((Zorlen_checkCooldownByName(LOCALIZATION_ZORLEN.Bloodrage) and UnitHealth("player") / UnitHealthMax("player") > 0.2) or ((Zorlen_checkCooldownByName(LOCALIZATION_ZORLEN.BerserkerRage)) and (Zorlen_BerserkerRageRagePoints() >= 10 or (Zorlen_BerserkerRageRagePoints() >= 5 and Zorlen_TacticalMasteryRagePoints() >= 5 and UnitMana("player") >= 5)))))) then
			return castBerserkerStance()
		elseif Zorlen_Button[LOCALIZATION_ZORLEN.Intercept] and isBerserkerStance() and Zorlen_inCombat() and IsActionInRange(Zorlen_Button[LOCALIZATION_ZORLEN.Intercept]) == 1 and Zorlen_checkCooldownByName(LOCALIZATION_ZORLEN.Intercept) and UnitMana("player") < 10 and (Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.ImprovedBerserkerRage) == 2 or (Zorlen_GetTalentRank(LOCALIZATION_ZORLEN.ImprovedBerserkerRage) == 1 and UnitMana("player") >= 5)) and castBerserkerRage() then
			return true
		elseif Zorlen_Button[LOCALIZATION_ZORLEN.Intercept] and isBerserkerStance() and ((mode == "force") or (mode == "mid" and UnitHealth("player") / UnitHealthMax("player") >= 0.5)) and Zorlen_inCombat() and IsActionInRange(Zorlen_Button[LOCALIZATION_ZORLEN.Intercept]) == 1 and Zorlen_checkCooldownByName(LOCALIZATION_ZORLEN.Intercept) and UnitMana("player") < 10 and castBloodrage() then
			return true
		end
	end
	if (mode == "force" or mode == "swap") and not Zorlen_Button[LOCALIZATION_ZORLEN.Charge] then
		if Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.Charge) then
			Zorlen_debug("You must put "..LOCALIZATION_ZORLEN.Charge.." on one of your action bars (even if it is hidden) for Zorlen's castChargeAndIntercept() to work right!", 1);
		end
	end
	if (mode == "force" or mode == "swap") and not Zorlen_Button[LOCALIZATION_ZORLEN.Intercept] then
		if Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.Intercept) then
			Zorlen_debug("You must put "..LOCALIZATION_ZORLEN.Intercept.." on one of your action bars (even if it is hidden) for Zorlen's castChargeAndIntercept() to work right!", 1);
		end
	end
	return false
end


-- This will go back to the stance you had been in after Berserker Rage is cast.
function castBerserkerRageSwap()
	if Zorlen_castBerserkerRageSwap_OldStance and (Zorlen_CheckWarriorStance(Zorlen_castBerserkerRageSwap_OldStance) or (not Zorlen_CheckWarriorStance(Zorlen_castBerserkerRageSwap_OldStance) and not isBerserkerStance())) then
		Zorlen_castBerserkerRageSwap_SwapStart = nil
		Zorlen_castBerserkerRageSwap_SwapBack = nil
		Zorlen_castBerserkerRageSwap_OldStance = nil
		Zorlen_ClearTimer("castBerserkerRageSwap_SwapWindow", nil, "InternalZorlenMiscTimer")
	end
	if Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.BerserkerRage) then
		if Zorlen_checkCooldownByName(LOCALIZATION_ZORLEN.BerserkerRage) then
			if not isBerserkerStance() then
				if not Zorlen_castBerserkerRageSwap_OldStance then
					Zorlen_castBerserkerRageSwap_OldStance = Zorlen_CurrentStance;
				end
				Zorlen_castBerserkerRageSwap_SwapStart = 1;
				Zorlen_castBerserkerRageSwap_SwapBack = nil;
				return castBerserkerStance()
			elseif castBerserkerRage() then
				if Zorlen_IsTimer("castBerserkerRageSwap_SwapWindow", nil, "InternalZorlenMiscTimer") then
					Zorlen_castBerserkerRageSwap_SwapBack = 1;
				else
					Zorlen_castBerserkerRageSwap_SwapBack = nil;
					Zorlen_castBerserkerRageSwap_OldStance = nil;
				end
				return true
			end
		elseif Zorlen_castBerserkerRageSwap_SwapBack and isBerserkerStance() and Zorlen_castBerserkerRageSwap_OldStance then
			local SpellName = Zorlen_castBerserkerRageSwap_OldStance
			local SpellID = Zorlen_GetSpellID(SpellName)
			CastSpell(SpellID, 0)
			return true
		end
	end
	return false
end


-- This will only go to Berserker Stance if Berserker Rage can be cast.
function forceBerserkerRage()
	if Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.BerserkerRage) then
		if Zorlen_checkCooldownByName(LOCALIZATION_ZORLEN.BerserkerRage) then
			if not isBerserkerStance() then
				return castBerserkerStance()
			else
				return castBerserkerRage()
			end
		end
	end
	return false
end


-- This will always go back to Defensive Stance after Berserker Rage is cast.
-- This has been replaced with castBerserkerRageSwap() since that will go back to the stance that you had been in.
function castBerserkerRageDefensiveStanceSwap()
	if Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.BerserkerRage) then
		if Zorlen_checkCooldownByName(LOCALIZATION_ZORLEN.BerserkerRage) then
			if not isBerserkerStance() then
				return castBerserkerStance()
			else
				return castBerserkerRage()
			end
		elseif isBerserkerStance() and castDefensiveStance() then
			return true
		end
	end
	return false
end

function Zorlen_WarriorAOE()
	if Zorlen_TargetIsActiveEnemy() then
		castAttack()
	else
		stopAttack()
		return castBattleShout()
	end
	local t = Zorlen_TacticalMasteryRagePoints()
	local m = UnitMana("player")
	if castBattleShout() then
		return true
	elseif castDemoralizingShout() then
		return true
	elseif castSweepingStrikes() then
		return true
	elseif not isBattleStance() and Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.SweepingStrikes) and Zorlen_checkCooldownByName(LOCALIZATION_ZORLEN.SweepingStrikes) and m <= (t + 10) and castBattleStance() then
		return true
	elseif (not Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.SweepingStrikes) or not Zorlen_checkCooldownByName(LOCALIZATION_ZORLEN.SweepingStrikes) or not (m <= (t + 10))) and castWhirlwind() then
		return true
	elseif not isBerserkerStance() and (not Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.SweepingStrikes) or not Zorlen_checkCooldownByName(LOCALIZATION_ZORLEN.SweepingStrikes)) and Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.Whirlwind) and Zorlen_checkCooldownByName(LOCALIZATION_ZORLEN.Whirlwind) and m <= (t + 10) and castBerserkerStance() then
		return true
	elseif (not isBattleStance() or not Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.SweepingStrikes) or not Zorlen_checkCooldownByName(LOCALIZATION_ZORLEN.SweepingStrikes)) and (not isBerserkerStance() or not Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.Whirlwind) or not Zorlen_checkCooldownByName(LOCALIZATION_ZORLEN.Whirlwind)) and castCleave() then
		return true
	elseif (not Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.SweepingStrikes) or (not Zorlen_checkCooldownByName(LOCALIZATION_ZORLEN.SweepingStrikes) and not Zorlen_checkBuff(Ability_Rogue_SliceDice))) and castThunderClap() then
		return true
	elseif not isBattleStance() and not Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.Cleave) and (not Zorlen_IsSpellKnown(LOCALIZATION_ZORLEN.Whirlwind) or not Zorlen_checkCooldownByName(LOCALIZATION_ZORLEN.Whirlwind)) and m <= (t + 10) and castBattleStance() then
		return true
	end
	return false
end


-- PsychoInRaid explanation
-- PsychoInRaid is a global variable used to indicate when you're raid buffed and should play more aggressively. It is enabled and disabled using 2 macro's.
-- You only have to set the variable once during your game session, but when you log off or exit the game, please remember to enable it again. It's disabled by default.
-- PsychoInRaid set to true
-- /script psychoInRaid = true;
-- /script Zorlen_debug("PsychoInRaid: " .. tostring(psychoInRaid), 1)

-- PsychoInRaid set to false
-- /script psychoInRaid = false;
-- /script Zorlen_debug("PsychoInRaid: " .. tostring(psychoInRaid), 1)

function Zorlen_EatMyShit()
	SendChatMessage("Hello world")
end

-- btIndex > index of the Bloodthirst spell in your spellbook. Start counting from first page left side first, then right side.
-- wwIndex > index of the Whirlwind spell in your spellbook. Start counting from first page left side first, then right side.
-- rendIndex > index of the Rend spell in your spellbook. Start counting from first page left side first, then right side.
-- ww025 > the amount of rage required to cast Whirlwind when Bloodthirst has a high cooldown remaining. Number should be between 0 and 1. Advised number: 0.25.
-- ww040 > the amount of rage required to cast Whirlwind when Bloodthirst has a medium cooldown remaining. Number should be between 0 and 1. Advised number: 0.25.
-- ww055 > the amount of rage required to cast Whirlwind when Bloodthirst has a low cooldown remaining. Number should be between 0 and 1. Advised number: 0.45.
-- rageGain > the index to indicate how good your gear is. Based on this index, the Heroic Strike will be cast more aggressively. The lowest possible number is 1. Advised number for good gear: 1.
-- targetBossHealth > the health used to determine if a target is a boss or not. Advised number: 200000.
-- psychoInRaid > this is a global variable used to set the Heroic Strike and Hamstring more aggressively when raid buffed. This variable is enabled/disabled using another macro, as explain above.
-- sunderMobHealth > the minimum absolute health a mob has to have before it will get sundered. Advised number: 20000.
-- sunderMobPercentage > the minimum percentage of health a mob has to have before it will get sundered. Advised number: 0.5.
function Zorlen_PsychoSingleTargetAoE(btIndex, wwIndex, rendIndex, ww025, ww040, ww055, rageGain, targetBossHealth, psychoInRaid, sunderMobHealth, sunderMobPercentage)	
	-- First set some basic variables we need to know every time this macro triggers
	local atpBase, atpPosBuff, atpNegBuff = UnitAttackPower("player");
	local atpEffective = atpBase + atpPosBuff + atpNegBuff;
	local playerRage = UnitMana("player") / UnitManaMax("player");
	local currenttime = math.floor(GetTime() * 10) / 10;
	local targetHealth = UnitHealth("target") / UnitHealthMax("target");
	if (rageGain < 1) then rageGain = 1; end
	
	-- Get the CDs on BT and WW, as well as rend to calculate the GCD
	local btcd = math.floor(GetSpellCooldown(btIndex, BOOKTYPE_SPELL) * 10) / 10;
	local gcd = math.floor(GetSpellCooldown(rendIndex, BOOKTYPE_SPELL) * 10) / 10;
	local wwcd = math.floor(GetSpellCooldown(wwIndex, BOOKTYPE_SPELL) * 10) / 10;
	
	-- Make sure to reset values in case they aren't existing yet
	if (gcd == nil) then gcd = 0; end
	if (btcd == nil) then btcd = 0; end
	if (wwcd == nil) then wwcd = 0; end
	if (psychoSunderAttack == nil) then psychoSunderAttack = false; end
	if (psychoPercent75HealthTime == nil) then psychoPercent75HealthTime = 0; end
	if (psychoPercent50HealthTime == nil) then psychoPercent50HealthTime = 0; end
	if (psychoMobStartingHealth == nil) then psychoMobStartingHealth = 2; end
	if (psychoBsCastTime == nil) then psychoBsCastTime = math.floor(GetTime() * 10) / 10; end
	
	-- Check if BT and WW are the cause of the GCD
	local wwgcd = gcd == wwcd;
	local btgcd = gcd == btcd;
	
	-- Check if a Unit is considered to be a boss
	local targetIsBoss = false;
	if UnitLevel("target") == -1 or UnitHealthMax("target") > targetBossHealth then targetIsBoss = true; end
	
	-- Set the timing for when a mob hits 75 and 50 percent health
	if targetHealth < 0.75 and targetHealth > 0.60 and psychoPercent75HealthTime == 0 then psychoPercent75HealthTime = currenttime; end
	if targetHealth < 0.50 and psychoPercent50HealthTime == 0 then psychoPercent50HealthTime = currenttime; end
	
	-- Calculate a variable to determine if the mob will die too early without us having the possibility to execute
	local holdBackGcd = Zorlen_PsychoHoldBackGcd(currenttime, psychoPercent50HealthTime, psychoPercent75HealthTime);
		
	-- Are we closing in on interfering with the GCD for BT or WW
	local outsideRotationWindow = ((not btgcd and (btcd ~=0) and (currenttime - btcd) <= 4.3) and (not wwgcd and (wwcd ~=0) and currenttime - wwcd <= 8.3));
	
	-- Lets reset some variables, get our new target and attack it if we can
	if (GetUnitName("target") == nil or UnitIsDead("target")) and psychoSunderAttack then psychoMobStartingHealth = 2; psychoPercent75HealthTime = 0; psychoPercent50HealthTime = 0; psychoSunderAttack = false; Zorlen_debug("Sunder set to: " .. tostring(psychoSunderAttack), 1); end
	if (GetUnitName("target") == nil or not Zorlen_TargetIsActiveEnemy()) then zTargetNearestEnemy(); targetHealth = UnitHealth("target") / UnitHealthMax("target"); psychoMobStartingHealth = UnitHealth("target") / UnitHealthMax("target"); end
	if CheckInteractDistance("target", 3) and not isAttackActive() then castAttack() end
	
	-- If we manually swap targets, we also want the psychoMobStartingHealth to reset
	if not (GetUnitName("target") == nil or UnitIsDead("target")) and (UnitIsUnit("target", "playertarget") == nil) then psychoMobStartingHealth = (UnitHealth("target") / UnitHealthMax("target")); end
	
	-- Calculate a variable to determine if the newly targeted mob will die soon in raid
	local cuttingItClose = Zorlen_PsychoCuttingItClose(targetHealth, targetIsBoss, psychoInRaid, psychoMobStartingHealth);
	
	-- Lets decide if we sunder or not
	if not psychoSunderAttack and UnitHealthMax("target") > sunderMobHealth and playerRage > 0.15 and not isSunderFull("target") and targetHealth > 0.20 then psychoSunderAttack = true; CastSpellByName("Sunder Armor"); elseif not psychoSunderAttack and isSunderFull("target") and targetHealth > 0.20 then psychoSunderAttack = true; elseif not psychoSunderAttack and targetHealth > 0.20 and targetHealth < sunderMobPercentage then psychoSunderAttack = true; elseif not psychoSunderAttack and not (GetUnitName("target") == nil or UnitIsDead("target")) and UnitHealthMax("target") <= sunderMobHealth then psychoSunderAttack = true; end
	
	-- Stance dance :)
	--if (Zorlen_isEnemyTargetingYou() and ((btcd == 0 or btgcd) or (wwcd ~=0 and not wwgcd)) and playerRage < 0.25) then castBattleStance(); elseif ((btcd ~= 0 and not btgcd) and playerRage > 0.15 and (targetHealth > 0.2)) or not Zorlen_isEnemyTargetingYou() then castBerserkerStance(); end
	
	-- Lets bloodrage, but only if we're outside some windows or will mess up execute. Same for Battle Shout
	if not isAttackActive() or (not cuttingItClose and not holdBackGcd and targetHealth > 0.30 and outsideRotationWindow and UnitHealth("player") / UnitHealthMax("player") > 0.5 and playerRage < 0.3) then castBloodrage(); end
	if (not isAttackActive() and not isBattleShoutActive()) or (not cuttingItClose and not holdBackGcd and targetHealth > 0.20 and outsideRotationWindow and (not isBattleShoutActive() or ((currenttime - psychoBsCastTime) > 110)) and playerRage > 0.1 and gcd == 0) then psychoBsCastTime = math.floor(GetTime() * 10) / 10; CastSpellByName("Battle Shout"); end
		
	-- Huge check to decide if we'll execute or bloodthirst based on ATP
	if targetHealth < 0.20 then
		if playerRage > 0.30
		and playerRage < 0.45
		and atpEffective > 2000
		and btcd == 0 then
			CastSpellByName("Bloodthirst")
			CastSpellByName("Heroic Strike")
		else
			if Cg("Execute") then
				CastSpellByName("Execute")		-- TODO: associate with global execute toggle
			end
			CastSpellByName("Heroic Strike")
		end
	elseif playerRage > 0.30
	and psychoSunderAttack then
		CastSpellByName("Bloodthirst")
	end

	-- Conditions for doing WW
	local psychoShouldWhirlwind = Zorlen_PsychoShouldWhirlwind(targetHealth, targetIsBoss, psychoInRaid);
	if psychoSunderAttack and psychoShouldWhirlwind and not holdBackGcd and isBerserkerStance() and targetHealth > 0.20 and (btcd ~=0 and not btgcd) and playerRage > ww025 and (currenttime - btcd) < 2 then CastSpellByName("Whirlwind") end
	if psychoSunderAttack and psychoShouldWhirlwind and not holdBackGcd and isBerserkerStance() and targetHealth > 0.20 and (btcd ~=0 and not btgcd) and playerRage > ww040 and (currenttime - btcd) < 4 then CastSpellByName("Whirlwind") end
	if psychoSunderAttack and psychoShouldWhirlwind and not holdBackGcd and isBerserkerStance() and targetHealth > 0.20 and (btcd ~=0 and not btgcd) and playerRage > ww055 and (currenttime - btcd) <= 5.3 then CastSpellByName("Whirlwind") end
	
	-- Conditions for casting heroic strike
	if psychoSunderAttack and ((psychoInRaid and (playerRage > (rageGain * 0.15))) or (playerRage > (rageGain * 0.25))) and targetHealth > 0.20 and ((not btgcd and (btcd ~=0) and (currenttime - btcd) <= 2) and (not wwgcd and (wwcd ~=0) and currenttime - wwcd <= 4)) then CastSpellByName("Heroic Strike"); end
	if psychoSunderAttack and ((psychoInRaid and (playerRage > (rageGain * 0.25))) or (playerRage > (rageGain * 0.35))) and targetHealth > 0.20 and ((not btgcd and (btcd ~=0) and (currenttime - btcd) <= 3) and (not wwgcd and (wwcd ~=0) and currenttime - wwcd <= 5)) then CastSpellByName("Heroic Strike"); end
	if psychoSunderAttack and ((psychoInRaid and (playerRage > (rageGain * 0.3))) or (playerRage > (rageGain * 0.37))) and targetHealth > 0.20 and ((not btgcd and (btcd ~=0) and (currenttime - btcd) <= 2) and (not wwgcd and (wwcd ~=0) and currenttime - wwcd <= 9)) then CastSpellByName("Heroic Strike"); end
	if psychoSunderAttack and ((psychoInRaid and (playerRage > (rageGain * 0.35))) or (playerRage > (rageGain * 0.42))) and targetHealth > 0.20 and ((not btgcd and (btcd ~=0) and (currenttime - btcd) <= 5) and (not wwgcd and (wwcd ~=0) and currenttime - wwcd <= 5)) then CastSpellByName("Heroic Strike"); end
	if psychoSunderAttack and ((psychoInRaid and (playerRage > (rageGain * 0.4))) or (playerRage > (rageGain * 0.5))) and targetHealth > 0.20 then CastSpellByName("Heroic Strike"); end
	
	-- Hamstring spam
	local psychoShouldHamstring = Zorlen_PsychoShouldHamstring(targetHealth, targetIsBoss, psychoInRaid);
	if psychoSunderAttack and targetHealth > 0.22 and psychoShouldHamstring and not holdBackGcd and ((psychoInRaid and playerRage > (rageGain * 0.5)) or playerRage > (rageGain * 0.65)) and outsideRotationWindow then CastSpellByName("Hamstring"); end

end

-- btIndex > index of the Bloodthirst spell in your spellbook. Start counting from first page left side first, then right side.
-- wwIndex > index of the Whirlwind spell in your spellbook. Start counting from first page left side first, then right side.
-- rendIndex > index of the Rend spell in your spellbook. Start counting from first page left side first, then right side.
-- bt040 > the amount of rage required to cast Bloodthirst when Whirlwind has a medium cooldown remaining. Number should be between 0 and 1. Advised number: 0.30.
-- bt055 > the amount of rage required to cast Bloodthirst when Whirlwind has a low cooldown remaining. Number should be between 0 and 1. Advised number: 0.45.
-- rageGain > the index to indicate how good your gear is. Based on this index, the Heroic Strike will be cast more aggressively. The lowest possible number is 1. Advised number for good gear: 1.
-- targetBossHealth > the health used to determine if a target is a boss or not. Advised number: 200000.
-- psychoInRaid > this is a global variable used to set the Heroic Strike and Hamstring more aggressively when raid buffed. This variable is enabled/disabled using another macro, as explain above.
-- sunderMobHealth > the minimum absolute health a mob has to have before it will get sundered. Advised number: 20000.
-- sunderMobPercentage > the minimum percentage of health a mob has to have before it will get sundered. Advised number: 0.5.
-- prioCleave > this variable indicates whether or not cleave is prioritized during the execute phase. This is only beneficial with naxx gear. From castigator onwards, it equals in damage. With gressil it is much better. Advised setting: false.
function Zorlen_PsychoMultiTargetAoe(btIndex, wwIndex, rendIndex, bt040, bt055, rageGain, targetBossHealth, psychoInRaid, sunderMobHealth, sunderMobPercentage, prioCleave)	
	-- First set some basic variables we need to know every time this macro triggers
	local atpBase, atpPosBuff, atpNegBuff = UnitAttackPower("player");
	local atpEffective = atpBase + atpPosBuff + atpNegBuff;
	local playerRage = UnitMana("player") / UnitManaMax("player");
	local currenttime = math.floor(GetTime() * 10) / 10;
	local targetHealth = UnitHealth("target") / UnitHealthMax("target");
	
	-- Get the CDs on BT and WW, as well as rend to calculate the GCD
	local btcd = math.floor(GetSpellCooldown(btIndex, BOOKTYPE_SPELL) * 10) / 10;
	local gcd = math.floor(GetSpellCooldown(rendIndex, BOOKTYPE_SPELL) * 10) / 10;
	local wwcd = math.floor(GetSpellCooldown(wwIndex, BOOKTYPE_SPELL) * 10) / 10;
	
	-- Make sure to reset values in case they aren't existing yet
	if (gcd == nil) then gcd = 0; end
	if (btcd == nil) then btcd = 0; end
	if (wwcd == nil) then wwcd = 0; end
	if (psychoSunderAttack == nil) then psychoSunderAttack = false; end
	if (psychoPercent75HealthTime == nil) then psychoPercent75HealthTime = 0; end
	if (psychoPercent50HealthTime == nil) then psychoPercent50HealthTime = 0; end
	if (psychoMobStartingHealth == nil) then psychoMobStartingHealth = 2; end
	if (psychoBsCastTime == nil) then psychoBsCastTime = math.floor(GetTime() * 10) / 10; end
	
	-- Check if BT and WW are the cause of the GCD
	local wwgcd = gcd == wwcd;
	local btgcd = gcd == btcd;
	
	-- Check if a Unit is considered to be a boss
	local targetIsBoss = false;
	if UnitLevel("target") == -1 or UnitHealthMax("target") > targetBossHealth then targetIsBoss = true; end
	
	-- Set the timing for when a mob hits 75 and 50 percent health
	if targetHealth < 0.75 and targetHealth > 0.60 and psychoPercent75HealthTime == 0 then psychoPercent75HealthTime = currenttime; end
	if targetHealth < 0.50 and psychoPercent50HealthTime == 0 then psychoPercent50HealthTime = currenttime; end
	
	-- Calculate a variable to determine if the mob will die too early without us having the possibility to execute
	local holdBackGcd = Zorlen_PsychoHoldBackGcd(currenttime, psychoPercent50HealthTime, psychoPercent75HealthTime);
		
	-- Are we closing in on interfering with the GCD for BT or WW
	local outsideRotationWindow = ((not btgcd and (btcd ~=0) and (currenttime - btcd) <= 4.3) and (not wwgcd and (wwcd ~=0) and currenttime - wwcd <= 8.3));
	
	-- Lets reset some variables, get our new target and attack it if we can
	if (GetUnitName("target") == nil or UnitIsDead("target")) and psychoSunderAttack then psychoMobStartingHealth = 2; psychoPercent75HealthTime = 0; psychoPercent50HealthTime = 0; psychoSunderAttack = false; Zorlen_debug("Sunder set to: " .. tostring(psychoSunderAttack), 1); end
	if (GetUnitName("target") == nil or not Zorlen_TargetIsActiveEnemy()) then zTargetNearestEnemy(); targetHealth = UnitHealth("target") / UnitHealthMax("target"); psychoMobStartingHealth = UnitHealth("target") / UnitHealthMax("target"); end
	if CheckInteractDistance("target", 3) and not isAttackActive() then castAttack() end

	-- If we manually swap targets, we also want the psychoMobStartingHealth to reset
	if not (GetUnitName("target") == nil or UnitIsDead("target")) and (UnitIsUnit("target", "playertarget") == nil) then psychoMobStartingHealth = (UnitHealth("target") / UnitHealthMax("target")); end
	
	-- Calculate a variable to determine if the newly targeted mob will die soon in raid
	local cuttingItClose = Zorlen_PsychoCuttingItClose(targetHealth, targetIsBoss, psychoInRaid, psychoMobStartingHealth);
	
	-- Lets decide if we sunder or not
	if not psychoSunderAttack and UnitHealthMax("target") > sunderMobHealth and playerRage > 0.15 and not isSunderFull("target") and targetHealth > 0.20 then psychoSunderAttack = true; CastSpellByName("Sunder Armor"); elseif not psychoSunderAttack and isSunderFull("target") and targetHealth > 0.20 then psychoSunderAttack = true; elseif not psychoSunderAttack and targetHealth > 0.20 and targetHealth < sunderMobPercentage then psychoSunderAttack = true; elseif not psychoSunderAttack and not (GetUnitName("target") == nil or UnitIsDead("target")) and UnitHealthMax("target") <= sunderMobHealth then psychoSunderAttack = true; end

	-- Stance dance
	--if (Zorlen_isEnemyTargetingYou() and (wwcd ~= 0 and not wwgcd) and playerRage < 0.25) then castBattleStance(); elseif ((wwcd == 0 and wwgcd) and (targetHealth > 0.2)) or not Zorlen_isEnemyTargetingYou() then castBerserkerStance(); end

	-- Lets bloodrage, but only if we're outside some windows or will mess up execute. Same for Battle Shout
	if not isAttackActive() or (not cuttingItClose and not holdBackGcd and targetHealth > 0.30 and outsideRotationWindow and UnitHealth("player") / UnitHealthMax("player") > 0.5 and playerRage < 0.3) then castBloodrage(); end
	if (not isAttackActive() and not isBattleShoutActive()) or (not cuttingItClose and not holdBackGcd and targetHealth > 0.20 and outsideRotationWindow and (not isBattleShoutActive() or ((currenttime - psychoBsCastTime) > 110)) and playerRage > 0.1 and gcd == 0) then psychoBsCastTime = math.floor(GetTime() * 10) / 10; CastSpellByName("Battle Shout"); end

	-- Whirlwind if targetHealth greater than 20% but also if smaller than 20% and you got less than 70 rage
	if isBerserkerStance() and psychoSunderAttack and targetHealth > 0.20 then CastSpellByName("Whirlwind"); end
	if isBerserkerStance() and psychoSunderAttack and targetHealth < 0.20 and (playerRage < 0.7 or prioCleave) then CastSpellByName("Whirlwind"); end
	
	-- Conditions for doing BT and execute
	if targetHealth < 0.20 then
		if playerRage > 0.30
		and atpEffective > 2000
		and btcd == 0 then
			CastSpellByName("Bloodthirst")
		elseif (not prioCleave or targetIsBoss or isBattleStance()) then
			CastSpellByName("Execute")		-- TODO: associate with global execute toggle
			if playerRage > 0.2 then
				CastSpellByName("Cleave")
			else
				CastSpellByName("Heroic Strike")
			end
		end
	end
	if psychoSunderAttack and ((targetHealth > 0.20) or prioCleave) and (wwcd ~= 0 and not wwgcd) and (currenttime - wwcd) < 7 and playerRage > bt040 then CastSpellByName("Bloodthirst"); end
	if psychoSunderAttack and ((targetHealth > 0.20) or prioCleave) and (wwcd ~= 0 and not wwgcd) and (currenttime - wwcd) <= 9.2 and playerRage > bt055 then CastSpellByName("Bloodthirst"); end

	-- Conditions for Cleave
	if psychoSunderAttack and ((targetHealth > 0.20) or prioCleave) and ((prioCleave and psychoInRaid and (playerRage > (rageGain * 0.2))) or (psychoInRaid and (playerRage > (rageGain * 0.35))) or (playerRage > (rageGain * 0.4))) and ((not btgcd and (btcd ~=0) and (currenttime - btcd) <= 2) and (not wwgcd and (wwcd ~=0) and currenttime - wwcd <= 4)) then CastSpellByName("Cleave"); end
	if psychoSunderAttack and ((targetHealth > 0.20) or prioCleave) and ((prioCleave and psychoInRaid and (playerRage > (rageGain * 0.35))) or (psychoInRaid and (playerRage > (rageGain * 0.4))) or (playerRage > (rageGain * 0.45))) and ((not btgcd and (btcd ~=0) and (currenttime - btcd) <= 2) and (not wwgcd and (wwcd ~=0) and currenttime - wwcd <= 9)) then CastSpellByName("Cleave"); end
	if psychoSunderAttack and ((targetHealth > 0.20) or prioCleave) and ((prioCleave and psychoInRaid and (playerRage > (rageGain * 0.35))) or (psychoInRaid and (playerRage > (rageGain * 0.4))) or (playerRage > (rageGain * 0.5))) and ((not btgcd and (btcd ~=0) and (currenttime - btcd) <= 4) and (not wwgcd and (wwcd ~=0) and currenttime - wwcd <= 9)) then CastSpellByName("Cleave"); end
	if psychoSunderAttack and ((targetHealth > 0.20) or prioCleave) and ((prioCleave and psychoInRaid and (playerRage > (rageGain * 0.4))) or (psychoInRaid and (playerRage > (rageGain * 0.43))) or (playerRage > (rageGain * 0.5))) and ((not btgcd and (btcd ~=0) and (currenttime - btcd) <= 5) and (not wwgcd and (wwcd ~=0) and currenttime - wwcd <= 5)) then CastSpellByName("Cleave"); end	
	if psychoSunderAttack and ((targetHealth > 0.20) or prioCleave) and ((prioCleave and psychoInRaid and (playerRage > (rageGain * 0.35))) or (psychoInRaid and (playerRage > (rageGain * 0.4))) or (playerRage > (rageGain * 0.45))) and ((not btgcd and (btcd ~=0) and (currenttime - btcd) <= 3) and (not wwgcd and (wwcd ~=0) and currenttime - wwcd <= 5)) then CastSpellByName("Cleave"); end
	if psychoSunderAttack and ((targetHealth > 0.20) or prioCleave) and ((prioCleave and psychoInRaid and (playerRage > (rageGain * 0.45))) or (psychoInRaid and (playerRage > (rageGain * 0.52))) or (playerRage > (rageGain * 0.6))) then CastSpellByName("Cleave"); end

	-- Hamstring spam	
	local psychoShouldHamstring = Zorlen_PsychoShouldHamstring(targetHealth, targetIsBoss, psychoInRaid);
	if psychoSunderAttack and targetHealth > 0.22 and psychoShouldHamstring and not holdBackGcd and ((psychoInRaid and (playerRage > (rageGain * 0.5))) or (playerRage > (rageGain * 0.65))) and outsideRotationWindow then CastSpellByName("Hamstring"); end

end

-- btIndex > index of the Bloodthirst spell in your spellbook. Start counting from first page left side first, then right side.
-- rendIndex > index of the Rend spell in your spellbook. Start counting from first page left side first, then right side.
-- rageGain > the index to indicate how good your gear is. Based on this index, the Heroic Strike will be cast more aggressively. The lowest possible number is 1. Advised number for good gear: 1.
-- targetBossHealth > the health used to determine if a target is a boss or not. Advised number: 200000.
-- psychoInRaid > this is a global variable used to set the Heroic Strike and Hamstring more aggressively when raid buffed. This variable is enabled/disabled using another macro, as explain above.
-- sunderMobHealth > the minimum absolute health a mob has to have before it will get sundered. Advised number: 20000.
-- sunderMobPercentage > the minimum percentage of health a mob has to have before it will get sundered. Advised number: 0.5.
function Zorlen_PsychoSingleTargetNoAoe(btIndex, rendIndex, rageGain, targetBossHealth, psychoInRaid, sunderMobHealth, sunderMobPercentage)
	-- First set some basic variables we need to know every time this macro triggers
	local atpBase, atpPosBuff, atpNegBuff = UnitAttackPower("player");
	local atpEffective = atpBase + atpPosBuff + atpNegBuff;
	local playerRage = UnitMana("player") / UnitManaMax("player");
	local currenttime = math.floor(GetTime() * 10) / 10;
	local targetHealth = UnitHealth("target") / UnitHealthMax("target");
	
	-- Get the CDs on BT, as well as rend to calculate the GCD
	local btcd = math.floor(GetSpellCooldown(btIndex, BOOKTYPE_SPELL) * 10) / 10;
	local gcd = math.floor(GetSpellCooldown(rendIndex, BOOKTYPE_SPELL) * 10) / 10;
	
	-- Make sure to reset values in case they aren't existing yet
	if (gcd == nil) then gcd = 0; end
	if (btcd == nil) then btcd = 0; end
	if (psychoSunderAttack == nil) then psychoSunderAttack = false; end
	if (psychoPercent75HealthTime == nil) then psychoPercent75HealthTime = 0; end
	if (psychoPercent50HealthTime == nil) then psychoPercent50HealthTime = 0; end
	if (psychoMobStartingHealth == nil) then psychoMobStartingHealth = 2; end
	if (psychoBsCastTime == nil) then psychoBsCastTime = math.floor(GetTime() * 10) / 10; end
	
	-- Check if BT and WW are the cause of the GCD
	local wwgcd = gcd == wwcd;
	local btgcd = gcd == btcd;
	
	-- Check if a Unit is considered to be a boss
	local targetIsBoss = false;
	if UnitLevel("target") == -1 or UnitHealthMax("target") > targetBossHealth then targetIsBoss = true; end	
	
	-- Set the timing for when a mob hits 75 and 50 percent health
	if targetHealth < 0.75 and targetHealth > 0.60 and psychoPercent75HealthTime == 0 then psychoPercent75HealthTime = currenttime; end
	if targetHealth < 0.50 and psychoPercent50HealthTime == 0 then psychoPercent50HealthTime = currenttime; end
	
	-- Calculate a variable to determine if the mob will die too early without us having the possibility to execute
	local holdBackGcd = Zorlen_PsychoHoldBackGcd(currenttime, psychoPercent50HealthTime, psychoPercent75HealthTime);
		
	-- Are we closing in on interfering with the GCD for BT or WW
	local outsideRotationWindow = (not btgcd and (btcd ~=0) and (currenttime - btcd) <= 4.3);
	
	-- Lets reset some variables, get our new target and attack it if we can
	if (GetUnitName("target") == nil or UnitIsDead("target")) and psychoSunderAttack then psychoMobStartingHealth = 2; psychoPercent75HealthTime = 0; psychoPercent50HealthTime = 0; psychoSunderAttack = false; Zorlen_debug("Sunder set to: " .. tostring(psychoSunderAttack), 1); end
	if (GetUnitName("target") == nil or not Zorlen_TargetIsActiveEnemy()) then zTargetNearestEnemy(); targetHealth = UnitHealth("target") / UnitHealthMax("target"); psychoMobStartingHealth = UnitHealth("target") / UnitHealthMax("target"); end
	if CheckInteractDistance("target", 3) and not isAttackActive() then castAttack() end

	-- If we manually swap targets, we also want the psychoMobStartingHealth to reset
	if not (GetUnitName("target") == nil or UnitIsDead("target")) and (UnitIsUnit("target", "playertarget") == nil) then psychoMobStartingHealth = (UnitHealth("target") / UnitHealthMax("target")); end
	
	-- Calculate a variable to determine if the newly targeted mob will die soon in raid
	local cuttingItClose = Zorlen_PsychoCuttingItClose(targetHealth, targetIsBoss, psychoInRaid, psychoMobStartingHealth);
	
	-- Lets decide if we sunder or not
	if not psychoSunderAttack and UnitHealthMax("target") > sunderMobHealth and playerRage > 0.15 and not isSunderFull("target") and targetHealth > 0.20 then psychoSunderAttack = true; CastSpellByName("Sunder Armor"); elseif not psychoSunderAttack and isSunderFull("target") and targetHealth > 0.20 then psychoSunderAttack = true; elseif not psychoSunderAttack and targetHealth > 0.20 and targetHealth < sunderMobPercentage then psychoSunderAttack = true; elseif not psychoSunderAttack and not (GetUnitName("target") == nil or UnitIsDead("target")) and UnitHealthMax("target") <= sunderMobHealth then psychoSunderAttack = true; end

	--if (Zorlen_isEnemyTargetingYou()and playerRage < 0.25) then castBattleStance(); elseif not Zorlen_isEnemyTargetingYou() then castBerserkerStance(); end
	
	-- Lets bloodrage, but only if we're outside some windows or will mess up execute. Same for Battle Shout
	if not isAttackActive() or (not cuttingItClose and not holdBackGcd and targetHealth > 0.30 and outsideRotationWindow and UnitHealth("player") / UnitHealthMax("player") > 0.5 and playerRage < 0.3) then castBloodrage(); end
	if (not isAttackActive() and not isBattleShoutActive()) or (not cuttingItClose and not holdBackGcd and targetHealth > 0.20 and outsideRotationWindow and (not isBattleShoutActive() or ((currenttime - psychoBsCastTime) > 110)) and playerRage > 0.1 and gcd == 0) then psychoBsCastTime = math.floor(GetTime() * 10) / 10; CastSpellByName("Battle Shout"); end

	-- Huge check to decide if we'll execute or bloodthirst based on ATP
	if targetHealth < 0.20 then
		if playerRage > 0.30
		and playerRage < 0.45
		and atpEffective > 2000
		and btcd == 0 then
			CastSpellByName("Bloodthirst")
			CastSpellByName("Heroic Strike")
		else
			CastSpellByName("Execute")		-- TODO: associate with global execute toggle
			CastSpellByName("Heroic Strike")
		end
	elseif playerRage > 0.30
	and psychoSunderAttack then
		CastSpellByName("Bloodthirst")
	end
	
	-- Heroic strike conditions
	if psychoSunderAttack and (playerRage > (rageGain * 0.2)) and targetHealth > 0.20 and ((not btgcd and (btcd ~=0) and (currenttime - btcd) <= 2)) then CastSpellByName("Heroic Strike"); end
	if psychoSunderAttack and (playerRage > (rageGain * 0.3)) and targetHealth > 0.20 and ((not btgcd and (btcd ~=0) and (currenttime - btcd) <= 4)) then CastSpellByName("Heroic Strike"); end
	if psychoSunderAttack and (playerRage > (rageGain * 0.35)) and targetHealth > 0.20 and ((not btgcd and (btcd ~=0) and (currenttime - btcd) <= 5)) then CastSpellByName("Heroic Strike"); end
	if psychoSunderAttack and (playerRage > (rageGain * 0.4)) and targetHealth > 0.20 then CastSpellByName("Heroic Strike"); end

	-- Hamstring spam	
	local psychoShouldHamstring = Zorlen_PsychoShouldHamstring(targetHealth, targetIsBoss, psychoInRaid);
	if psychoSunderAttack and targetHealth > 0.22 and psychoShouldHamstring and not holdBackGcd and (playerRage > (rageGain * 0.45)) and outsideRotationWindow then CastSpellByName("Hamstring"); end

end

function Zorlen_PsychoHoldBackGcd(currenttime, psychoPercent50HealthTime, psychoPercent75HealthTime)
	local holdBackGcd = false;	
	local percentageDiffTime = psychoPercent50HealthTime - psychoPercent75HealthTime;
	
	if percentageDiffTime < 1.2 and percentageDiffTime > 0 and psychoInRaid then holdBackGcd = true; end
	
	return holdBackGcd;
end

function Zorlen_PsychoCuttingItClose(targetHealth, targetIsBoss, psychoInRaid, psychoMobStartingHealth)
	local cuttingItClose = false;
	
	if tostring(targetHealth) == '-1.#IND' then return cuttingItClose; end

	if UnitHealthMax("target") > 200000 and targetHealth < 0.23 then cuttingItClose = true; end
	if UnitHealthMax("target") > 100000 and UnitHealthMax("target") < 200000 and targetHealth < 0.26 then cuttingItClose = true; end
	if UnitHealthMax("target") > 50000 and UnitHealthMax("target") < 100000 and targetHealth < 0.30 then cuttingItClose = true; end
	if UnitHealthMax("target") > 35000 and UnitHealthMax("target") < 50000 and targetHealth < 0.33 then cuttingItClose = true; end
	if UnitHealthMax("target") > 20000 and UnitHealthMax("target") < 35000 and targetHealth < 0.35 then cuttingItClose = true; end
	if UnitHealthMax("target") > 10000 and UnitHealthMax("target") < 20000 and targetHealth < 0.40 then cuttingItClose = true; end
	if UnitHealthMax("target") < 10000 then cuttingItClose = true; end
	
	return cuttingItClose;
end

function Zorlen_PsychoShouldHamstring(targetHealth, targetIsBoss, psychoInRaid)
	local psychoShouldHamstring = false;
	
	if targetIsBoss then return true; end
	if ((not psychoInRaid) or (psychoInRaid == nil)) then return false; end
	
	if UnitHealthMax("target") > 200000 and targetHealth > 0.30 then psychoShouldHamstring = true; end
	if UnitHealthMax("target") > 100000 and UnitHealthMax("target") < 200000 and targetHealth > 0.35 then psychoShouldHamstring = true; end
	if UnitHealthMax("target") > 50000 and UnitHealthMax("target") < 100000 and targetHealth > 0.40 then psychoShouldHamstring = true; end
	
	return psychoShouldHamstring;
end

function Zorlen_PsychoShouldWhirlwind(targetHealth, targetIsBoss, psychoInRaid)
	local psychoShouldWhirlwind = false;
	
	if ((not psychoInRaid) or (psychoInRaid == nil)) then return true; end
	
	if targetIsBoss then psychoShouldWhirlwind = true; end
	if UnitHealthMax("target") > 200000 and targetHealth > 0.23 then psychoShouldWhirlwind = true; end
	if UnitHealthMax("target") > 100000 and UnitHealthMax("target") < 200000 and targetHealth > 0.25 then psychoShouldWhirlwind = true; end
	if UnitHealthMax("target") > 50000 and UnitHealthMax("target") < 100000 and targetHealth > 0.27 then psychoShouldWhirlwind = true; end
	if UnitHealthMax("target") > 35000 and UnitHealthMax("target") < 50000 and targetHealth > 0.30 then psychoShouldWhirlwind = true; end
	if UnitHealthMax("target") > 20000 and UnitHealthMax("target") < 35000 and targetHealth > 0.32 then psychoShouldWhirlwind = true; end
	if UnitHealthMax("target") > 10000 and UnitHealthMax("target") < 20000 and targetHealth > 0.35 then psychoShouldWhirlwind = true; end
	if UnitHealthMax("target") < 10000 and targetHealth > 0.40 then psychoShouldWhirlwind = true; end
	
	return psychoShouldWhirlwind;
end