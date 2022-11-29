/// @description Insert description here
// You can write your code in this editor


if (hope <= 0){
	instance_destroy();
}

if (canattack == true) {
	//Walking
	if(keyboard_check(vk_up) and keyboard_check(vk_right) and (!instance_place(x+25,y-25,obj_block))) {
		// Walk up and right
		//sprite_index = spr_player_walk;
		x += spd;
		y -= spd;
		image_xscale = 1;
	}else if(keyboard_check(vk_up) and keyboard_check(vk_left) and (!instance_place(x-25,y-25,obj_block))) {
		// Walk up and left
		//sprite_index = spr_player_walk;
		x -= spd;
		y -= spd;
		image_xscale = -1;
	}else if(keyboard_check(vk_down) and keyboard_check(vk_right) and (!instance_place(x+25,y+25,obj_block))) {
		// Walk down and right
		//sprite_index = spr_player_walk;
		x += spd;
		y += spd;
		image_xscale = 1;
	}else if(keyboard_check(vk_down) and keyboard_check(vk_left) and (!instance_place(x-25,y+25,obj_block))) {
		// Walk down and left
		//sprite_index = spr_player_walk;
		x -= spd;
		y += spd;
		image_xscale = -1;
	}else if (keyboard_check(vk_right) and (!instance_place(x+25,y,obj_block))) {
		// Walk right
		// sprite_index = spr_player_walk;
		x += spd;
		image_xscale = 1;
	}else if(keyboard_check(vk_left)and (!instance_place(x-25,y,obj_block))) {
		// Walk left
		//sprite_index = spr_player_walk;
		x -= spd;
		image_xscale = -1;
	}else if(keyboard_check(vk_up)and (!instance_place(x,y-25,obj_block))) {
		// Walk up
		//sprite_index = spr_player_walk;
		y -= spd;
		//image_xscale = -1;
	}else if(keyboard_check(vk_down)and (!instance_place(x,y+25,obj_block))) {
		// Walk down
		//sprite_index = spr_player_walk;
		y += spd;
		//image_xscale = -1;
	}else {
		sprite_index = spr_player;
		//image_speed = 10;
	}
		
	/*
	//Sprinting
	if(keyboard_check(vk_shift)){
		
		if (keyboard_check(vk_right) and (!instance_place(x+100,y,obj_block))) {
			sprite_index = spr_player_run;
			x += sprint;
			image_xscale = 1;
			
			add = current_time/2000;
			//image_speed = 20;
		}else if(keyboard_check(vk_left)and (!instance_place(x-100,y,obj_block))) {
			sprite_index = spr_player_run;
			x -= sprint;
			image_xscale = -1;
			
			add = current_time/2000;
			//image_speed = 20;
		}else {
			sprite_index = spr_player;
			//image_speed = 10;
		}
	}
	*/

	
	// Attacking
	if (keyboard_check_pressed(ord("Z"))) {
		player_attack_id = instance_create_layer(x, y, "Instances", obj_player_attack);
		canattack = false;
		alarm[1] = obj_player_attack.attackduration;
		// sprite_index = spr_player_twitch;
		// audio_play_sound(snd_cut, 900, false);
	}

}

else {
	hspeed = 0;
	vspeed = 0;
}

/*
// Cheats
if (keyboard_check_pressed(ord("A"))) {
	global.saved_otters = 4;
}
*/

// Game Restart
if (keyboard_check_pressed(ord("R"))){
	room_restart();
}

//checking if all music pages has been picked
if( global.pages_found== global.total_pages){
	room_goto(rm_win)
}
if( hope <= 0){
	room_goto(rm_lose)
}


