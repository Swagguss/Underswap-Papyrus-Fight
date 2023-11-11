event_inherited();

if(dir==DIR.DOWN){
	image_angle=0;
}else if(dir==DIR.UP){
	image_angle=180;
}else if(dir==DIR.LEFT){
	image_angle=-90;
}else if(dir==DIR.RIGHT){
	image_angle=90;
}
	
//移动
if(Battle_GetState()==BATTLE_STATE.IN_TURN && moveable){
	var SPD=Player_GetSpdTotal()
	var SPD=(Input_IsHeld(INPUT.CANCEL) ? SPD/2 : SPD);
	repeat(SPD*10){
		if(dir==DIR.LEFT||dir==DIR.RIGHT){
			if(Input_IsHeld(INPUT.UP)){
				if(!position_meeting(x,y-sprite_height/2,block)){
					y-=0.1;
				}
			}
			if(Input_IsHeld(INPUT.DOWN)){
				if(!position_meeting(x,y+sprite_height/2,block)){
					y+=0.1;
				}
			}
		}
		if(dir==DIR.UP||dir==DIR.DOWN){
			if(Input_IsHeld(INPUT.LEFT)){
				if(!position_meeting(x-sprite_width/2,y,block)){
					x-=0.1;
				}
			}
			if(Input_IsHeld(INPUT.RIGHT)){
				if(!position_meeting(x+sprite_width/2,y,block)){
					x+=0.1;
				}
			}
		}
	}
	
	
	var xx=0;
	var yy=0;
	if(dir==DIR.DOWN){
		yy=sprite_height/2+0.1;
	}else if(dir==DIR.UP){
		yy=-sprite_height/2-0.1;
	}else if(dir==DIR.LEFT){
		xx=-sprite_height/2-0.1;
	}else if(dir==DIR.RIGHT){
		xx=sprite_height/2+0.1;
	}
	var a=position_meeting(x+xx,y+yy,block);
	var b=position_meeting(x+xx,y+yy,battle_platform);
	var input=-1;
	if(dir==DIR.DOWN){
		input=INPUT.UP;
	}else if(dir==DIR.UP){
		input=INPUT.DOWN;
	}else if(dir==DIR.LEFT){
		input=INPUT.RIGHT;
	}else if(dir==DIR.RIGHT){
		input=INPUT.LEFT;
	}
	
	if ((a||b)&&move>=0){
		var fx=0;
		var fy=0;
		if(dir==DIR.DOWN){
			fy=sprite_height/2;
		}else if(dir==DIR.UP){
			fy=-sprite_height/2;
		}else if(dir==DIR.LEFT){
			fx=-sprite_height/2;
		}else if(dir==DIR.RIGHT){
			fx=sprite_height/2;
		}
		while(position_meeting(x+fx,y+fy,block)||position_meeting(x+fx,y+fy,battle_platform)){
			var mx=0;
			var my=0;
			if(dir==DIR.DOWN){
				my=-0.1;
			}else if(dir==DIR.UP){
				my=0.1;
			}else if(dir==DIR.LEFT){
				mx=0.1;
			}else if(dir==DIR.RIGHT){
				mx=-0.1;
			}
			x+=mx
			y+=my;
		}
		
		if(position_meeting(x+xx,y+yy,block)||position_meeting(x+xx,y+yy,battle_platform)){
			move=0;
			if(impact){
				impact=false;
				audio_play_sound(snd_impact,0,false);
				Camera_Shake(8,8,1,1,true,true);
			}
			if(position_meeting(x+xx,y+yy,battle_platform)){
				var cx=0;
				var cy=0;
				if(dir==DIR.DOWN){
					cy=sprite_height/2+1;
				}else if(dir==DIR.UP){
					cy=-sprite_height/2-1;
				}else if(dir==DIR.LEFT){
					cx=-sprite_height/2-1;
				}else if(dir==DIR.RIGHT){
					cx=sprite_height/2+1;
				}
				var inst=instance_position(x+cx,y+cy,battle_platform);
				if(instance_exists(inst)){
					if(inst.sticky){
						x+=inst.x-inst.xprevious;
					}
				}
			}
			if(Input_IsHeld(input)){
				move=(-_speed_jump);
			}
		}
	}else if(move < 0){
		move=(move+_gravity_jump);
		if (!Input_IsHeld(input)){
			move=0;
		}
		if (move>0){
			move=0;
		}else if(position_meeting(x-xx,y-yy,block)){
			move=0;
		}
	}else if(move<0.05){
		move+=0.01;
	}else if(move<_gravity_fall_max){
		move+=_gravity_fall;
	}
	repeat (abs(move)*10){
		var m;
		var xx=0;
		var yy=0;
		if(dir==DIR.DOWN){
			yy=(sprite_height/2)*sign(move);
		}else if(dir==DIR.UP){
			yy=-(sprite_height/2)*sign(move);
		}else if(dir==DIR.LEFT){
			xx=-(sprite_width/2)*sign(move);
		}else if(dir==DIR.RIGHT){
			xx=(sprite_width/2)*sign(move);
		}
		if (!position_meeting(x+xx,y+yy,block)){
			m=!((move > 0) && position_meeting(x+xx,y+yy,battle_platform));
		}else{
			m=false;
		}
		if(m){
			var xx=0;
			var yy=0;
			if(dir==DIR.DOWN){
				yy=0.1*sign(move);
			}else if(dir==DIR.UP){
				yy=-0.1*sign(move);
			}else if(dir==DIR.LEFT){
				xx=-0.1*sign(move);
			}else if(dir==DIR.RIGHT){
				xx=0.1*sign(move);
			}
			x+=xx;
			y+=yy;
		}
	}
	
	if(place_meeting(x,y,battle_platform_bounce)){
		if(!_platform_bounce_met){
			_platform_bounce_met=true;
			if(dir==DIR.UP){
				dir=DIR.DOWN;
			}else if(dir==DIR.DOWN){
				dir=DIR.UP;
			}else if(dir==DIR.LEFT){
				dir=DIR.RIGHT;
			}else if(dir==DIR.RIGHT){
				dir=DIR.LEFT;
			}
			move=0;
		}
	}else{
		if(_platform_bounce_met){
			_platform_bounce_met=false;
		}
	}
}