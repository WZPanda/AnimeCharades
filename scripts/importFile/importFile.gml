// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function importFile(fileName){

var file = file_text_open_read(fileName)
var array = []
var line
var i = 0
while true
{
	line = file_text_read_string(file);
	if line = "" {break}
    array[i] = line
	i++
    file_text_readln(file);
}
file_text_close(file);


return array
}