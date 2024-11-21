if hp<1{

scrDrop()
instance_create_layer(x,y+16,"Instances_1",oKey_2)

instance_destroy()
	
}

if falling=0{
	
	
if place_meeting(x+speed,y,oSolid) or !place_meeting(x+speed*32,y+1,oSolid){
	speed=speed*(-1)
	image_xscale=-image_xscale
}

}

/*if hp < 1 {
    scrDrop()
    instance_destroy()
}

if falling == 0 {
    if collision_rectangle(x - 200, y - 60, x + 200, y + 100, oPlayer, 0, 0) {
        if oPlayer.x > x {
            speed = 0.5;
            if !place_meeting(x + speed, y, oSolid) {
                x += speed;
            }
            else {
                speed = 0;
            }
        }
        else {
            speed = -0.5;
            if !place_meeting(x + speed, y, oSolid) {
                x += speed;
            }
            else {
                speed = 0;
            }
        }

        if place_meeting(x, y, oPlayer) {
            instance_destroy();
        }
    }
    else {
        speed = 0;
    }

    if !place_meeting(x, y + 1, oSolid) {
        falling = 1;
    }
}

if falling == 1 {
    direction = 0;
    speed = 0;
    y += 1;
    if place_meeting(x, y + 1, oSolid) {
        speed = 0.25;
        falling = 0;
    }
}


if oPlayer.x>x{
	
	image_xscale=-1
}else{
	
	image_xscale=1
}*/
	
