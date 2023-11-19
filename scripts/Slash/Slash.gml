///@arg x
///@arg y
///@arg angle
///@arg color
///@arg duration
function Slash() {
	var xx = argument[0];
	var yy = argument[1];
	var angle = argument[2];
	var color = argument[3];
	var duration = argument[4];
	var widthMod = 1
	if (argument_count > 5) {
		widthMod = argument[5];
	}

	var slashObj = instance_create_depth(xx,yy,DEPTH_BATTLE.BG,battle_slash_alert);
	slashObj.angle = angle;
	slashObj.type = color;
	slashObj.duration = duration;
	slashObj.widthMod = widthMod;
	audio_play_sound(snd_slash_warn,0,0)
	return slashObj;
}