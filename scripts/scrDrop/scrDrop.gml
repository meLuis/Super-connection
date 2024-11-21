
function scrDrop(){

prob=round(random_range(1,4))

if prob=1{
	if oPlayer.hp<oPlayer.maxhp{
	instance_create_layer(x,y,"Instances_1",oHealhp)
	}
}

if prob=2{
	if oPlayer.rammo<oPlayer.rmax{
	instance_create_layer(x,y,"Instances_1",oRocketp)
	}
}
}