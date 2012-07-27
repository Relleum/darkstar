---------------------------------------------
--  Ill Wind
--  Description: Deals Wind damage to enemies within an area of effect. Additional effect: Dispel
--  Type: Magical
--  Utsusemi/Blink absorb: Wipes Shadows
--  Range: Unknown radial
--  Notes: Only used by Puks in Mamook, Besieged, and the following Notorious Monsters: Vulpangue, Nis Puk, Nguruvilu, Seps , Phantom Puk and Waugyl. Dispels one effect.
---------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------
function OnMobWeaponSkill(target, mob, skill)
	
    target:dispelStatusEffect();
	
    dmgmod = 1;
    accmod = 1;
    info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*3,accmod,dmgmod,TP_NO_EFFECT);
    dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_WIND,MOBPARAM_WIPE_SHADOWS);
    target:delHP(dmg);
	
	printf("[TP MOVE] Zone: %u Monster: %u Mob lvl: %u TP: %u TP Move: %u Damage: %u on Player: %u Level: %u HP: %u",mob:getZone(),mob:getID(),mob:getMainLvl(),skill:getTP(),skill:getID(),dmg,target:getID(),target:getMainLvl(),target:getMaxHP()); 
	
    return dmg;
	
end;