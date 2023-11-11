if global.kr >= Player_GetHp() - 1
    global.kr = Player_GetHp() - 1 // This limit the KR to leave at least 1 HP when it's at its peak
// KR subtraction
if global.kr > 0
{
    kr_timer += 1 // Remember to define kr_timer in Create event of that object, initiate value is 0
    if kr_timer >= 60/(global.kr) // This subtract the kr and hp when the condition do be true
    {
        kr_timer = 0 // Reset the timer
        global.kr -= 1
        Player_SetHp(Player_GetHp() - 1) // Alternatively, you can just Player_Hurt(1) if the Player_Hurt function is not modified
    }
}