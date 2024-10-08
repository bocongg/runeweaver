// receive damage
if place_meeting(x, y, objDamageEnemy)
{
	var _inst = instance_place(x, y, objDamageEnemy);
	//take damage from specific instance
	hp -= _inst.damage;
	
	//tell the damage instance to destroy itself 
	_inst.destroy = true;
}

//death
if hp <= 0
{
	instance_destroy();
}
	