// Create map to store the fire rune data.
global.iceruneL1 = ds_map_create();
global.iceruneL2 = ds_map_create();
global.iceruneL3 = ds_map_create();


function getIceRuneL1(_rune_list)
{
	// Create map to store the rune.
	var _map = ds_map_create();
	
	// Add ice rune L1 details to map.
	ds_map_replace(_map, "object", global.iceruneL1);
	ds_map_replace(_map, "icon", sprRuneIce1);
	
	// Add ice rune L1 to rune list.
	ds_list_add(_rune_list, _map);
}

function getIceRuneL2(_rune_list)
{
	// Create map to store the rune.
	var _map = ds_map_create();
	
	// Add ice rune L2 details to map.
	ds_map_replace(_map, "object", global.iceruneL2);
	ds_map_replace(_map, "icon", sprRuneIce2);
	
	// Add ice rune L2 to rune list.
	ds_list_add(_rune_list, _map);
}

//function getFireRuneL3(_rune_list)
//{
//	// Create map to store the rune.
//	var _map = ds_map_create();
	
//	// Add ice rune L3 details to map.
//	ds_map_replace(_map, "object", global.iceruneL3);
//	ds_map_replace(_map, "icon", sprRuneIce3);
	
//	// Add ice rune L3 to rune list.
//	ds_list_add(_upgrade_list, _map);
//}