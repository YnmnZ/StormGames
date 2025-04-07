// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function character_name_gen(){
	var f_name = ["Cloud","Jason","Ben","Jen","Rei","Laura","John","Sherlock","Alex","Phoenix","Jianguo","Yanmin","David"]
	var alias = ["The Great","God Slayer","The Wise","Monster","Warrior","The Saint","The Mage","Shadow"]
	
	var gen_name = ""
	
	gen_name += f_name[irandom(array_length(f_name)-1)]
	
	
	if (irandom(1) == 1){
		gen_name += " \""
		gen_name += alias[irandom(array_length(alias)-1)]
		gen_name += " \""
	}
	
	return gen_name
}