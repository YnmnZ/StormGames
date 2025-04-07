// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_name_gen(){
	var adj = ["Final", "Dark", "Super", "Endless", "Cyper", "Angry", "Cute", "Fluffy", "Giant", "First", "Light", "Warm", "Cold", "Monster"]
	var noun = ["Fantasy", "Soul", "Plumber","Dungeon", "Cat", "Dog","Warrior","Magic","Hunter", "Son", "God", "Sword", "Axe", "Snow", "Water", "Fighter"]
	var follow = ["I", "II", "III", "Remastered", "Rise", "World", "Return", "Revenge", "Cat Game", "Portable", "Royal", "Prequel","GotY Edition"]
	
	var gen_name = ""
	if (irandom(1) == 1){
		gen_name += adj[irandom(array_length(adj)-1)]
	}
	else{
		gen_name += noun[irandom(array_length(noun)-1)]
	}
	
	gen_name += " "
	
	gen_name += noun[irandom(array_length(noun)-1)]
	
	if (irandom(1) == 1){
		gen_name += ": "
		gen_name += follow[irandom(array_length(follow)-1)]
	}
	
	return gen_name
}