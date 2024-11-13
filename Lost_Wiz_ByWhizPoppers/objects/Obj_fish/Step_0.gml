/// @description Insert description here

Speed = 1

if distance_to_object(Obj_PLAYER) <= 40 {
	move_towards_point(Obj_PLAYER.x, Obj_PLAYER.y,Speed)
}
else {
	move_towards_point(spawn_x, spawn_y, 2)
}
