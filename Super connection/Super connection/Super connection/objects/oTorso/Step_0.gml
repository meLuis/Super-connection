x=oPlayer.x 
y=oPlayer.y 
image_xscale=oPlayer.image_xscale
image_alpha=oPlayer.image_alpha

if oPlayer.ysp!=0{
	image_speed=0
}else{
	if oPlayer.xsp=0{
	image_speed=0
	image_index=0
	}else{
	image_speed=1
	}
}


