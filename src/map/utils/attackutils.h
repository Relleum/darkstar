/*
===========================================================================

  Copyright (c) 2010-2014 Darkstar Dev Teams

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see http://www.gnu.org/licenses/

  This file is part of DarkStar-server source code.

===========================================================================
*/

#ifndef _ATTACKUTILS_H
#define _ATTACKUTILS_H

#include "../../common/cbasetypes.h"
#include "../../common/mmo.h"

#include "../entities/charentity.h"
#include "../entities/mobentity.h"
#include "../attack.h"

namespace attackutils
{
	uint8				getHitCount(uint8 hits);		// The multihit calculator.
	uint32				CheckForDamageMultiplier(CCharEntity* PChar, CItemWeapon* PWeapon, uint32 damage, PHYSICAL_ATTACK_TYPE attackType);
	
	bool				IsParried(CBattleEntity*, CBattleEntity*);		// Is the attack parried.
	bool				IsGuarded(CBattleEntity*, CBattleEntity*);		// Is the attack guarded.
	bool				IsBlocked(CBattleEntity*, CBattleEntity*);		// Is the attack blocked.
	void				TryAbsorbMPfromPhysicalAttack(CBattleEntity* battleEntity, uint32 damage);
	bool				TryAbsorbHPfromPhysicalAttack(CBattleEntity* battleEntity, uint32 damage);
};

#endif