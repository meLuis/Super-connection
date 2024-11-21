
if oPlayer.zone !=3{
song=1

}else{
	
song=0	
}

if songs=0{
audio_play_sound(BeepBox_Song,0,song)
songs=1
}else{
	
	
}

/*if keyboard_check_pressed(ord("P"))
    {
    paused = !paused;
    if paused == false
        {
      instance_activate_layer("Instances")
	instance_activate_layer("Instances_1")
	instance_activate_layer("Instances_2")
        }
    }
if paused == true
    {
	instance_deactivate_layer("Instances")
	instance_deactivate_layer("Instances_1")
	instance_deactivate_layer("Instances_2")
 
	}


