// Create map to store the Wind rune data.
global.windruneL1 = ds_map_create();
global.windruneL2 = ds_map_create();
global.windruneL3 = ds_map_create();


function getWindRuneL1(_rune_list)
{
	// Create map to store the rune.
	var _map = ds_map_create();
	
	// Add wind rune L1 details to map.
	ds_map_replace(_map, "object", global.windruneL1);
	ds_map_replace(_map, "icon", sprRuneWind1);
	
	// Add wind rune L1 to rune list.
	ds_list_add(_rune_list, _map);
}

function getWindRuneL2(_rune_list)
{
	// Create map to store the rune.
	var _map = ds_map_create();
	
	// Add wind rune L2 details to map.
	ds_map_replace(_map, "object", global.windruneL2);
	ds_map_replace(_map, "icon", sprRuneWind2);
	
	// Add wind rune L2 to rune list.
	ds_list_add(_rune_list, _map);
}

//function getWindRuneL3(_rune_list)
//{
//	// Create map to store the rune.
//	var _map = ds_map_create();
	
//	// Add wind rune L3 details to map.
//	ds_map_replace(_map, "object", global.windruneL3);
//	ds_map_replace(_map, "icon", sprRuneWind3);
	
//	// Add wind rune L3 to rune list.
//	ds_list_add(_upgrade_list, _map);
//}