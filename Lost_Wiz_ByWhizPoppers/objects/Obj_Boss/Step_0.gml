if (Health <= 0){
	instance_destroy();
	//kills += 1;
}

Speed = 1

if distance_to_object(Obj_PLAYER) <= 100 {
	move_towards_point(Obj_PLAYER.x, Obj_PLAYER.y,Speed)
}
else {
	move_towards_point(spawn_x, spawn_y, 2)
}

var player_x = Obj_PLAYER.x;
var player_y = Obj_PLAYER.y;

image_angle = point_direction(Obj_Boss.x, Obj_Boss.y, player_x, player_y);

if distance_to_object(Obj_PLAYER) <= 100 {
	
	var spell = instance_create_layer(x,y, "Instances", Obj_Needle );
	spell.image_angle = image_angle;
	spell.direction = image_angle;
	spell.speed = 2;

}