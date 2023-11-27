_time+=0.05
hue = (((sin(_time)+1)/2)*30)
x=0
y=480
part_system_drawit(particleSystem)
col = make_color_hsv(hue,255,255)
draw_sprite_ext(spr_battle_fade,0,x,y,1,(sin(_time)+size)/2.5,0,col,1)