/// @description MOVE
// You can write your code in this editor


//Move the player around the axis x and y
#region //Player movement
//Horitzontal Axis
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

//Vertical Axis
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

//Calculate axis

horitzontal_axis = right - left;
vertical_axis = down - up;

//Calculate direction;
dir = point_direction(0,0,horitzontal_axis,vertical_axis);
x_speed = lengthdir_x(PLAYER_SPEED, dir)*(abs(horitzontal_axis));
y_speed = lengthdir_y(PLAYER_SPEED, dir);

//Move
var condicio_x = not place_meeting(x+x_speed, y, obj_wall);
var condicio_y = not place_meeting(x, y+y_speed, obj_wall);

if(!condicio_x){
	var condicio_x_menor = not place_meeting(x+1*sign(x_speed), y, obj_wall);
	if(condicio_x_menor) x += 1*sign(x_speed);
}else{
	x += x_speed;	
}
if(!condicio_y){
	var condicio_y_menor = not place_meeting(x, y+1*sign(y_speed), obj_wall);
	if(condicio_y_menor) y += 1*sign(y_speed);
}else{
	y += y_speed;
}

#endregion

#region //Player jumping
//Get the key
jump = keyboard_check_pressed(vk_space);


//INICIALITZAR VARIABLES PER SALTAR
if(!jumped and jump){
	jumped = true;
	vel_z = JUMPING_SPEED;
}else if(jumped){
	if(vel_z > -JUMPING_SPEED){
		z -= vel_z;
		vel_z -= g;
	}
	else{
		z = 0;
		jumped = false;	
		vel_z = 0
	}
}
#endregion
