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