// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_game(){
	
	var sfile = file_text_open_write("save.txt")
	file_text_write_real(sfile,oPlayer.hp)
	file_text_close(sfile)
}

function load_game(){
	
	if (file_exists("save.txt")){
		
		var sfile = file_text_open_read("save.txt")
		oPlayer.hp= file_text_read_real(sfile)
		file_text_close(sfile)
		
	}
	
}