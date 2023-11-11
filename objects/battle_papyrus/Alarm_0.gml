/// @description The Epic Toggle

epic_mode = !epic_mode
if (epic_mode) audio_play_sound(snd_boom,0,false);
else audio_stop_sound(snd_boom);