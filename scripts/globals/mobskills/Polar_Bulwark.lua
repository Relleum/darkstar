---------------------------------------------
--  Polar Bulwark
--
--  Description: Grants a Magic Shield effect for a time.
--  Type: Enhancing
--  
--  Range: Self
---------------------------------------------
require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------
function OnMobSkillCheck(target,mob,skill)
   if (mob:AnimationSub() == 0) then
      return 0;
   else
      return 1;
   end
end;

function OnMobWeaponSkill(target, mob, skill)

   -- addEx to pervent dispel
   mob:addStatusEffectEx(EFFECT_MAGIC_SHIELD,0,1,0,45)
   skill:setMsg(MSG_BUFF)
   return EFFECT_MAGIC_SHIELD;

end;
