if(Player_GetHp()+global.kr<=0){
	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_X,x-camera.x);
	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_Y,y-camera.y);
	room_goto(room_gameover);
	BGM_Stop(0);
}