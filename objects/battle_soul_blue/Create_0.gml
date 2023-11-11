event_inherited();

moveable=true;
dir=DIR.DOWN;
move=0;
impact=false;
_gravity_jump=0.1;
_speed_jump=4;
_gravity_fall=0.15;
_gravity_fall_max=5;

_platform_bounce_met=false;

instance_create_depth(battle_soul.x,battle_soul.y,0,battle_soul_blue_effect)