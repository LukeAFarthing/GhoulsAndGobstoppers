/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_space)){
	room_goto_previous()
} else if (keyboard_check_pressed(ord("R"))){
	room_goto(rm_menu)
}
