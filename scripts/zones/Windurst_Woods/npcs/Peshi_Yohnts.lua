-----------------------------------
-- Area: Windurst Woods
-- NPC:  Peshi Yohnts
-- Type: Bonecraft Guild Master
-- @pos -6.175 -6.249 -144.667 241
-----------------------------------
package.loaded["scripts/zones/Windurst_Woods/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/crafting");
require("scripts/zones/Windurst_Woods/TextIDs");

local SKILLID = 54; -- Bonecraft

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	
	local newRank = tradeTestItem(player,npc,trade,SKILLID);
	
	if(newRank ~= 0) then
		player:setSkillRank(SKILLID,newRank);
		player:startEvent(0x2721,0,0,0,0,newRank);
	end
	
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	
	local getNewRank = 0;
	local craftSkill = player:getSkillLevel(SKILLID);
	local testItem = getTestItem(player,npc,SKILLID);
	local guildMember = isGuildMember(player,2);
	if(guildMember == 1) then guildMember = 64; end
	if(canGetNewRank(player,craftSkill,SKILLID) == 1) then getNewRank = 100; end
	
	player:startEvent(0x2720,testItem,getNewRank,30,guildMember,44,0,0,0);
	
end;

-- 0x2720  0x2721  0x02c6  0x02c7  0x02c8  0x02c9  0x02ca  0x02cb  0x02fc

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
-- printf("CSID: %u",csid);
-- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
-- printf("CSID: %u",csid);
-- printf("RESULT: %u",option);
	
	if(csid == 0x2720 and option == 1) then
		signupGuild(player,4);
		
		local crystal = math.random(4096,4101);
		
		if(player:getFreeSlotsCount() == 0) then 
			player:messageSpecial(ITEM_CANNOT_BE_OBTAINED,crystal);
		else
			player:addItem(crystal);
			player:messageSpecial(ITEM_OBTAINED,crystal);
		end
	end
	
end;