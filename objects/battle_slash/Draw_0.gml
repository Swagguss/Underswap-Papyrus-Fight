///@description draw
if (has_not_created_anims)
	{Anim_Create(self,"scale_x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,9*widthMod,-9*widthMod,duration)
	Anim_Create(self,"alpha",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,1,-1,duration)
	has_not_created_anims = false}
var color=make_color_rgb(255,0,255);
if(_type==1){
	color=make_color_rgb(20,169,255);
}else if(_type==2){
	color=make_color_rgb(255,160,64);
}
depth = DEPTH_BATTLE.BULLET_OUTSIDE_LOW;
image_alpha = alpha
image_blend = color
image_yscale = scale_y;
image_xscale = scale_x;
draw_self()