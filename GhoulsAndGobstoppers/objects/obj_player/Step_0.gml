/// @description Insert description here
// You can write your code in this editor


if (hope <= 0){
	instance_destroy();
}

if (canattack == true) {
	//image_speed = 0;
	//Walking
	if(keyboard_check(vk_up) and keyboard_check(vk_right) and (!instance_place(x+25,y-25,obj_block))) {
		// Walk up and right
		sprite_index = spr_player_walk_back;
		x += spd;
		y -= spd;
		//image_xscale = 1;
		//image_speed = 7;
	}else if(keyboard_check(vk_up) and keyboard_check(vk_left) and (!instance_place(x-25,y-25,obj_block))) {
		// Walk up and left
		sprite_index = spr_player_walk_back;
		x -= spd;
		y -= spd;
		//image_xscale = -1;
		//image_speed = 7;
	}else if(keyboard_check(vk_down) and keyboard_check(vk_right) and (!instance_place(x+25,y+25,obj_block))) {
		// Walk down and right
		sprite_index = spr_player_walk;
		x += spd;
		y += spd;
		image_xscale = 1;
		//image_speed = 7;
	}else if(keyboard_check(vk_down) and keyboard_check(vk_left) and (!instance_place(x-25,y+25,obj_block))) {
		// Walk down and left
		sprite_index = spr_player_walk;
		x -= spd;
		y += spd;
		image_xscale = -1;
		//image_speed = 7;
	}else if (keyboard_check(vk_right) and (!instance_place(x+25,y,obj_block))) {
		// Walk right
		sprite_index = spr_player_walk;
		x += spd;
		image_xscale = 1;
		//image_speed = 7;
	}else if(keyboard_check(vk_left)and (!instance_place(x-25,y,obj_block))) {
		// Walk left
		sprite_index = spr_player_walk;
		x -= spd;
		image_xscale = -1;
		//image_speed = 7;
	}else if(keyboard_check(vk_up)and (!instance_place(x,y-25,obj_block))) {
		// Walk up
		sprite_index = spr_player_walk_back;
		y -= spd;
		//image_xscale = -1;
		//image_speed = 7;
	}else if(keyboard_check(vk_down)and (!instance_place(x,y+25,obj_block))) {
		// Walk down
		sprite_index = spr_player_walk;
		y += spd;
		//image_xscale = -1;
		//image_speed = 7;
	}else {
		sprite_index = spr_player;
		//image_speed = 0;
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

	if(global.hasguitar) {
		// Attacking
		if (keyboard_check_pressed(ord("Z"))) {
			player_attack_id = instance_create_layer(x, y, "Instances", obj_player_attack);
			canattack = false;
			alarm[1] = obj_player_attack.attackduration;
			sprite_index = spr_player_strum_2;
			audio_play_sound(snd_player_strum_2, 900, false);
		}
	
		// Changing time
		if (keyboard_check_pressed(ord("A")) && !instance_place(x,y,obj_guitar_jammer)) {
			if(global.nighttime) {
				global.nighttime = false;
				canattack = false;
				alarm[2] = 60;
				global.a = 0.0;
			}
			else {
				global.nighttime = true;
				canattack = false;
				alarm[2] = 60;
				time_source = time_source_create(time_source_game,0.05,time_source_units_seconds,function(){
				global.a += 0.01;
				},[],-1);
				time_source_start(time_source);
			}
			
			sprite_index = spr_player_strum_1;
			audio_play_sound(snd_player_strum_1, 900, false);;
			//audio_sound_gain(snd, 500, 0);
			//audio_sound_gain(snd, -100, 5000);
			
		}
		//obj_ghost.visible = true
	}
	

}

else {
	hspeed = 0;
	vspeed = 0;
}


// Cheats

//Restore HP
if (keyboard_check_pressed(ord("X"))) {
	hope += 100
}

//Speed Boost
if (keyboard_check_pressed(ord("C"))) {
	spd += 3
}

//Insta Win
if (keyboard_check_pressed(ord("V"))) {
	global.pages_found = global.total_pages
}


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

if(global.a > 0.5){
	time_source_destroy(time_source);
}




