event_inherited();

//移动
if(Battle_GetState()==BATTLE_STATE.IN_TURN && moveable){
	var SPD=Player_GetSpdTotal()*1.25;
	var SPD=(Input_IsHeld(INPUT.CANCEL) ? SPD/2 : SPD);
	repeat(SPD*10){
		
		if (Input_IsPressed(INPUT.RIGHT)) _dir = 0;
		else if (Input_IsPressed(INPUT.DOWN)) _dir = 1;
		else if (Input_IsPressed(INPUT.LEFT)) _dir = 2;
		else if (Input_IsPressed(INPUT.UP)) _dir = 3;
		if(_dir == 3){
			if(!position_meeting(x,y-sprite_height/2,block)){
				y-=0.1;
			}
		}
		if(_dir == 1){
			if(!position_meeting(x,y+sprite_height/2,block)){
				y+=0.1;
			}
		}
		if(_dir == 2){
			if(!position_meeting(x-sprite_width/2,y,block)){
				x-=0.1;
			}
		}
		if(_dir == 0){
			if(!position_meeting(x+sprite_width/2,y,block)){
				x+=0.1;
			}
		}
	}
}