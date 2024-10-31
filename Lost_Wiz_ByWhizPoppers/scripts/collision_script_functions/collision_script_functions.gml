// Movement Script Functions


/// @function move_and_collide()
/// @description moves and collides using hsp and vsp and solid parents
function collision_script_functions() {
	
	//horizontal movement and collision
	if (place_meeting(x + hsp, y, solid_parent)) {
		while (!place_meeting(x + sign(hsp), y, solid_parent)) {
			x += sign(hsp);
		}
		hsp = 0;
	}
	x += hsp;
	
	//vertical collision and movement
	if (place_meeting(x, y + vsp, solid_parent)) {
		while (!place_meeting(x, y + sign(vsp), solid_parent)) {
			y += sign(vsp);
		}
		vsp = 0;
	}
	y += vsp;

}