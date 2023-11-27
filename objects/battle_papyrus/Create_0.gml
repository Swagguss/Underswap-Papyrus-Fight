enum PAPYRUS_STATES {
	IDLE=0,
	DODGE=1
}

audio_stop_sound(bgm_menu)

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

turnAttackArray = [battle_turn_pap_8,battle_turn_pap_2, battle_turn_pap_3, battle_turn_pap_4,battle_turn_pap_5, battle_turn_pap_6, battle_turn_pap_7, battle_turn_pap_8];

epic_mode = false

_state = PAPYRUS_STATES.IDLE