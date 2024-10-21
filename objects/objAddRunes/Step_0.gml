// Checks if reveal effect if visible.
if (roll_alpha >= 0)
{
	// Decreases life timer.
	roll_life -= delta_time * 0.000001;
	
	// Checks if life timer is finished
	if (roll_life <= 0)
	{
		// Reduces alpha of card reveal.
		roll_alpha -= delta_time * 0.000001 * 2;
	}
}