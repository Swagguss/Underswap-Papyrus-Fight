///@desc Turn Preparation Start

//Prepare the attack
//---------------------
//random_turn = irandom_range(1,3)
//if random_turn = 1{instance_create_depth(0,0,0,battle_turn_simple);}
if (!is_undefined(turnAttackArray[_turn]))
	instance_create_depth(0,0,0,turnAttackArray[_turn]);
else
	instance_create_depth(0,0,0,battle_turn_gb);


//Say something
//---------------------
switch(_turn){
	case 0:
	var inst=instance_create_depth(x+100,y-150,0,battle_dialog_enemy);
	inst.text="Hey guys papyrus undertale here";
	inst.template=0;
	break;
	
	case 1:
	var inst=instance_create_depth(x+100,y-150,0,battle_dialog_enemy);
inst.template=0;
inst.text="Funny text placeholder{pause}";
	alarm[0] = 1;
	alarm[1] = 120;
	break;
	
	case 2:
	var inst=instance_create_depth(x+100,y-150,0,battle_dialog_enemy);
	inst.text="Turn 2";
	inst.template=0;
	break;
	
	default:
	var inst=instance_create_depth(x+100,y-150,0,battle_dialog_enemy);
	inst.text="Lost Count LOL";
	inst.template=0;
	break;
}
