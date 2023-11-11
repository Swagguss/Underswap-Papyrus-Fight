/// @description Insert description here
// You can write your code in this editor
Dialog_Add(Item_GetTextEat(_name)+Item_GetTextHeal(100));
Dialog_Start();
Player_Heal(100);

Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();