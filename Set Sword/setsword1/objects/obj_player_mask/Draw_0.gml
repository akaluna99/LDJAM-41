/// @description Draw_shadow and itselft
// You can write your code in this editor

//draw_sprite(spr_shadow,0,x,y+sprite_height/2);
var scale = 1-obj_player.z/175;
draw_sprite_ext(spr_shadow,0,x,obj_player.y+sprite_height/2,scale,scale,0,0,1+obj_player.z/125);
draw_self();