function Player_HurtKr() {
	var _damage = 0.4;
    audio_stop_sound(snd_hurt);
    audio_play_sound(snd_hurt, 1, false);
    Player_Hurt(_damage);
    global.kr += _damage;
}
