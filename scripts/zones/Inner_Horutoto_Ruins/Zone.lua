-----------------------------------	
--	
-- Zone: Inner_Horutoto_Ruins (192)	
--	
-----------------------------------	
package.loaded["scripts/zones/Inner_Horutoto_Ruins/TextIDs"] = nil;
-----------------------------------
	
require("scripts/globals/settings");	
require("scripts/zones/Inner_Horutoto_Ruins/TextIDs");	

-----------------------------------	
-- onInitialize	
-----------------------------------	

function onInitialize(zone)	
	zone:registerRegion(1, -261, -1, -31, -257, 1, -27); -- Red
	zone:registerRegion(2, -265, -1, -26, -261, 1, -22); -- White	
	zone:registerRegion(3, -258, -1, -26, -254, 1, -22); -- Black
	zone:registerRegion(4, -261, -3, 182, -257, -1, 186); -- Teleport at H-6
end;		

-----------------------------------		
-- onZoneIn		
-----------------------------------		

function onZoneIn(player,prevZone)		
	local cs = -1;	
	if((player:getXPos() == 0) and (player:getYPos() == 0) and (player:getZPos() == 0)) then	
		player:setPos(-259.996,6.399,242.859,67);
	end	
	return cs;	
end;		

-----------------------------------			
-- onRegionEnter			
-----------------------------------			

function onRegionEnter(player,region)			
	
	local red   = GetNPCByID(17563859);		
	local white = GetNPCByID(red+1);		
	local black = GetNPCByID(red+2);		
	
	switch (region:GetRegionID()): caseof		
	{		
		[1] = function (x)  -- Red Circle		
			if(player:getMainJob() == 5 and region:AddCount(1) == 1) then		
				red:setAnimation(8);
				if(white:getAnimation() == 8 and black:getAnimation() == 8) then	
					GetNPCByID(red+3):openDoor(30);
					GetNPCByID(red+4):openDoor(30);
				end	
			end		
		end,		
		[2] = function (x)  -- White Circle		
			if(player:getMainJob() == 3 and region:AddCount(1) == 1) then		
				white:setAnimation(8);	
				if(red:getAnimation() == 8 and black:getAnimation() == 8) then	
					GetNPCByID(red+3):openDoor(30);
					GetNPCByID(red+4):openDoor(30);
				end	
			end		
		end,		
		[3] = function (x)  -- Black Circle		
			if(player:getMainJob() == 4 and region:AddCount(1) == 1) then		
				black:setAnimation(8);	
				if(red:getAnimation() == 8 and white:getAnimation() == 8) then	
					GetNPCByID(red+3):openDoor(30);
					GetNPCByID(red+4):openDoor(30);
				end	
			end
		end,
		[4] = function (x)  -- Teleport at H-6
			player:setPos(-260,0,-21,65);
		end,		
	}
	
end;			

-----------------------------------			
-- onRegionLeave			
-----------------------------------			

function onRegionLeave(player,region)			
	
	local red   = GetNPCByID(17563859);		
	local white = GetNPCByID(red+1);		
	local black = GetNPCByID(red+2);
	
	switch (region:GetRegionID()): caseof		
	{		
		[1] = function (x)  -- Red Circle		
			if(player:getMainJob() == 5 and region:DelCount(1) == 0) then		
				red:setAnimation(9);	
			end		
		end,		
		[2] = function (x)  -- White Circle		
			if(player:getMainJob() == 3 and region:DelCount(1) == 0) then		
				white:setAnimation(9);	
			end		
		end,		
		[3] = function (x)  -- Black Circle		
			if(player:getMainJob() == 4 and region:DelCount(1) == 0) then		
				black:setAnimation(9);
			end		
		end,		
	}
	
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
end;
