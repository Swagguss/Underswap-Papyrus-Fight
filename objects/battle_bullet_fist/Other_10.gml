///@desc Soul Collision

//Hurt the player
Player_Hurt(Player_CalculateDamage(15));

//Let the soul show the hurt animation
Battle_CallSoulEventHurt();

instance_destroy();