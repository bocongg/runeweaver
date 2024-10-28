function weaveRunes(){
	
	var runeID = item.firerune1
	
	if ((global.weave_slot[# 0, 0] == runeID) && (global.weave_slot[# 1, 0] == runeID) && (global.weave_slot[# 2, 0] == runeID))
	{
		global.weave_slot[# 3, 0] = item.firerune2;
		global.weave_slot[# 3, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}
	
	var runeID = item.firerune2
	
	if ((global.weave_slot[# 0, 0] == runeID) && (global.weave_slot[# 1, 0] == runeID) && (global.weave_slot[# 2, 0] == runeID))
	{
		global.weave_slot[# 3, 0] = item.firerune3;
		global.weave_slot[# 3, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}
	
	var runeID = item.icerune1
	
	if (global.weave_slot[# 0, 0] == runeID && global.weave_slot[# 1, 0] == runeID && global.weave_slot[# 2, 0] == runeID)
	{
		global.weave_slot[# 3, 0] = item.icerune2;
		global.weave_slot[# 3, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}
	
	var runeID = item.icerune2
	
	if (global.weave_slot[# 0, 0] == runeID && global.weave_slot[# 1, 0] == runeID && global.weave_slot[# 2, 0] == runeID)
	{
		global.weave_slot[# 3, 0] = item.icerune3;
		global.weave_slot[# 3, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}
	
	var runeID = item.windrune1
	
	if (global.weave_slot[# 0, 0] == runeID && global.weave_slot[# 1, 0] == runeID && global.weave_slot[# 2, 0] == runeID)
	{
		global.weave_slot[# 3, 0] = item.windrune2;
		global.weave_slot[# 3, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}
	
	var runeID = item.windrune2
	
	if (global.weave_slot[# 0, 0] == runeID && global.weave_slot[# 1, 0] == runeID && global.weave_slot[# 2, 0] == runeID)
	{
		global.weave_slot[# 3, 0] = item.windrune3;
		global.weave_slot[# 3, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}
	
	// Frostfire 2 recipe
	var canWeaveFrostfire2 = false;
	
	// Check if runes to weave are the same. If same, cannot weave Frostfire.
	if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
	{
		canWeaveFrostfire2 = false;	
	} 
	
	if ( (global.weave_slot[# 0, 0] == item.firerune1) && (global.weave_slot[# 1, 0] == item.firerune1) && (global.weave_slot[# 2, 0] == item.icerune1) ||
		 (global.weave_slot[# 0, 0] == item.firerune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.firerune1) ||
		 (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.firerune1) && (global.weave_slot[# 2, 0] == item.firerune1) ||
		 (global.weave_slot[# 0, 0] == item.firerune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.icerune1) ||
		 (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.firerune1) && (global.weave_slot[# 2, 0] == item.icerune1) ||
		 (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.firerune1)
	)
	{
		canWeaveFrostfire2 = true;
	}
	
	
	if (canWeaveFrostfire2)
	{
		global.weave_slot[# 3, 0] = item.frostfirerune2;
		global.weave_slot[# 3, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}
	
	// Frostfire 3 recipe
	var canWeaveFrostfire3 = false;
	
	// Check if runes to weave are the same. If same, cannot weave Frostfire.
	if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
	{
		canWeaveFrostfire3 = false;	
	} 
	
	if ( (global.weave_slot[# 0, 0] == item.firerune2) && (global.weave_slot[# 1, 0] == item.firerune2) && (global.weave_slot[# 2, 0] == item.icerune2) ||
		 (global.weave_slot[# 0, 0] == item.firerune2) && (global.weave_slot[# 1, 0] == item.icerune2) && (global.weave_slot[# 2, 0] == item.firerune2) ||
		 (global.weave_slot[# 0, 0] == item.icerune2) && (global.weave_slot[# 1, 0] == item.firerune2) && (global.weave_slot[# 2, 0] == item.firerune2) ||
		 (global.weave_slot[# 0, 0] == item.firerune2) && (global.weave_slot[# 1, 0] == item.icerune2) && (global.weave_slot[# 2, 0] == item.icerune2) ||
		 (global.weave_slot[# 0, 0] == item.icerune2) && (global.weave_slot[# 1, 0] == item.firerune2) && (global.weave_slot[# 2, 0] == item.icerune2) ||
		 (global.weave_slot[# 0, 0] == item.icerune2) && (global.weave_slot[# 1, 0] == item.icerune2) && (global.weave_slot[# 2, 0] == item.firerune2) 
	)
	{
		canWeaveFrostfire3 = true;
	}
	
	
	if (canWeaveFrostfire3)
	{
		global.weave_slot[# 3, 0] = item.frostfirerune3;
		global.weave_slot[# 3, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}
	
	// Blizzard 2 recipe
	var canWeaveBlizzard2 = false;
	
	// Check if runes to weave are the same. If same, cannot weave Blizzard.
	if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
	{
		canWeaveBlizzard2 = false;	
	}
	
	if ( (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.windrune1) ||
		 (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.windrune1) && (global.weave_slot[# 2, 0] == item.icerune1) ||
		 (global.weave_slot[# 0, 0] == item.windrune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.icerune1) ||
		 (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.windrune1) && (global.weave_slot[# 2, 0] == item.windrune1) ||
		 (global.weave_slot[# 0, 0] == item.windrune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.windrune1) ||
		 (global.weave_slot[# 0, 0] == item.windrune1) && (global.weave_slot[# 1, 0] == item.windrune1) && (global.weave_slot[# 2, 0] == item.icerune1)
	)
	{
		canWeaveBlizzard2 = true;
	}
	
	if (canWeaveBlizzard2)
	{
		global.weave_slot[# 3, 0] = item.blizzardrune2;
		global.weave_slot[# 3, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}
	
	// Blizzard 3 recipe
	var canWeaveBlizzard3 = false;
	
	// Check if runes to weave are the same. If same, cannot weave Blizzard.
	if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
	{
		canWeaveBlizzard3 = false;	
	}
	
	if ( (global.weave_slot[# 0, 0] == item.icerune2) && (global.weave_slot[# 1, 0] == item.icerune2) && (global.weave_slot[# 2, 0] == item.windrune2) ||
		 (global.weave_slot[# 0, 0] == item.icerune2) && (global.weave_slot[# 1, 0] == item.windrune2) && (global.weave_slot[# 2, 0] == item.icerune2) ||
		 (global.weave_slot[# 0, 0] == item.windrune2) && (global.weave_slot[# 1, 0] == item.icerune2) && (global.weave_slot[# 2, 0] == item.icerune2) ||
		 (global.weave_slot[# 0, 0] == item.icerune2) && (global.weave_slot[# 1, 0] == item.windrune2) && (global.weave_slot[# 2, 0] == item.windrune2) ||
		 (global.weave_slot[# 0, 0] == item.windrune2) && (global.weave_slot[# 1, 0] == item.icerune2) && (global.weave_slot[# 2, 0] == item.windrune2) ||
		 (global.weave_slot[# 0, 0] == item.windrune2) && (global.weave_slot[# 1, 0] == item.windrune2) && (global.weave_slot[# 2, 0] == item.icerune2)
	)
	{
		canWeaveBlizzard3 = true;
	}
	
	if (canWeaveBlizzard3)
	{
		global.weave_slot[# 3, 0] = item.blizzardrune3;
		global.weave_slot[# 3, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}

	// Inferno 2 recipe
	var canWeaveInferno2 = false;
	
	// Check if runes to weave are the same. If same, cannot weave Inferno.
	if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
	{
		canWeaveInferno2 = false;	
	}
	
	if ( (global.weave_slot[# 0, 0] == item.windrune1) && (global.weave_slot[# 1, 0] == item.windrune1) && (global.weave_slot[# 2, 0] == item.firerune1) ||
		 (global.weave_slot[# 0, 0] == item.windrune1) && (global.weave_slot[# 1, 0] == item.firerune1) && (global.weave_slot[# 2, 0] == item.windrune1) ||
		 (global.weave_slot[# 0, 0] == item.firerune1) && (global.weave_slot[# 1, 0] == item.windrune1) && (global.weave_slot[# 2, 0] == item.windrune1) ||
		 (global.weave_slot[# 0, 0] == item.windrune1) && (global.weave_slot[# 1, 0] == item.firerune1) && (global.weave_slot[# 2, 0] == item.firerune1) ||
		 (global.weave_slot[# 0, 0] == item.firerune1) && (global.weave_slot[# 1, 0] == item.windrune1) && (global.weave_slot[# 2, 0] == item.firerune1) ||
		 (global.weave_slot[# 0, 0] == item.firerune1) && (global.weave_slot[# 1, 0] == item.firerune1) && (global.weave_slot[# 2, 0] == item.windrune1)
	)
	{
		canWeaveInferno2 = true;
	}
	
	if (canWeaveInferno2)
	{
		global.weave_slot[# 3, 0] = item.infernorune2;
		global.weave_slot[# 3, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}
	
	// Inferno 3 recipe
	var canWeaveInferno3 = false;
	
	// Check if runes to weave are the same. If same, cannot weave Inferno.
	if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
	{
		canWeaveInferno3 = false;	
	}
	
	if ( (global.weave_slot[# 0, 0] == item.windrune2) && (global.weave_slot[# 1, 0] == item.windrune2) && (global.weave_slot[# 2, 0] == item.firerune2) ||
		 (global.weave_slot[# 0, 0] == item.windrune2) && (global.weave_slot[# 1, 0] == item.firerune2) && (global.weave_slot[# 2, 0] == item.windrune2) ||
		 (global.weave_slot[# 0, 0] == item.firerune2) && (global.weave_slot[# 1, 0] == item.windrune2) && (global.weave_slot[# 2, 0] == item.windrune2) ||
		 (global.weave_slot[# 0, 0] == item.windrune2) && (global.weave_slot[# 1, 0] == item.firerune2) && (global.weave_slot[# 2, 0] == item.firerune2) ||
		 (global.weave_slot[# 0, 0] == item.firerune2) && (global.weave_slot[# 1, 0] == item.windrune2) && (global.weave_slot[# 2, 0] == item.firerune2) ||
		 (global.weave_slot[# 0, 0] == item.firerune2) && (global.weave_slot[# 1, 0] == item.firerune2) && (global.weave_slot[# 2, 0] == item.windrune2)
	)
	{
		canWeaveInferno3 = true;
	}
	
	if (canWeaveInferno3)
	{
		global.weave_slot[# 3, 0] = item.infernorune3;
		global.weave_slot[# 3, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}
	
	// Prism recipe
	var canWeavePrism = false;
	
	// Check if runes to weave are the same. If same, cannot weave Prism.
	if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
	{
		canWeavePrism = false;	
	}
	
	if ( (global.weave_slot[# 0, 0] == item.firerune2) && (global.weave_slot[# 1, 0] == item.icerune2) && (global.weave_slot[# 2, 0] == item.windrune2) ||
		 (global.weave_slot[# 0, 0] == item.firerune2) && (global.weave_slot[# 1, 0] == item.windrune2) && (global.weave_slot[# 2, 0] == item.icerune2) ||
		 (global.weave_slot[# 0, 0] == item.icerune2) && (global.weave_slot[# 1, 0] == item.firerune2) && (global.weave_slot[# 2, 0] == item.windrune2) ||
		 (global.weave_slot[# 0, 0] == item.icerune2) && (global.weave_slot[# 1, 0] == item.windrune2) && (global.weave_slot[# 2, 0] == item.firerune2) ||
		 (global.weave_slot[# 0, 0] == item.windrune2) && (global.weave_slot[# 1, 0] == item.firerune2) && (global.weave_slot[# 2, 0] == item.icerune2) ||
		 (global.weave_slot[# 0, 0] == item.windrune2) && (global.weave_slot[# 1, 0] == item.icerune2) && (global.weave_slot[# 2, 0] == item.firerune2) ||
		 
		 (global.weave_slot[# 0, 0] == item.frostfirerune2) && (global.weave_slot[# 1, 0] == item.blizzardrune2) && (global.weave_slot[# 2, 0] == item.infernorune2) ||
		 (global.weave_slot[# 0, 0] == item.frostfirerune2) && (global.weave_slot[# 1, 0] == item.infernorune2) && (global.weave_slot[# 2, 0] == item.blizzardrune2) ||
		 (global.weave_slot[# 0, 0] == item.blizzardrune2) && (global.weave_slot[# 1, 0] == item.frostfirerune2) && (global.weave_slot[# 2, 0] == item.infernorune2) ||
		 (global.weave_slot[# 0, 0] == item.blizzardrune2) && (global.weave_slot[# 1, 0] == item.infernorune2) && (global.weave_slot[# 2, 0] == item.frostfirerune2) ||
		 (global.weave_slot[# 0, 0] == item.infernorune2) && (global.weave_slot[# 1, 0] == item.frostfirerune2) && (global.weave_slot[# 2, 0] == item.blizzardrune2) ||
		 (global.weave_slot[# 0, 0] == item.infernorune2) && (global.weave_slot[# 1, 0] == item.blizzardrune2) && (global.weave_slot[# 2, 0] == item.frostfirerune2)
	)
	{
		canWeavePrism = true;
	}
	
	if (canWeavePrism)
	{
		global.weave_slot[# 3, 0] = item.prismrune3;
		global.weave_slot[# 3, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}

}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function weaveRunesCheck(){
	// Weave fire rune level 2
	var runeID = item.firerune1
	
	if ((global.weave_slot[# 0, 0] == runeID) && (global.weave_slot[# 1, 0] == runeID) && (global.weave_slot[# 2, 0] == runeID))
	{
		if ((global.weave_slot[# 3, 0] == item.none) && (global.weave_slot[# 3, 0] != item.mysteryrune))
		{
			global.weave_slot[# 3, 0] = item.mysteryrune;
		} else if ((global.weave_slot[# 3, 0] != item.none) && (global.weave_slot[# 3, 0] != item.mysteryrune))
		{
			exit;
		}
	}
	
	// Weave fire rune level 3
	var runeID = item.firerune2
	
	if ((global.weave_slot[# 0, 0] == runeID) && (global.weave_slot[# 1, 0] == runeID) && (global.weave_slot[# 2, 0] == runeID))
	{
		if ((global.weave_slot[# 3, 0] == item.none) && (global.weave_slot[# 3, 0] != item.mysteryrune))
		{
			global.weave_slot[# 3, 0] = item.mysteryrune;
		} else if ((global.weave_slot[# 3, 0] != item.none) && (global.weave_slot[# 3, 0] != item.mysteryrune))
		{
			exit;
		}
	}


	// Weave ice rune level 2
	var runeID = item.icerune1
	
	if ((global.weave_slot[# 0, 0] == runeID) && (global.weave_slot[# 1, 0] == runeID) && (global.weave_slot[# 2, 0] == runeID))
	{
		if ((global.weave_slot[# 3, 0] == item.none) && (global.weave_slot[# 3, 0] != item.mysteryrune))
		{
			global.weave_slot[# 3, 0] = item.mysteryrune;
		} else if ((global.weave_slot[# 3, 0] != item.none) && (global.weave_slot[# 3, 0] != item.mysteryrune))
		{
			exit;
		}
	}
	
	// Weave ice rune level 3
	var runeID = item.icerune2
	
	if ((global.weave_slot[# 0, 0] == runeID) && (global.weave_slot[# 1, 0] == runeID) && (global.weave_slot[# 2, 0] == runeID))
	{
		if ((global.weave_slot[# 3, 0] == item.none) && (global.weave_slot[# 3, 0] != item.mysteryrune))
		{
			global.weave_slot[# 3, 0] = item.mysteryrune;
		} else if ((global.weave_slot[# 3, 0] != item.none) && (global.weave_slot[# 3, 0] != item.mysteryrune))
		{
			exit;
		}
	}


	// Weave wind rune level 2
	var runeID = item.windrune1
	
	if ((global.weave_slot[# 0, 0] == runeID) && (global.weave_slot[# 1, 0] == runeID) && (global.weave_slot[# 2, 0] == runeID))
	{
		if ((global.weave_slot[# 3, 0] == item.none) && (global.weave_slot[# 3, 0] != item.mysteryrune))
		{
			global.weave_slot[# 3, 0] = item.mysteryrune;
		} else if ((global.weave_slot[# 3, 0] != item.none) && (global.weave_slot[# 3, 0] != item.mysteryrune))
		{
			exit;
		}
	}
	
	// Weave wind rune level 3
	var runeID = item.windrune2
	
	if ((global.weave_slot[# 0, 0] == runeID) && (global.weave_slot[# 1, 0] == runeID) && (global.weave_slot[# 2, 0] == runeID))
	{
		if ((global.weave_slot[# 3, 0] == item.none) && (global.weave_slot[# 3, 0] != item.mysteryrune))
		{
			global.weave_slot[# 3, 0] = item.mysteryrune;
		} else if ((global.weave_slot[# 3, 0] != item.none) && (global.weave_slot[# 3, 0] != item.mysteryrune))
		{
			exit;
		}
	}



	// Weave frostfire rune
	var canWeaveFrostfire = false;
	
	// Check if runes to weave are the same. If same, cannot weave Frostfire.
	if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
	{
		canWeaveFrostfire = false;	
	} 
	
	if ( (global.weave_slot[# 0, 0] == item.firerune1) && (global.weave_slot[# 1, 0] == item.firerune1) && (global.weave_slot[# 2, 0] == item.icerune1) ||
		 (global.weave_slot[# 0, 0] == item.firerune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.firerune1) ||
		 (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.firerune1) && (global.weave_slot[# 2, 0] == item.firerune1) ||
		 (global.weave_slot[# 0, 0] == item.firerune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.icerune1) ||
		 (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.firerune1) && (global.weave_slot[# 2, 0] == item.icerune1) ||
		 (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.firerune1) ||
		 
		 (global.weave_slot[# 0, 0] == item.firerune2) && (global.weave_slot[# 1, 0] == item.firerune2) && (global.weave_slot[# 2, 0] == item.icerune2) ||
		 (global.weave_slot[# 0, 0] == item.firerune2) && (global.weave_slot[# 1, 0] == item.icerune2) && (global.weave_slot[# 2, 0] == item.firerune2) ||
		 (global.weave_slot[# 0, 0] == item.icerune2) && (global.weave_slot[# 1, 0] == item.firerune2) && (global.weave_slot[# 2, 0] == item.firerune2) ||
		 (global.weave_slot[# 0, 0] == item.firerune2) && (global.weave_slot[# 1, 0] == item.icerune2) && (global.weave_slot[# 2, 0] == item.icerune2) ||
		 (global.weave_slot[# 0, 0] == item.icerune2) && (global.weave_slot[# 1, 0] == item.firerune2) && (global.weave_slot[# 2, 0] == item.icerune2) ||
		 (global.weave_slot[# 0, 0] == item.icerune2) && (global.weave_slot[# 1, 0] == item.icerune2) && (global.weave_slot[# 2, 0] == item.firerune2) 
	)
	{
		canWeaveFrostfire = true;
	}
	
	
	if ((canWeaveFrostfire) && (global.weave_slot[# 3, 0] == item.none) && (global.weave_slot[# 3, 0] != item.mysteryrune))
	{
		global.weave_slot[# 3, 0] = item.mysteryrune;
	}
	//else if (global.weave_slot[# 3, 0] != item.none && global.weave_slot[# 3, 0] != item.mysteryrune)
	//{
	//	exit;
	//}


	// Weave Blizzard rune
	var canWeaveBlizzard = false;
	
	// Check if runes to weave are the same. If same, cannot weave Blizzard.
	if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
	{
		canWeaveBlizzard = false;	
	}
	
	if ( (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.windrune1) ||
		 (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.windrune1) && (global.weave_slot[# 2, 0] == item.icerune1) ||
		 (global.weave_slot[# 0, 0] == item.windrune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.icerune1) ||
		 (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.windrune1) && (global.weave_slot[# 2, 0] == item.windrune1) ||
		 (global.weave_slot[# 0, 0] == item.windrune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.windrune1) ||
		 (global.weave_slot[# 0, 0] == item.windrune1) && (global.weave_slot[# 1, 0] == item.windrune1) && (global.weave_slot[# 2, 0] == item.icerune1) ||
		 
		 (global.weave_slot[# 0, 0] == item.icerune2) && (global.weave_slot[# 1, 0] == item.icerune2) && (global.weave_slot[# 2, 0] == item.windrune2) ||
		 (global.weave_slot[# 0, 0] == item.icerune2) && (global.weave_slot[# 1, 0] == item.windrune2) && (global.weave_slot[# 2, 0] == item.icerune2) ||
		 (global.weave_slot[# 0, 0] == item.windrune2) && (global.weave_slot[# 1, 0] == item.icerune2) && (global.weave_slot[# 2, 0] == item.icerune2) ||
		 (global.weave_slot[# 0, 0] == item.icerune2) && (global.weave_slot[# 1, 0] == item.windrune2) && (global.weave_slot[# 2, 0] == item.windrune2) ||
		 (global.weave_slot[# 0, 0] == item.windrune2) && (global.weave_slot[# 1, 0] == item.icerune2) && (global.weave_slot[# 2, 0] == item.windrune2) ||
		 (global.weave_slot[# 0, 0] == item.windrune2) && (global.weave_slot[# 1, 0] == item.windrune2) && (global.weave_slot[# 2, 0] == item.icerune2)
	)
	{
		canWeaveBlizzard = true;
	}
	
	if ((canWeaveBlizzard) && (global.weave_slot[# 3, 0] == item.none) && (global.weave_slot[# 3, 0] != item.mysteryrune))
	{
		global.weave_slot[# 3, 0] = item.mysteryrune;
	}


	// Weave inferno rune
	var canWeaveInferno = false;
	
	// Check if runes to weave are the same. If same, cannot weave Inferno.
	if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
	{
		canWeaveInferno = false;	
	}
	
	if ( (global.weave_slot[# 0, 0] == item.windrune1) && (global.weave_slot[# 1, 0] == item.windrune1) && (global.weave_slot[# 2, 0] == item.firerune1) ||
		 (global.weave_slot[# 0, 0] == item.windrune1) && (global.weave_slot[# 1, 0] == item.firerune1) && (global.weave_slot[# 2, 0] == item.windrune1) ||
		 (global.weave_slot[# 0, 0] == item.firerune1) && (global.weave_slot[# 1, 0] == item.windrune1) && (global.weave_slot[# 2, 0] == item.windrune1) ||
		 (global.weave_slot[# 0, 0] == item.windrune1) && (global.weave_slot[# 1, 0] == item.firerune1) && (global.weave_slot[# 2, 0] == item.firerune1) ||
		 (global.weave_slot[# 0, 0] == item.firerune1) && (global.weave_slot[# 1, 0] == item.windrune1) && (global.weave_slot[# 2, 0] == item.firerune1) ||
		 (global.weave_slot[# 0, 0] == item.firerune1) && (global.weave_slot[# 1, 0] == item.firerune1) && (global.weave_slot[# 2, 0] == item.windrune1) ||
		 
		 (global.weave_slot[# 0, 0] == item.windrune2) && (global.weave_slot[# 1, 0] == item.windrune2) && (global.weave_slot[# 2, 0] == item.firerune2) ||
		 (global.weave_slot[# 0, 0] == item.windrune2) && (global.weave_slot[# 1, 0] == item.firerune2) && (global.weave_slot[# 2, 0] == item.windrune2) ||
		 (global.weave_slot[# 0, 0] == item.firerune2) && (global.weave_slot[# 1, 0] == item.windrune2) && (global.weave_slot[# 2, 0] == item.windrune2) ||
		 (global.weave_slot[# 0, 0] == item.windrune2) && (global.weave_slot[# 1, 0] == item.firerune2) && (global.weave_slot[# 2, 0] == item.firerune2) ||
		 (global.weave_slot[# 0, 0] == item.firerune2) && (global.weave_slot[# 1, 0] == item.windrune2) && (global.weave_slot[# 2, 0] == item.firerune2) ||
		 (global.weave_slot[# 0, 0] == item.firerune2) && (global.weave_slot[# 1, 0] == item.firerune2) && (global.weave_slot[# 2, 0] == item.windrune2)
	)
	{
		canWeaveInferno = true;
	}
	
	if ((canWeaveInferno) && (global.weave_slot[# 3, 0] == item.none) && (global.weave_slot[# 3, 0] != item.mysteryrune))
	{
		global.weave_slot[# 3, 0] = item.mysteryrune;
	}

	
	// Weave prism rune
	var canWeavePrism = false;
	
	// Check if runes to weave are the same. If same, cannot weave Prism.
	if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
	{
		canWeavePrism = false;	
	}
	
	if ( (global.weave_slot[# 0, 0] == item.firerune2) && (global.weave_slot[# 1, 0] == item.icerune2) && (global.weave_slot[# 2, 0] == item.windrune2) ||
		 (global.weave_slot[# 0, 0] == item.firerune2) && (global.weave_slot[# 1, 0] == item.windrune2) && (global.weave_slot[# 2, 0] == item.icerune2) ||
		 (global.weave_slot[# 0, 0] == item.icerune2) && (global.weave_slot[# 1, 0] == item.firerune2) && (global.weave_slot[# 2, 0] == item.windrune2) ||
		 (global.weave_slot[# 0, 0] == item.icerune2) && (global.weave_slot[# 1, 0] == item.windrune2) && (global.weave_slot[# 2, 0] == item.firerune2) ||
		 (global.weave_slot[# 0, 0] == item.windrune2) && (global.weave_slot[# 1, 0] == item.firerune2) && (global.weave_slot[# 2, 0] == item.icerune2) ||
		 (global.weave_slot[# 0, 0] == item.windrune2) && (global.weave_slot[# 1, 0] == item.icerune2) && (global.weave_slot[# 2, 0] == item.firerune2) ||
		 
		 (global.weave_slot[# 0, 0] == item.frostfirerune2) && (global.weave_slot[# 1, 0] == item.blizzardrune2) && (global.weave_slot[# 2, 0] == item.infernorune2) ||
		 (global.weave_slot[# 0, 0] == item.frostfirerune2) && (global.weave_slot[# 1, 0] == item.infernorune2) && (global.weave_slot[# 2, 0] == item.blizzardrune2) ||
		 (global.weave_slot[# 0, 0] == item.blizzardrune2) && (global.weave_slot[# 1, 0] == item.frostfirerune2) && (global.weave_slot[# 2, 0] == item.infernorune2) ||
		 (global.weave_slot[# 0, 0] == item.blizzardrune2) && (global.weave_slot[# 1, 0] == item.infernorune2) && (global.weave_slot[# 2, 0] == item.frostfirerune2) ||
		 (global.weave_slot[# 0, 0] == item.infernorune2) && (global.weave_slot[# 1, 0] == item.frostfirerune2) && (global.weave_slot[# 2, 0] == item.blizzardrune2) ||
		 (global.weave_slot[# 0, 0] == item.infernorune2) && (global.weave_slot[# 1, 0] == item.blizzardrune2) && (global.weave_slot[# 2, 0] == item.frostfirerune2)
	)
	{
		canWeavePrism = true;
	}
	
	if ((canWeavePrism) && (global.weave_slot[# 3, 0] == item.none) && (global.weave_slot[# 3, 0] != item.mysteryrune))
	{
		global.weave_slot[# 3, 0] = item.mysteryrune;
	}


	// Reset weave outcome slot if any weave slot is empty.
	if (global.weave_slot[# 0, 0] == item.none || global.weave_slot[# 1, 0] == item.none || global.weave_slot[# 2, 0] == item.none)
	{
		if (global.weave_slot[# 3, 0] == item.mysteryrune)
		{
			global.weave_slot[# 3, 0] = item.none;
		}
	}
}