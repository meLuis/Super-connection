/*//#region Power_up_grab
if (abs(x - other.x) && keyboard_check(vk_enter))
{
	with (other)
	{
		instance_destroy();
	}
	
	global.MESSAGE = 1;
	
}