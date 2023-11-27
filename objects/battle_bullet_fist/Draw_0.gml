///@desc Draw
surface_set_target(Battle_GetBoardSurface());{
	draw_self();
draw_sprite_ext(spr_bullet_fist_arm,
				0,
				x,
				y,
				distance_to_point(startX,startY)/spr_bullet_fist_arm.sprite_width,
				1,
				_ang,
				_color,
				1)
}surface_reset_target();