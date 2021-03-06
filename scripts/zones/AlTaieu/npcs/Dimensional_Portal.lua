-----------------------------------
-- Area: AlTaieu
-- NPC:  Dimensional_Portal
-----------------------------------
package.loaded["scripts/zones/AlTaieu/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/AlTaieu/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)

end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

	local Dimensional_Offset = 16912908;
	local npcID = npc:getID();
	
	if(npcID == Dimensional_Offset)then  -- => La Theine Plateau
       player:startEvent(0x0097);	
	elseif(npcID == Dimensional_Offset+1)then  -- => Konschtat Highlands
	   player:startEvent(0x0098);
	elseif(npcID == Dimensional_Offset+2)then  -- => Tahrongi Canyon
	   player:startEvent(0x0099); 
	end
	
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
    if( csid == 0x0097 and option == 1)then 
		player:setPos(419,19,-141,64,0x66);    -- => La Theine Plateau
	elseif( csid == 0x0098 and option == 1)then
		player:setPos(219,19,138,71,0x6C); -- => Konschtat Highlands
    elseif( csid == 0x0099 and option == 1)then 
		player:setPos(261,35,339,253,0x75);   -- => Tahrongi Canyon
	end
end;