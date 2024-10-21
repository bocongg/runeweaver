// Create map to store the fire rune data.
global.fireruneL1 = ds_map_create();
global.fireruneL2 = ds_map_create();
global.fireruneL3 = ds_map_create();


function getFireRuneL1(_rune_list)
{
	// Create map to store the rune.
	var _map = ds_map_create();
	
	// Add fire rune L1 details to map.
	ds_map_replace(_map, "object", global.fireruneL1);
	ds_map_replace(_map, "icon", sprRuneFire1);
	
	// Add fire rune L1 to rune list.
	ds_list_add(_rune_list, _map);
}

function getFireRuneL2(_rune_list)
{
	// Create map to store the rune.
	var _map = ds_map_create();
	
	// Add fire rune L2 details to map.
	ds_map_replace(_map, "object", global.fireruneL2);
	ds_map_replace(_map, "icon", sprRuneFire2);
	
	// Add fire rune L2 to rune list.
	ds_list_add(_rune_list, _map);
}

//function getFireRuneL3(_rune_list)
//{
//	// Create map to store the rune.
//	var _map = ds_map_create();
	
//	// Add fire rune L3 details to map.
//	ds_map_replace(_map, "object", global.fireruneL3);
//	ds_map_replace(_map, "icon", sprRuneFire3);
	
//	// Add fire rune L3 to rune list.
//	ds_list_add(_upgrade_list, _map);
//}