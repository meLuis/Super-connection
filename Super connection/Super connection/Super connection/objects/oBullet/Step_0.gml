

if place_meeting(x,y,oSolid){

var shp=instance_place(x,y,oSolid)

shp.hp= shp.hp-damage

instance_destroy()

}

if place_meeting(x,y,oEnemy){

var enemy=instance_place(x,y,oEnemy)

enemy.hp= enemy.hp-damage

instance_destroy()

}

