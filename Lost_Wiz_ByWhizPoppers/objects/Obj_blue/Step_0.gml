//player will now be followed if the user goes within a certain range

if (Health <= 0){
	instance_destroy();
	//kills += 1;
}

if distance_to_object(Obj_PLAYER) <= 100{
	move_towards_point(Obj_PLAYER.x, Obj_PLAYER.y, speed)
}
else {
	move_towards_point(spawn_x, spawn_y, 2)
}

//player will stop being followed if they manage to get far enough away from the enemy ai
