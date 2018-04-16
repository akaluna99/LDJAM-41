/// @description Moure la camera
// You can write your code in this editor
//dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
var k = 5;
var dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
var dist = point_distance(obj_player.x, obj_player.y, mouse_x, mouse_y);
var seguir_x, seguir_y;
//if( dist < 1000){
	seguir_x = (k*obj_player.x+mouse_x-obj_player.x)/k;
	seguir_y = (k*obj_player.y+mouse_y-obj_player.y)/k;
/*}else{
	seguir_x = lengthdir_x(100, dir);
	seguir_y = lengthdir_y(100, dir);
}*/
x += (seguir_x - x) * 0.1;
y += (seguir_y - y) * 0.1;

