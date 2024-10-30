with (obj_slot)
{
	rune = global.inventory[# var_slot, 0];
	
	if (position_meeting(mouse_x, mouse_y, id)) {
		switch(rune){
			case item.none:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y - 221)
				break;
			
			case item.firerune1:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y - 221)
				break;
				
			case item.firerune2:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y - 221)
				break;
				
			case item.firerune3:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y - 221)
				break;
			
			case item.icerune1:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y - 221)
				break;
			
			case item.icerune2:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y - 221)
				break;
			
			case item.icerune3:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y - 221)
				break;
			
			case item.windrune1:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y - 221)
				break;
			
			case item.windrune2:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y - 221)
				break;
			
			case item.windrune3:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y - 221)
				break;
			
			case item.frostfirerune2:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y - 221)
				break;
			
			case item.frostfirerune3:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y - 221)
				break;
			
			case item.blizzardrune2:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y - 221)
				break;
			
			case item.blizzardrune3:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y - 221)
				break;
			
			case item.infernorune2:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y - 221)
				break;
				
			case item.infernorune3:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y - 221)
				break;
				
			case item.prismrune3:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y - 221)
				break;
		}
	}
}

with (obj_slot_Weave)
{
	rune = global.weave_slot[# var_slotWeave, 0];
	
	if (position_meeting(mouse_x, mouse_y, id)) {
		switch(rune){
			case item.none:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y + 221)
				break;
			
			case item.firerune1:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y + 221)
				break;
				
			case item.firerune2:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y + 221)
				break;
				
			case item.firerune3:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y + 221)
				break;
			
			case item.icerune1:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y + 221)
				break;
			
			case item.icerune2:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y + 221)
				break;
			
			case item.icerune3:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y + 221)
				break;
			
			case item.windrune1:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y + 221)
				break;
			
			case item.windrune2:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y + 221)
				break;
			
			case item.windrune3:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y + 221)
				break;
			
			case item.frostfirerune2:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y + 221)
				break;
			
			case item.frostfirerune3:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y + 221)
				break;
			
			case item.blizzardrune2:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y + 221)
				break;
			
			case item.blizzardrune3:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y + 221)
				break;
			
			case item.infernorune2:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y + 221)
				break;
				
			case item.infernorune3:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y + 221)
				break;
				
			case item.prismrune3:
				draw_sprite(sprRuneHoverTooltip, rune, x ,y + 221)
				break;
		}
	}
}

with (obj_slot_Attack)
{
	rune = global.attack_slot[# var_slotAttack, 0];
	
	if (position_meeting(mouse_x, mouse_y, id)) {
		switch(rune){
			case item.none:
				draw_sprite(sprRuneHoverTooltip, rune, x + 173 ,y - 221)
				break;
			
			case item.firerune1:
				draw_sprite(sprRuneHoverTooltip, rune, x + 173 ,y - 221)
				break;
				
			case item.firerune2:
				draw_sprite(sprRuneHoverTooltip, rune, x + 173 ,y - 221)
				break;
				
			case item.firerune3:
				draw_sprite(sprRuneHoverTooltip, rune, x + 173 ,y - 221)
				break;
			
			case item.icerune1:
				draw_sprite(sprRuneHoverTooltip, rune, x + 173 ,y - 221)
				break;
			
			case item.icerune2:
				draw_sprite(sprRuneHoverTooltip, rune, x + 173 ,y - 221)
				break;
			
			case item.icerune3:
				draw_sprite(sprRuneHoverTooltip, rune, x + 173 ,y - 221)
				break;
			
			case item.windrune1:
				draw_sprite(sprRuneHoverTooltip, rune, x + 173 ,y - 221)
				break;
			
			case item.windrune2:
				draw_sprite(sprRuneHoverTooltip, rune, x + 173 ,y - 221)
				break;
			
			case item.windrune3:
				draw_sprite(sprRuneHoverTooltip, rune, x + 173 ,y - 221)
				break;
			
			case item.frostfirerune2:
				draw_sprite(sprRuneHoverTooltip, rune, x + 173 ,y - 221)
				break;
			
			case item.frostfirerune3:
				draw_sprite(sprRuneHoverTooltip, rune, x + 173 ,y - 221)
				break;
			
			case item.blizzardrune2:
				draw_sprite(sprRuneHoverTooltip, rune, x + 173 ,y - 221)
				break;
			
			case item.blizzardrune3:
				draw_sprite(sprRuneHoverTooltip, rune, x + 173 ,y - 221)
				break;
			
			case item.infernorune2:
				draw_sprite(sprRuneHoverTooltip, rune, x + 173 ,y - 221)
				break;
				
			case item.infernorune3:
				draw_sprite(sprRuneHoverTooltip, rune, x + 173 ,y - 221)
				break;
				
			case item.prismrune3:
				draw_sprite(sprRuneHoverTooltip, rune, x + 173 ,y - 221)
				break;
		}
	}
}