/// @description Insert description here
// You can write your code in this editor
audio_stop_sound(snd_controls_theme)
audio_stop_sound(snd_win_theme)
if (!audio_is_playing(snd_menu_theme)){
	audio_play_sound(snd_menu_theme, 1000, true);
}