/// @description Insert description here
_time = 0
hue = 0
size = 25
particleSystem = part_system_create(particles_bg)
var emitter = part_emitter_create(particleSystem);
// Assuming emitter is your particle emitter and x, y are the coordinates
part_emitter_region(particleSystem, emitter, 0, 640, 0, 480, ps_shape_rectangle, ps_distr_linear);