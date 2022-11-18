/// @description Insert description here
// You can write your code in this editor


if (speed != 0) {
	//recent_hspeed = hspeed;
	//recent_vspeed = vspeed;
	recent_speed = speed;
	recent_imagespeed = image_speed;
}

if (canattack == false) {
	//hspeed = 0;
	//vspeed = 0;
	speed = 0;
	//image_speed = 0;
}
else {
	// hspeed = recent_hspeed;
	// vspeed = recent_vspeed;
	//speed = recent_speed;
	//image_speed = recent_imagespeed;
}

// frames_since_last_attack++;
// If the player is close enough and canattack is true, stop and attack
// if (abs(obj_player.x - x) <= sense_distance and abs(obj_player.y - y) <= sense_distance and canattack == true and frames_since_last_attack >= waiting_period1){
	// Create an attack object half the sense distance in front of the enemy
	// attack_id = instance_create_layer(x + ((sense_distance / 2) * image_xscale), y, "Instances", obj_enemy_attack);
	// sprite_index = spr_platypus_scratch;
	// canattack = false;
	// alarm[0] = obj_enemy_attack.attackduration;
	// frames_since_last_attack = 0;
	
//}



if(instance_exists(obj_player)){
	
	frames_since_last_attack++;
	if(canattack == false){
		speed = 0;
	}
	else{
		if(distance_to_object(obj_player) < aggro_range and frames_since_last_attack >= waiting_period){
		
			// path_end();
		
			direction = point_direction(x,y,obj_player.x,obj_player.y);
		
			speed = hsp;
		}
		else{
			speed = 0;
		}
	}
	
}

/*
dir = x - old_x;

alarm[2] = 1;

if(dir <  0 ){
	
	image_xscale = -1;
}else{
	
	image_xscale = 1;
}
*/
