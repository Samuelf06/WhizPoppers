/// @description Controls
var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

var moveSpeed = 1.5;

//Movements
if (_left) {	
	xspeed = -moveSpeed;
}
if (_right) {	
	xspeed = moveSpeed;
}
if (_up) {	
	yspeed = -moveSpeed;
}
if (_down) {	
	yspeed = moveSpeed;
}

//stop moving
if (!_up && !_down) {
	yspeed = 0;
}
if (!_left && !_right) {
	xspeed = 0;
}

//Movement proper
x += xspeed;
y += yspeed;

//Sprite animation with movement

if (_left) { 
    if (current_sprite != Sp_PLAYER_Left) {
        current_sprite = Sp_PLAYER_Left; // Change to the alternate sprite
    }
    sprite_index = current_sprite; // Update the object's sprite
}


if (_up) { 
    if (current_sprite != Sp_PLAYER_Up) {
		current_sprite = Sp_PLAYER_Up; 
	}
    sprite_index = current_sprite; 
}


if (_right) { 
    if (current_sprite != Sp_PLAYER_Right) {
        current_sprite = Sp_PLAYER_Right;
    }
    sprite_index = current_sprite; 
}


if (_down) { 
    if (current_sprite != Sp_PLAYER_Down) {
        current_sprite = Sp_PLAYER_Down; 
    }
    sprite_index = current_sprite; 
}

if (!_down and !_right and !_up and !_left) {
	if (current_sprite != Sp_PLAYER_Idle) {	
		current_sprite = Sp_PLAYER_Idle
	}
	sprite_index = current_sprite;
}

if(mc_health <= 0){
	instance_destroy();
	instance_destroy(Obj_Spellcaster)
}