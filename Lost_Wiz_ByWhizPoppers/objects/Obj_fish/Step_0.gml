/// @description Insert description here

if distance_to_object(Obj_PLAYER) <= 20 {
	move_towards_point(Obj_PLAYER.x, Obj_PLAYER.y,1)
}
else {
	move_towards_point(spawn_x, spawn_y, 2)
}
