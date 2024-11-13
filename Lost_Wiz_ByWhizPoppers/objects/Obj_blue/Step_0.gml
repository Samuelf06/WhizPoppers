//player will now be followed if the user goes within a certain range
Speed = 1

if distance_to_object(Obj_PLAYER) <= 20 {
	move_towards_point(Obj_PLAYER.x, Obj_PLAYER.y, Speed)
}
else {
	move_towards_point(spawn_x, spawn_y, 2)
}

//player will stop being followed if they manage to get far enough away from the enemy ai
