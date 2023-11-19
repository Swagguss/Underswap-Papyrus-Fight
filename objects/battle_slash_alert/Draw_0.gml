///@description Draw

var color=make_color_rgb(255,0,255);
if(type==1){
	color=make_color_rgb(20,169,255);
}else if(type==2){
	color=make_color_rgb(255,160,64);
}
depth = DEPTH_BATTLE.BULLET_OUTSIDE_LOW;
if (drawing)
	draw_sprite_ext(spr_slashwarn,image_index,x,y,(scale_x*image_xscale*widthMod),(scale_y*image_yscale),-angle,color,image_alpha);