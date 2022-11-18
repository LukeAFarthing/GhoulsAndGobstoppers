/// @description Insert description here
// You can write your code in this editor


if(canattack = true)
{
	obj_player.hope -= 15;
	canattack = false;
	frames_since_last_attack = 0;
	alarm[0] = waiting_period;
}


