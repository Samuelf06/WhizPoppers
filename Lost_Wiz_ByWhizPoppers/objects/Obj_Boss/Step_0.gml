if (health <= 0){
	instance_destroy();
	//kills += 1;
}

if distance_to_object(Obj_PLAYER) <= 100 {
	move_towards_point(Obj_PLAYER.x, Obj_PLAYER.y,speed)
}
else {
	move_towards_point(spawn_x, spawn_y, 2)
}