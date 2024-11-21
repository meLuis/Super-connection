draw_text(0,0,hp)


/*
//Room fade in and fade out
if rchange=1{

if rt<10{
draw_sprite_stretched_ext(sBlack,0,0,0,1024,896,c_black,0.5)
}

if rt>=10 && rt<=20{
draw_sprite_stretched_ext(sBlack,0,0,0,1024,896,c_black,1)
}

if rt>20{
draw_sprite_stretched_ext(sBlack,0,0,0,1024,896,c_black,0.5)
}

}


//Health bar
draw_sprite_stretched(sHealthslider,0,16,16,hp*8,32)
draw_sprite_stretched(sHealthbar,(maxhp/5)-2,16,16,256,32)

//Rocket bar
if r=1{
	draw_sprite_stretched(sRocketslider,0,20,64,rammo*8,32)
draw_sprite_stretched(sRocketbar,(rmax/5)-1,16,64,256,32)
}

//Current weapon
if weapon!=-1{
	draw_sprite_stretched(sWeapon,0,16,112,128,96)
	draw_sprite_stretched(display,0,48,128,64,64)
}
