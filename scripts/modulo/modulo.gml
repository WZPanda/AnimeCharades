// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function modulo(val, md){
if(md < 0) Q = ceil(val/md);
else Q = floor(val/md);
return val - (Q * md);
}