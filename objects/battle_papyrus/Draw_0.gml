/// @description Draw

siner++

// The code is quiet simple, really.
// The code:

if (!epic_mode) {
the_epic_value = map_value(-sin(siner/20)*4,rmin,rmax,tmin,tmax)
var leg_scale_y = the_epic_value
var bod_scale_y = map_value(the_epic_value,tmin,tmax,0.995,1.005)
var uniform_scale_factor = 2.0;

leg_scale_y *= uniform_scale_factor;
bod_scale_y = map_value(leg_scale_y, tmin, tmax, 0.995, 1.005) * uniform_scale_factor;

var xOffset = 3 * uniform_scale_factor;
var yOffset = 10 * uniform_scale_factor;
var yOffset_leg_scale = leg_scale_y * 50;
var head_offset = 55 * uniform_scale_factor;
var arm_offset = 224 * uniform_scale_factor;

// Update the drawing functions
var leg = draw_sprite_ext(legs,
						  0,
						  x + xOffset,
						  y + yOffset,
						  uniform_scale_factor, // X scale factor
						  leg_scale_y,          // Y scale factor
						  0,
						  c_white,
						  1
						 );
var left_arm_x = x - 6;
var left_arm_y = y * -bod_scale_y * 0.16 + arm_offset - yOffset_leg_scale - (75 * uniform_scale_factor);
var left_arm = draw_sprite_ext(leftarm,
							   0,
							   left_arm_x,
							   left_arm_y,
							   uniform_scale_factor,
							   bod_scale_y, // Assuming you want to scale X the same as Y
							   -sin(siner/20)*-1,
							   c_white,
							   1
							  );
var bod = draw_sprite_ext(body,
						  0,
						  x + xOffset,
						  y + (24 * uniform_scale_factor) - yOffset_leg_scale,
						  uniform_scale_factor,
						  bod_scale_y,
						  0,
						  c_white,
						  1
						 );
var head_y = y - head_offset + sin((siner-4)/20)*5 * uniform_scale_factor - 20;
var head = draw_sprite_ext(papyFaceNorm,
						   0,
						   x + xOffset,
						   head_y,
						   uniform_scale_factor,
						   uniform_scale_factor,
						   0,
						   c_white,
						   1
						  );
var right_arm_x = x + (11 * uniform_scale_factor);
var right_arm_y = y * -bod_scale_y * 0.18 + arm_offset - yOffset_leg_scale - (70 * uniform_scale_factor);
var right_arm = draw_sprite_ext(_state == PAPYRUS_STATES.DODGE ? shrug : rightarmrest,
								0,
								right_arm_x,
								right_arm_y,
								uniform_scale_factor,
								bod_scale_y,
								-sin(siner/20)*2,
								c_white,
								1
							   );
} else {
var the_epic_body = draw_sprite_ext(trol,0,x,y,0.2,0.2,0,c_white,1);
}