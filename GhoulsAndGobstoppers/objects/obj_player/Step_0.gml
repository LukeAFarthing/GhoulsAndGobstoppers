/// @description Insert description here
// You can write your code in this editor


if (hp <= 0){
	instance_destroy();
}

if (canattack == true) {
	//Walking
	if (keyboard_check(vk_right) and (!instance_place(x+25,y,obj_block))) {
		// sprite_index = spr_player_walk;
		x += hsp;
		image_xscale = 1;
	}else if(keyboard_check(vk_left)and (!instance_place(x-25,y,obj_block))) {
		//sprite_index = spr_player_walk;
		x -= hsp;
		image_xscale = -1;
	}else if(keyboard_check(vk_up)and (!instance_place(x,y-25,obj_block))) {
		//sprite_index = spr_player_walk;
		y -= hsp;
		//image_xscale = -1;
	}else if(keyboard_check(vk_down)and (!instance_place(x,y+25,obj_block))) {
		//sprite_index = spr_player_walk;
		y += hsp;
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

	/*
	// Attacking
	if (keyboard_check_pressed(ord("Z"))) {
		instance_create_layer(x + (550 * image_xscale), y, "Instances", obj_player_attack)
		canattack = false;
		alarm[1] = obj_player_attack.attackduration;
		sprite_index = spr_player_twitch;
		audio_play_sound(snd_cut, 900, false);
	}
	*/
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

