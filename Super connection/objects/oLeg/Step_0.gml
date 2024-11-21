/*x=oPlayer.x 
y=oPlayer.y 


image_xscale=oPlayer.image_xscale

image_alpha=oPlayer.image_alpha

if oPlayer.ysp!=0{
	
sprite_index=sLegw
image_index=0
	
}else{

if  place_meeting(x,y+1,oSolid) {

if oPlayer.xsp=0{

sprite_index=sLeg	
image_speed=0	
}else{
sprite_index=sLegw		
//image_speed=1	
image_index=oPlayer.image_index
}
	
}
}