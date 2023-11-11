enum PAPYRUS_STATES {
	IDLE=0,
	DODGE=1
}

depth=DEPTH_BATTLE.ENEMY;
global.kr = 0
kr_timer = 0
_enemy_slot=-1;
siner = 0; // sin timer
sin_mult = 0.5;

rmin = -1; // sin lower bound
rmax = 1; // sin upper bound
tmin = 0.98; // minimum body y scale
tmax = 1.02; // maximum body y scale

scale = 1.5

dodges = 10
y = y - 15

turnAttackArray = [battle_turn_pap_1,battle_turn_pap_2, battle_turn_pap_3, battle_turn_pap_4];

epic_mode = false

_state = PAPYRUS_STATES.IDLE