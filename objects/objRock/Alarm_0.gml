randomise();

var outcome = choose(true, false);

if (outcome) {
	instance_create_layer(x, y+sprite_height+10, "Instances", objTreasureChest);
	instance_destroy();
} else if (!outcome) {
	instance_create_layer(x, y, "Instances", objRockSmall)
	instance_destroy();
}

instance_destroy(objInteractableTooltip);
obtainedTreasure = true;