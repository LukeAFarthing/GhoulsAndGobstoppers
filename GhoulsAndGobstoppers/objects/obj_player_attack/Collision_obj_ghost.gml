/// @description Insert description here
// You can write your code in this editor

if(other.canattack == true)
{
	other.canattack = false;
	other.frames_since_last_attack = 0;
	other.alarm[0] = other.waiting_period;
}
