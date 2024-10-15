// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function weaveRunes(){
	
	var runeID = item.firerune1
	
	if (global.weave_slot[# 0, 0] == runeID && global.weave_slot[# 1, 0] == runeID && global.weave_slot[# 2, 0] == runeID)
	{
		global.weave_slot[# 3, 0] = item.firerune2;
		global.weave_slot[#4, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}
	
	var runeID = item.icerune1
	
	if (global.weave_slot[# 0, 0] == runeID && global.weave_slot[# 1, 0] == runeID && global.weave_slot[# 2, 0] == runeID)
	{
		global.weave_slot[# 3, 0] = item.icerune2;
		global.weave_slot[#4, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}
	
	var runeID = item.windrune1
	
	if (global.weave_slot[# 0, 0] == runeID && global.weave_slot[# 1, 0] == runeID && global.weave_slot[# 2, 0] == runeID)
	{
		global.weave_slot[# 3, 0] = item.windrune2;
		global.weave_slot[#4, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}
	
	// Frostfire recipe
	var canWeaveFrostfire = false;
	
	// Check if runes to weave are the same. If same, cannot weave Frostfire.
	if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
	{
		canWeaveFrostfire = false;	
	} else
	if (global.weave_slot[# 0, 0] == item.firerune1 || global.weave_slot[# 0, 0] == item.icerune1)
	{
		if (global.weave_slot[# 1, 0] == item.firerune1 || global.weave_slot[# 1, 0] == item.icerune1)
		{
			if (global.weave_slot[# 2, 0] == item.firerune1 || global.weave_slot[# 2, 0] == item.icerune1)
			{
				canWeaveFrostfire = true;
			}
		}
	}
	
	
	if (canWeaveFrostfire)
	{
		global.weave_slot[# 3, 0] = item.frostfirerune1;
		global.weave_slot[#4, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}
	
	// Snowstorm recipe
	var canWeaveSnowstorm = false;
	
	// Check if runes to weave are the same. If same, cannot weave Frostfire.
	if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
	{
		canWeaveSnowstorm = false;	
	} else
	if (global.weave_slot[# 0, 0] == item.windrune1 || global.weave_slot[# 0, 0] == item.icerune1)
	{
		if (global.weave_slot[# 1, 0] == item.windrune1 || global.weave_slot[# 1, 0] == item.icerune1)
		{
			if (global.weave_slot[# 2, 0] == item.windrune1 || global.weave_slot[# 2, 0] == item.icerune1)
			{
				canWeaveSnowstorm = true;
			}
		}
	}
	
	
	if (canWeaveSnowstorm)
	{
		global.weave_slot[# 3, 0] = item.snowstormrune1;
		global.weave_slot[#4, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}

	// Inferno recipe
	var canWeaveInferno = false;
	
	// Check if runes to weave are the same. If same, cannot weave Frostfire.
	if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
	{
		canWeaveInferno = false;	
	} else
	if (global.weave_slot[# 0, 0] == item.windrune1 || global.weave_slot[# 0, 0] == item.firerune1)
	{
		if (global.weave_slot[# 1, 0] == item.windrune1 || global.weave_slot[# 1, 0] == item.firerune1)
		{
			if (global.weave_slot[# 2, 0] == item.windrune1 || global.weave_slot[# 2, 0] == item.firerune1)
			{
				canWeaveInferno = true;
			}
		}
	}
	
	
	if (canWeaveInferno)
	{
		global.weave_slot[# 3, 0] = item.infernorune1;
		global.weave_slot[#4, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}
	
	// Prism recipe
	var canWeavePrism = false;
	
	// Check if runes to weave are the same. If same, cannot weave Frostfire.
	if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
	{
		canWeavePrism = false;	
	} else
	if (global.weave_slot[# 0, 0] == item.frostfirerune1 || global.weave_slot[# 0, 0] == item.snowstormrune1 || global.weave_slot[# 0, 0] == item.infernorune1)
	{
		if (global.weave_slot[# 1, 0] == item.frostfirerune1 || global.weave_slot[# 1, 0] == item.snowstormrune1 || global.weave_slot[# 1, 0] == item.infernorune1)
		{
			if (global.weave_slot[# 2, 0] == item.frostfirerune1 || global.weave_slot[# 2, 0] == item.snowstormrune1 || global.weave_slot[# 2, 0] == item.infernorune1)
			{
				canWeavePrism = true;
			}
		}
	}
	
	
	if (canWeavePrism)
	{
		global.weave_slot[# 3, 0] = item.prisimrune1;
		global.weave_slot[#4, 1] = 1;
		
		global.weave_slot[# 0, 0] = item.none;
		global.weave_slot[# 0, 1] = 0;
		global.weave_slot[# 1, 0] = item.none;
		global.weave_slot[# 1, 1] = 0;
		global.weave_slot[# 2, 0] = item.none;
		global.weave_slot[# 2, 1] = 0;
	}

}

