t++

if speed <6{
	
speed =2+ round (0.1*t)	
	
}




if place_meeting(x,y,oEnemy){

var enemy=instance_place(x,y,oEnemy)

enemy.hp= enemy.hp-damage

instance_destroy()

}


if place_meeting(x,y,oDoorm){

var enemyd=instance_place(x,y,oDoorm)

enemyd.mhp= enemyd.mhp-1

instance_destroy()

}

if place_meeting(x,y,oSolid){

var shp=instance_place(x,y,oSolid)

shp.hp= shp.hp-damage

instance_destroy()

}