/// @description Act as a mask
// You can write your code in this editor
depth = -y;

x = obj_sword.x;
y = obj_sword.y;
image_angle = obj_sword.image_angle;
#region //Animate

if(obj_sword.speed_counter < obj_sword.MAX_SPEED){
	image_yscale = sprite_height/(sprite_height - (obj_sword.speed_counter)*(obj_sword.MAX_SPEED/(sprite_height/3)));
	image_xscale = sprite_width/(sprite_width + (obj_sword.speed_counter)*(obj_sword.MAX_SPEED/(sprite_width/3)));
}else if(obj_sword.speed_counter == 0){
	image_xscale = 1;
	image_yscale = 1;
}


#endregion