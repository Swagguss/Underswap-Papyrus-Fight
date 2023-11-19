/// @description step
// You can write your code in this editor
duration -= 1
if(duration <= 0 && drawing){
	audio_play_sound(snd_slash,0,0);
	var slashObj = instance_create_depth(x,y,DEPTH_BATTLE.BG,battle_slash);
	slashObj.angle = angle;
	slashObj.type = type;
	slashObj.widthMod = widthMod;
	//Anim_Create(_beam,"image_yscale",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,_beam.image_yscale,-_beam.image_yscale,60)
	instance_destroy();
	drawing = false
}