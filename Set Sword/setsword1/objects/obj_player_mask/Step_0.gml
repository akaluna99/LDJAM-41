/// @description Animate
// You can write your code in this editor
depth = -y+obj_player.z;

x = obj_player.x;
y = obj_player.y+obj_player.z;

if(obj_player.x_speed > 0 and obj_player.x_speed > abs(obj_player.y_speed)){
	sprite_index = spr_player_running_right;
	last_sprite = sprite_index;
	image_speed = 1;
}else if(obj_player.x_speed < 0 and abs(obj_player.x_speed) > abs(obj_player.y_speed)){
	sprite_index = spr_player_running_left;
	last_sprite = sprite_index;
	image_speed = 1;
}else if(obj_player.y_speed > 0 and obj_player.y_speed > abs(obj_player.x_speed)){
	sprite_index = spr_player_running_down;	
	last_sprite = sprite_index;
	image_speed = 1;
}else if(obj_player.y_speed < 0 and abs(obj_player.y_speed) > abs(obj_player.x_speed)){
	sprite_index = spr_player_running_up;
	last_sprite = sprite_index;
	image_speed = 1;
}else if(obj_player.x_speed == 0 and obj_player.y_speed == 0){
	sprite_index = last_sprite;
	image_speed = 0;
	image_index = 0;
}