state = "gen"
group = 0
//0: human, 1: animal, 2: non-human-presenting robot, 3: human-presenting robot
special = false
disability_max = 3

characteristic = ds_map_create()
ds_map_add(characteristic,"eth","test")
ds_map_add(characteristic,"nation","test")
ds_map_add(characteristic,"gender","test")
ds_map_add(characteristic,"sex","test")
ds_map_add(characteristic,"dis",[])
ds_map_add(characteristic,"bt","test")
ds_map_add(characteristic,"age",-1)

mid_x = 0

char_dict = ds_map_create()

ds_map_add(char_dict,"eth",[["Noir",4],["Eastern",3],["Pales",0],["Non-Human",0]])

ds_map_add(char_dict,"nation",[["Eastern States",3],["The Great Continent",3],["Western Union",3],["Maya",1],["The United",0],["Empire",0],["Non-Human",0]])

ds_map_add(char_dict,"gender",[["Non-Binary",3],["Woman",3],["Man",0],["Non-Human",0]])

ds_map_add(char_dict,"sex",[["Not Heterosexual",4],["Heterosexual",0],["Robot",0]])

ds_map_add(char_dict,"dis",[["Autism",4],["Artificial Arm",4],["Missing Arm",4],["Artificial Eye",3],["Missing Eye",3],["Cancer",2],["Radiation",2],["Genetic Disease",2],["No Disability",0]])

ds_map_add(char_dict,"bt",[["Animal",5],["Stout",3],["Skinny",3],["Muscular (Woman)",3],["Ordinary",1],["Ordinary",1],["Slim & Curvy (Woman)",0],["Muscular (Man)",0],["Non-Human Robot",0]])

ds_map_add(char_dict,"btm",[["Animal",5],["Stout",3],["Skinny",3],["Ordinary",1],["Ordinary",1],["Muscular (Man)",0],["Non-Human Robot",0]])

ds_map_add(char_dict,"btw",[["Animal",5],["Stout",3],["Skinny",3],["Muscular (Woman)",3],["Ordinary",1],["Ordinary",1],["Slim & Curvy (Woman)",0],["Non-Human Robot",0]])

ranking = 0

h_speed = 0
stop_x = 0
end_x = 0

char_sprite = spr_muscleMan
eye_index = 0
arm_index = 0

image_speed = 0