/// @description Move depending of everything
// You can write your code in this editor
distancia = point_distance(x,y,obj_player.x,obj_player.y);
#region //Moving the sword
mouse_click = mouse_check_button(mb_left);
mouse_re = mouse_check_button_released(mb_left)
return_click = keyboard_check_pressed(ord("R"));

if(mouse_click){
	image_angle = point_direction(x,y,mouse_x, mouse_y);
	if(speed_counter < MAX_SPEED) speed_counter += 0.25;
}
if(mouse_re){
	point_dir_x = mouse_x;
	point_dir_y = mouse_y;
	estat = 0;	
	sword_speed = speed_counter;
	speed_counter = 0;
	angle = image_angle;
	
	//Acabar de definir moviment amb espasa
	if(!tocant_player){
		can_i = true;
	}else{
		can_i = false;
		tocant_player = false;
	}
	
}
	
if(return_click){
	image_angle = point_direction(x,y,obj_player.x, obj_player.y);
	estat = 9;
}




//Màquina d'estats
if(estat == 9){ 
	
	if (distancia > MAX_SPEED){
		
		image_angle = point_direction(obj_player.x, obj_player.y+obj_player.z, x,y);
		x += lengthdir_x(MAX_SPEED, point_direction(x,y,obj_player.x,obj_player.y+obj_player.z));
		y += lengthdir_y(MAX_SPEED, point_direction(x,y,obj_player.x,obj_player.y+obj_player.z));
		
	}else estat = 10;
	
}else if(estat == 10){
	
	x = obj_player.x;
	y = obj_player.y+obj_player.z;
	tocant_player = true;
	
}else if(estat == 0){
	if(sword_speed > 2){
		sword_speed -= FRICCIO;
		
		x += lengthdir_x(sword_speed, angle);
		y += lengthdir_y(sword_speed, angle);
	}
	else{
		sword_speed = 0;
		estat = 1;
	}
}


#endregion

#region //Colide with player
if(obj_player.z == 0){
	if(can_i and estat == 0){
		if(distancia <= DISTANCIA_AGARRE){
			with(obj_player){
				var sword_speed_x = lengthdir_x(obj_sword.sword_speed, obj_sword.angle);
				var sword_speed_y = lengthdir_y(obj_sword.sword_speed, obj_sword.angle);
				if(not place_meeting(x+sword_speed_x,y,obj_wall)) x += sword_speed_x;
				if(not place_meeting(x,y+sword_speed_y,obj_wall)) y += sword_speed_y;
			}	
		}
	
		//Agafar espasa del terra
		if(estat != 10 and sword_speed == 0 and point_distance(x,y,obj_player.x,obj_player.y) < DISTANCIA_AGARRE) estat = 9;
	}
}
#endregion

#region	//Colide with walls
	//Colisions verticals
	if(estat == 0 or estat == 1){
		if(place_meeting(x+lengthdir_x(sword_speed, angle), y,obj_wall)){
			angle = 180 - angle;
			image_angle = angle;
			if(distancia > 50) can_i = true;
		}
		if(place_meeting(x,y+lengthdir_y(sword_speed, angle), obj_wall)){
			angle = -angle;	
			image_angle = angle;
			if(distancia > 50) can_i = true;
		}
	}
#endregion