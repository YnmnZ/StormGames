opening_type = 0
job_type_dict = ["Main Character", "Villain", "Playable Character", "NPC"]
job_type = job_type_dict[irandom(array_length(job_type_dict)-1)]
image_index = opening_type
image_speed = 0

h_speed = 12

position = -1

top_left_x = x - sprite_width / 2
top_left_y = y - sprite_height / 2
gen_x = top_left_x+8
gen_y = top_left_y+50

depth = -8

required_point = -1

gen_name = game_name_gen()

expire_timer = -1
e_timer_max = -1

state = "gen"