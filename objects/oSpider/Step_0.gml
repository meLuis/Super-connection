if hp<1{

scrDrop()
instance_create_layer(x,y+16,"Instances_1",oKey_1)

instance_destroy()
	
}  

if falling=0{
	
	
if place_meeting(x+speed,y,oSolid) or !place_meeting(x+speed*32,y+1,oSolid){
	speed=speed*(-1)
	image_xscale=-image_xscale
}

}



/*if hp<1{

instance_destroy()
	
}

x=x+xsp

if collision_rectangle(x-128,y,x+128,y-128,oPlayer,0,0){

active=1	
	
}

if active =1{



if place_meeting(x+speed,y,oSolid) or !place_meeting(x+speed*32,y+1,oSolid){
	speed=speed*3*(-1)
	image_xscale=-image_xscale
}


}