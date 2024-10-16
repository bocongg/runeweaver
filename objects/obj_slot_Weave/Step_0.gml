// Weave fire rune level 2
if (global.weave_slot[# 0, 0] == item.firerune1 &&
	global.weave_slot[# 1, 0] == item.firerune1 &&
	global.weave_slot[# 2, 0] == item.firerune1)
{
	if (global.weave_slot[# 3, 0] == item.none && global.weave_slot[# 3, 0] != item.mysteryrune)
	{
		global.weave_slot[# 3, 0] = item.mysteryrune;
	} else if (global.weave_slot[# 3, 0] != item.none && global.weave_slot[# 3, 0] != item.mysteryrune)
	{
		exit;
	}
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Weave ice rune level 2
if (global.weave_slot[# 0, 0] == item.icerune1 &&
	global.weave_slot[# 1, 0] == item.icerune1 &&
	global.weave_slot[# 2, 0] == item.icerune1)
{
	if (global.weave_slot[# 3, 0] == item.none && global.weave_slot[# 3, 0] != item.mysteryrune)
	{
		global.weave_slot[# 3, 0] = item.mysteryrune;
	} else if (global.weave_slot[# 3, 0] != item.none && global.weave_slot[# 3, 0] != item.mysteryrune)
	{
		exit;
	}
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Weave wind rune level 2
if (global.weave_slot[# 0, 0] == item.windrune1 &&
	global.weave_slot[# 1, 0] == item.windrune1 &&
	global.weave_slot[# 2, 0] == item.windrune1)
{
	if (global.weave_slot[# 3, 0] == item.none && global.weave_slot[# 3, 0] != item.mysteryrune)
	{
		global.weave_slot[# 3, 0] = item.mysteryrune;
	} else if (global.weave_slot[# 3, 0] != item.none && global.weave_slot[# 3, 0] != item.mysteryrune)
	{
		exit;
	}
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Weave frostfire rune
var canWeaveFrostfire = false;
	
// Check if runes to weave are the same. If same, cannot weave Frostfire.
if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
{
	canWeaveFrostfire = false;	
} else
if (global.weave_slot[# 0, 0] == item.firerune1 || global.weave_slot[# 0, 0] == item.icerune1 || 
	global.weave_slot[# 1, 0] == item.firerune1 || global.weave_slot[# 1, 0] == item.icerune1 ||
	global.weave_slot[# 2, 0] == item.firerune1 || global.weave_slot[# 2, 0] == item.icerune1)
{
	canWeaveFrostfire = true;
}
	
	
if (canWeaveFrostfire)
{
	global.weave_slot[# 3, 0] = item.mysteryrune;
} else if (global.weave_slot[# 3, 0] != item.none && global.weave_slot[# 3, 0] != item.mysteryrune)
{
	exit;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Weave snowstorm rune
var canWeaveSnowstorm = false;
	
// Check if runes to weave are the same. If same, cannot weave Snowstorm.
if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
{
	canWeaveSnowstorm = false;	
} else
if (global.weave_slot[# 0, 0] == item.windrune1 || global.weave_slot[# 0, 0] == item.icerune1 ||
	global.weave_slot[# 1, 0] == item.windrune1 || global.weave_slot[# 1, 0] == item.icerune1 ||
	global.weave_slot[# 2, 0] == item.windrune1 || global.weave_slot[# 2, 0] == item.icerune1)
{
	canWeaveSnowstorm = true;
}
	
if (canWeaveSnowstorm)
{
	global.weave_slot[# 3, 0] = item.mysteryrune;
} else if (global.weave_slot[# 3, 0] != item.none && global.weave_slot[# 3, 0] != item.mysteryrune)
{
	exit;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Weave inferno rune
var canWeaveInferno = false;
	
// Check if runes to weave are the same. If same, cannot weave Inferno.
if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
{
	canWeaveInferno = false;	
} else
if (global.weave_slot[# 0, 0] == item.windrune1 || global.weave_slot[# 0, 0] == item.firerune1 ||
	global.weave_slot[# 1, 0] == item.windrune1 || global.weave_slot[# 1, 0] == item.firerune1 || 
	global.weave_slot[# 2, 0] == item.windrune1 || global.weave_slot[# 2, 0] == item.firerune1)
{
	canWeaveInferno = true;
}
	
if (canWeaveInferno)
{
	global.weave_slot[# 3, 0] = item.mysteryrune;
} else if (global.weave_slot[# 3, 0] != item.none && global.weave_slot[# 3, 0] != item.mysteryrune)
{
	exit;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Weave prism rune
var canWeavePrism = false;
	
// Check if runes to weave are the same. If same, cannot weave Prism.
if (global.weave_slot[# 0, 0] == global.weave_slot[# 1, 0] == global.weave_slot[# 2, 0])
{
	canWeavePrism = false;	
} else
if (global.weave_slot[# 0, 0] == item.frostfirerune1 || global.weave_slot[# 0, 0] == item.snowstormrune1 || global.weave_slot[# 0, 0] == item.infernorune1 ||
	global.weave_slot[# 1, 0] == item.frostfirerune1 || global.weave_slot[# 1, 0] == item.snowstormrune1 || global.weave_slot[# 1, 0] == item.infernorune1 ||
	global.weave_slot[# 2, 0] == item.frostfirerune1 || global.weave_slot[# 2, 0] == item.snowstormrune1 || global.weave_slot[# 2, 0] == item.infernorune1)
{
	canWeavePrism = true;
}
	
if (canWeavePrism)
{
	global.weave_slot[# 3, 0] = item.mysteryrune;
} else if (global.weave_slot[# 3, 0] != item.none && global.weave_slot[# 3, 0] != item.mysteryrune)
{
	exit;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Reset weave outcome slot if any weave slot is empty.
if (global.weave_slot[# 0, 0] == item.none || global.weave_slot[# 1, 0] == item.none || global.weave_slot[# 2, 0] == item.none)
{
	if (global.weave_slot[# 3, 0] == item.mysteryrune)
	{
		global.weave_slot[# 3, 0] = item.none;
	}
}