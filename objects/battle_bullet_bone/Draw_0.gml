/// @description Insert description here
// You can write your code in this editor
if(color == BONE.WHITE){
    blend = make_color_rgb(255,255,255);
}
if(color == BONE.BLUE){
    blend = make_color_rgb(20,196,255);
}
if(color == BONE.ORANGE){
    blend = make_color_rgb(248,148,29);
}

if(out = 0){
	depth = DEPTH_BATTLE.BULLET;
	surface_set_target(Battle_GetBoardSurface());{
		draw_sprite_ext(spr_bone_body,0,x,y,length/2,1,angle,blend,1);
		if(bottom = 1){
			draw_sprite_ext(spr_bone_head,0,x-lengthdir_x(length/2,angle),y+lengthdir_x(length/2,angle-90),1,1,angle+180,blend,1);
			draw_sprite_ext(spr_bone_head,1,x+lengthdir_x(length/2,angle),y-lengthdir_x(length/2,angle-90),1,1,angle+180,blend,1);
		}
		if(bottom = 0){
			draw_sprite_ext(spr_bone_head,0,x-lengthdir_x(length/2,angle),y+lengthdir_x(length/2,angle-90),1,1,angle+180,blend,1);
			draw_sprite_ext(spr_bone_bottom,1,x+lengthdir_x(length/2,angle),y-lengthdir_x(length/2,angle-90),1,1,angle+180,blend,1);
		}
		if(bottom = 2){
			draw_sprite_ext(spr_bone_bottom,0,x-lengthdir_x(length/2,angle),y+lengthdir_x(length/2,angle-90),1,1,angle+180,blend,1);
			draw_sprite_ext(spr_bone_head,1,x+lengthdir_x(length/2,angle),y-lengthdir_x(length/2,angle-90),1,1,angle+180,blend,1);
		}
	}surface_reset_target();
}
else{
	depth = DEPTH_BATTLE.BULLET_OUTSIDE_HIGH;
	draw_sprite_ext(spr_bone_body,0,x,y,length/2,1,angle,blend,1);
		if(bottom = 1){
			draw_sprite_ext(spr_bone_head,0,x-lengthdir_x(length/2,angle),y+lengthdir_x(length/2,angle-90),1,1,angle+180,blend,1);
			draw_sprite_ext(spr_bone_head,1,x+lengthdir_x(length/2,angle),y-lengthdir_x(length/2,angle-90),1,1,angle+180,blend,1);
		}
		if(bottom = 0){
			draw_sprite_ext(spr_bone_head,0,x-lengthdir_x(length/2,angle),y+lengthdir_x(length/2,angle-90),1,1,angle+180,blend,1);
			draw_sprite_ext(spr_bone_bottom,1,x+lengthdir_x(length/2,angle),y-lengthdir_x(length/2,angle-90),1,1,angle+180,blend,1);
		}
		if(bottom = 2){
			draw_sprite_ext(spr_bone_bottom,0,x-lengthdir_x(length/2,angle),y+lengthdir_x(length/2,angle-90),1,1,angle+180,blend,1);
			draw_sprite_ext(spr_bone_head,1,x+lengthdir_x(length/2,angle),y-lengthdir_x(length/2,angle-90),1,1,angle+180,blend,1);
		}
}

//draw_set_color(c_red)
//draw_line(x+lengthdir_x(2,angle+90)+lengthdir_x(length/2,angle),y+lengthdir_y(2,angle+90)+lengthdir_y(length/2,angle),x+lengthdir_x(2,angle+90)-lengthdir_x(length/2,angle),y+lengthdir_y(2,angle+90)-lengthdir_y(length/2,angle))
//draw_line(x-lengthdir_x(1,angle+90)+lengthdir_x(length/2,angle),y-lengthdir_y(1,angle+90)+lengthdir_y(length/2,angle),x-lengthdir_x(1,angle+90)-lengthdir_x(length/2,angle),y-lengthdir_y(1,angle+90)-lengthdir_y(length/2,angle))

if(collision_line(x+lengthdir_x(2,angle+90)+lengthdir_x(length/2,angle),y+lengthdir_y(2,angle+90)+lengthdir_y(length/2,angle),x+lengthdir_x(2,angle+90)-lengthdir_x(length/2,angle),y+lengthdir_y(2,angle+90)-lengthdir_y(length/2,angle),battle_soul,0,0)||collision_line(x-lengthdir_x(1,angle+90)+lengthdir_x(length/2,angle),y-lengthdir_y(1,angle+90)+lengthdir_y(length/2,angle),x-lengthdir_x(1,angle+90)-lengthdir_x(length/2,angle),y-lengthdir_y(1,angle+90)-lengthdir_y(length/2,angle),battle_soul,0,0)){
	Battle_CallSoulEventBulletCollision();
}