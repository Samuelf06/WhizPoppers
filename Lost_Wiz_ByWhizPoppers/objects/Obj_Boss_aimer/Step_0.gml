var player_x = Obj_PLAYER.x;
var player_y = Obj_PLAYER.y;

var Boss_x = Obj_Boss.x;
var Boss_y = Obj_Boss.y;


move_towards_point(Boss_x, Boss_y, 10)

frame_counter += 1;

image_angle = point_direction(Obj_Boss_aimer.x, Obj_Boss_aimer.y, player_x, player_y);


if frame_counter >= 25 {

	if distance_to_object(Obj_PLAYER) <= 100 {
	
		var spell = instance_create_layer(x,y, "Instances", Obj_Needle );
		spell.image_angle = image_angle;
		spell.direction = image_angle;
		spell.speed = 2;
		
	
	}
	frame_counter = 0;
}