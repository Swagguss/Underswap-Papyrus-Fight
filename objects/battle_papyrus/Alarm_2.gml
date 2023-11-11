/// @description Insert description here
// You can write your code in this editor

global.bgm = BGM_Play(0,bgm_papfightsong,1);
audio_sound_gain(global.bgm,0,0);
audio_sound_gain(global.bgm,1,1000);
alarm[0]=1