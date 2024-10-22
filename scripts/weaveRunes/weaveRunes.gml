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
	
	// Frostfire recipe
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
		 (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.firerune1) 
	)
	{
		canWeaveFrostfire = true;
	}
	
	
	if (canWeaveFrostfire)
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
	
	// Snowstorm recipe
	var canWeaveSnowstorm = false;
	
	// Check if runes to weave are the same. If same, cannot weave Snowstorm.
	if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
	{
		canWeaveSnowstorm = false;	
	}
	
	if ( (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.windrune1) ||
		 (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.windrune1) && (global.weave_slot[# 2, 0] == item.icerune1) ||
		 (global.weave_slot[# 0, 0] == item.windrune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.icerune1) ||
		 (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.windrune1) && (global.weave_slot[# 2, 0] == item.windrune1) ||
		 (global.weave_slot[# 0, 0] == item.windrune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.windrune1) ||
		 (global.weave_slot[# 0, 0] == item.windrune1) && (global.weave_slot[# 1, 0] == item.windrune1) && (global.weave_slot[# 2, 0] == item.icerune1)
	)
	{
		canWeaveSnowstorm = true;
	}
	
	if (canWeaveSnowstorm)
	{
		global.weave_slot[# 3, 0] = item.snowstormrune2;
		global.weave_slot[# 3, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}

	// Inferno recipe
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
		 (global.weave_slot[# 0, 0] == item.firerune1) && (global.weave_slot[# 1, 0] == item.firerune1) && (global.weave_slot[# 2, 0] == item.windrune1)
	)
	{
		canWeaveInferno = true;
	}
	
	if (canWeaveInferno)
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
		 
		 (global.weave_slot[# 0, 0] == item.frostfirerune2) && (global.weave_slot[# 1, 0] == item.snowstormrune2) && (global.weave_slot[# 2, 0] == item.infernorune2) ||
		 (global.weave_slot[# 0, 0] == item.frostfirerune2) && (global.weave_slot[# 1, 0] == item.infernorune2) && (global.weave_slot[# 2, 0] == item.snowstormrune2) ||
		 (global.weave_slot[# 0, 0] == item.snowstormrune2) && (global.weave_slot[# 1, 0] == item.frostfirerune2) && (global.weave_slot[# 2, 0] == item.infernorune2) ||
		 (global.weave_slot[# 0, 0] == item.snowstormrune2) && (global.weave_slot[# 1, 0] == item.infernorune2) && (global.weave_slot[# 2, 0] == item.frostfirerune2) ||
		 (global.weave_slot[# 0, 0] == item.infernorune2) && (global.weave_slot[# 1, 0] == item.frostfirerune2) && (global.weave_slot[# 2, 0] == item.snowstormrune2) ||
		 (global.weave_slot[# 0, 0] == item.infernorune2) && (global.weave_slot[# 1, 0] == item.snowstormrune2) && (global.weave_slot[# 2, 0] == item.frostfirerune2)
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
		 (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.firerune1) 
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


	// Weave snowstorm rune
	var canWeaveSnowstorm = false;
	
	// Check if runes to weave are the same. If same, cannot weave Snowstorm.
	if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
	{
		canWeaveSnowstorm = false;	
	}
	
	if ( (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.windrune1) ||
		 (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.windrune1) && (global.weave_slot[# 2, 0] == item.icerune1) ||
		 (global.weave_slot[# 0, 0] == item.windrune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.icerune1) ||
		 (global.weave_slot[# 0, 0] == item.icerune1) && (global.weave_slot[# 1, 0] == item.windrune1) && (global.weave_slot[# 2, 0] == item.windrune1) ||
		 (global.weave_slot[# 0, 0] == item.windrune1) && (global.weave_slot[# 1, 0] == item.icerune1) && (global.weave_slot[# 2, 0] == item.windrune1) ||
		 (global.weave_slot[# 0, 0] == item.windrune1) && (global.weave_slot[# 1, 0] == item.windrune1) && (global.weave_slot[# 2, 0] == item.icerune1)
	)
	{
		canWeaveSnowstorm = true;
	}
	
	if ((canWeaveSnowstorm) && (global.weave_slot[# 3, 0] == item.none) && (global.weave_slot[# 3, 0] != item.mysteryrune))
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
		 (global.weave_slot[# 0, 0] == item.firerune1) && (global.weave_slot[# 1, 0] == item.firerune1) && (global.weave_slot[# 2, 0] == item.windrune1)
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
		 
		 (global.weave_slot[# 0, 0] == item.frostfirerune2) && (global.weave_slot[# 1, 0] == item.snowstormrune2) && (global.weave_slot[# 2, 0] == item.infernorune2) ||
		 (global.weave_slot[# 0, 0] == item.frostfirerune2) && (global.weave_slot[# 1, 0] == item.infernorune2) && (global.weave_slot[# 2, 0] == item.snowstormrune2) ||
		 (global.weave_slot[# 0, 0] == item.snowstormrune2) && (global.weave_slot[# 1, 0] == item.frostfirerune2) && (global.weave_slot[# 2, 0] == item.infernorune2) ||
		 (global.weave_slot[# 0, 0] == item.snowstormrune2) && (global.weave_slot[# 1, 0] == item.infernorune2) && (global.weave_slot[# 2, 0] == item.frostfirerune2) ||
		 (global.weave_slot[# 0, 0] == item.infernorune2) && (global.weave_slot[# 1, 0] == item.frostfirerune2) && (global.weave_slot[# 2, 0] == item.snowstormrune2) ||
		 (global.weave_slot[# 0, 0] == item.infernorune2) && (global.weave_slot[# 1, 0] == item.snowstormrune2) && (global.weave_slot[# 2, 0] == item.frostfirerune2)
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