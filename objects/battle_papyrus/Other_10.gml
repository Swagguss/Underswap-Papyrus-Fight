/// @description Init
event_inherited();
_compliment = 0;
_insult = 0;
Battle_SetEnemyName(_enemy_slot,"* Papyrus");

//ACTS
//ACT Number
Battle_SetEnemyActionNumber(_enemy_slot,1); //First Slot 1 - 2 - 3 - 4
Battle_SetEnemyActionNumber(_enemy_slot,2); //Second Slot
Battle_SetEnemyActionNumber(_enemy_slot,3); //Third Slot

//ACT Name
Battle_SetEnemyActionName(_enemy_slot,0,"* Check"); //Name of the Slot 0 - 1 - 2 - 3
Battle_SetEnemyActionName(_enemy_slot,1,"* You Stinky"); //Name of the Slot
Battle_SetEnemyActionName(_enemy_slot,2,"* You Smell Nice"); //Name of the Slot

Item_Add(item_tml)
Item_SetWeapon(item_stick)
Player_SetAtkItem(1);
Player_SetLv(19)
Player_SetHpMax(92)
Player_SetHp(92)

Battle_SetEnemyDEF(_enemy_slot,-10);
Battle_SetEnemySpareable(_enemy_slot,0)

_hp_max=1;
_hp=1;
