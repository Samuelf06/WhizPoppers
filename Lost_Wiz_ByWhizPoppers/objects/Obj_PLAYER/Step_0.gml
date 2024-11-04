/// @description Controls
var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

var moveSpeed = 2;

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

//Sprite animation wiht movement

if (_left) { 
    if (current_sprite != Sp_PLAYER_Left) {
        current_sprite = Sp_PLAYER_Left; // Change to the alternate sprite
    }
    sprite_index = current_sprite; // Update the object's sprite
}
if (_up) { 
    if (current_sprite != Sp_PLAYER) {
        current_sprite = Sp_PLAYER; // Change to the alternate sprite
    }
    sprite_index = current_sprite; // Update the object's sprite
}
if (_right) { 
    if (current_sprite != Sp_PLAYER_Right) {
        current_sprite = Sp_PLAYER_Right; // Change to the alternate sprite
    }
    sprite_index = current_sprite; // Update the object's sprite
}
if (_down) { 
    if (current_sprite != Sp_PLAYER_Down) {
        current_sprite = Sp_PLAYER_Down; // Change to the alternate sprite
    }
    sprite_index = current_sprite; // Update the object's sprite
}