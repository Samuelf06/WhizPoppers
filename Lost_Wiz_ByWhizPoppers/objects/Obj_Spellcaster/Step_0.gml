/// @description Weapon sticks to player and aims at mouse

image_angle = point_direction(Obj_PLAYER.x, Obj_PLAYER.y, mouse_x, mouse_y);

x = Obj_PLAYER.x;
y = Obj_PLAYER.y;

if (mouse_check_button_released(mb_left)) {
	
	
	var spell = instance_create_layer(x,y, "Instances", Obj_Fireball );
	spell.image_angle = image_angle;
	spell.direction = image_angle;
	spell.speed = 3;
	
}
 