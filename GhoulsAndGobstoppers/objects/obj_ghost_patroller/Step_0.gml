/// @description Insert description here
// You can write your code in this editor




// Inherit the parent event
event_inherited();

if(instance_exists(obj_player)){
	if(distance_to_object(obj_player)<aggro_range){
		path_end();
		point_direction(x,y,obj_player.x,obj_player.y);
		speed = hsp;
	}
	
}