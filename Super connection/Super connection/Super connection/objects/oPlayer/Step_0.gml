x=x+round(xsp)
y=y+round(ysp)

if keyboard_check(fire){
	sprite_index=Protagonista_2}else{

if place_meeting(x,y+1,oSolid){
	
sprite_index=Protagonista	
}else{
	
sprite_index=Protagonista_1	
}



}

if keyboard_check(map){
mp=1	
	
}else{
mp=0}

global.px=x
global.py=y

/*if keyboard_check(vk_enter){
room_restart()
room=a1r1
}*/


if ysp!=0{
	image_speed=0
}else{
	if xsp=0{
	image_speed=0
	image_index=0
	}else{
	image_speed=1
	}
}




	if rchange=1{
		if rt<30{
		rt++	
		}else{
		rt=0
		rchange=0
		}
		
	}

if rchange=0{




//Horizontal movement
{
	xsp= vel*((keyboard_check(right))-(keyboard_check(left)))

	if xsp!=0 && place_meeting(x+xsp,y,oSolid){
		xsp=0	
	}
	
	if xsp>0{
		image_xscale=1	
	}
	if xsp<0{
		image_xscale=-1	
	}
	
}

if canwall=1{

if place_meeting(x-8*((keyboard_check(right))-(keyboard_check(left))),y,oSolid){
	inwall=1
	wall=1
	}else{
	inwall=0
	/*if wall=1{
	wall=0	
	}*/
	}

if place_meeting(x+((keyboard_check(right))-(keyboard_check(left))),y,oSolid){
	hnwall=1
	wall=1
	}else{
	hnwall=0

	}
} else{
	inwall=0
	hnwall=0
}


//Vertical movement
{
	
	//Status of the jump button
	if place_meeting(x,y+1,oSolid) or (inwall=1 and jumping=0)or (hnwall=1 and jumping=0) {
	j=jt
	dt=0
	//wall=0
	
	if keyboard_check(up)&& j>0 && jbutton=0{ 
	audio_play_sound(Jump,0,0)
	jumping =1
	}
	
	if  keyboard_check_pressed(up){
	jbutton=0	
	}else{
	jbutton=1	
	}
	
	}
	//upwards jump
	if jumping=1{

	ysp=-4

	if !keyboard_check(up){
		jumping=0
		j=0
		
	}else{
	
		if j>0{	
			j--
		}else{
			jumping=0
		}
	}
	}else{
	//downwards acceleration
		if  !place_meeting(x,y+ysp,oSolid){
		dt++
		ysp=round( g*dt)
		if ysp>mxsp{
			ysp=mxsp
			}
		}
	}
	//vertical colission
	if place_meeting(x,y-1,oSolid){
	jumping=0	
	}

	if ysp!=0 && place_meeting(x,y+ysp,oSolid){
	
	ground = instance_place(x,y+mxsp,oSolid)
	
	if ground!=0{
		dis=distance_to_object(ground)
	}
	
	if dis!=0 &&  dis<ysp{
		
	ysp=dis
	}else{
	
	ysp=0
	dt=0
	}
	
	
	}
	
}

//Moves you if you are stuck in geometry
{
	if place_meeting(x,y,oSolid){
	stuck=1
		if place_meeting(x+1,y,oSolid){
			sh=1
			x=x-1
		}
		if place_meeting(x-1,y,oSolid){
			sh=-1
			x=x+1
		}
		if place_meeting(x,y+1,oSolid){
			sv=1
			y=y-1
		}
		if place_meeting(x,y-1,oSolid){
			sv=1
			y=y+1
		}
	
	}else{
	stuck=0	
	sh=0
	sv=0
	}
}

//Direction
{
	if keyboard_check(top){
		direction=90
		bulletx=0
		
		if crouch=0{
		bullety=-40
		}else{
		bullety=-28	
		}
	}else{

	if image_xscale=1{
		direction=0	
		bulletx=12
		bullety=-30
	}
	if image_xscale=-1{
		direction=180
		bulletx=-12
		bullety=-30
	}
	
	}
		if keyboard_check(down){
			
		crouch=1
		
		if place_meeting(x,y+1,oSolid) && crouch=1{
			if direction!=90{
		bulletx=12*image_xscale
		bullety=-12
			}
		}else{
			
		direction=270
		bulletx=0
		bullety=0	
		}
	}else{
	
		if !place_meeting(x,y-16,oSolid) {
			crouch=0	
		}
	}

	if crouch=1{
	if direction=0 or direction=180{
		bullety=-12
	}
		
	//sprite_index=sPlayercrouch	
	}else{
	//sprite_index=sPlayer	
	}

}

//Weapons
{

	if weapon =0{/*
		if blaster=0{
		weapon=-1
		}else{
		frate=15
		projectile=oBullet
		display=sBlasterp
		}*/
	}
	if weapon =1{
		if rocket=0{
		weapon=2
		}else{
		frate=20
		projectile=oRocket
		display=sRockett
		}
	}
	if weapon =2{
		if sword=0{
		weapon=3
		}else{
		frate=30
		projectile=oSword
		display=sSwordp
		}
	}
	if weapon =3{
		if ray=0{
		weapon=4
		}else{
		frate=15
		projectile=oRay
		display=sRayp
		}
	}
	
	
	if keyboard_check_released(select) && weapon!=-1{
	weapon=	weapon+1
	}
	if weapon>3{
	weapon=0	
	}
	
}

//Shooting
{
	if keyboard_check(fire) && ftimer = 0 && weapon!=-1{
	
	var bullet =instance_create_layer(x+bulletx,y-16,"Instances_1",projectile)
	
	bullet.direction = direction
	ftimer=frate
		
	}
	
	if ftimer>0{
	ftimer--	
	}
	
	if rammo=0{
	rocket=0	
	}
	
}
	
//Health
{
	
	if place_meeting(x,y,oDamages) && hurt=0{
	
	var touch=instance_place(x,y,oDamages)
	
	hp=hp-touch.damage
	audio_play_sound(hitHurt1,0,0)
	hurt=30
	
	
	}
	
	if hurt>0{
	//sprite_index=sPlayerh
	
	hurt--
	}
		
	if hurt<31 && hurt>20	{
		image_alpha=0
	}else{
		image_alpha=1
	//sprite_index=sPlayer	
	}
	if hp <= 0{
	x=cx
	y=cy
	hp = maxhp	
	}
	
if zone=0{
maxhp=1
}
if zone=1{
maxhp=2
}
if zone=2{
maxhp=3
}
if zone=3{
maxhp=4
}
	
}
	
}else{
	
xsp=0
ysp=0

}