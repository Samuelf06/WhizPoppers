var player_x = Obj_PLAYER.x;
var player_y = Obj_PLAYER.y;

image_angle = point_direction(Obj_Boss_aimer.x, Obj_Boss_aimer.y, player_x, player_y);

if distance_to_object(Obj_PLAYER) <= 100 {
	
	var spell = instance_create_layer(x,y, "Instances", Obj_Needle );
	spell.image_angle = image_angle;
	spell.direction = image_angle;
	spell.speed = 2;

}