state = "initial"
button_x = 800
button_y = 640
job_x = 1175
job_y = 156
job_spacing = 32+128
character_stop_x = -50
character_stop_y = 25
character_speed = 5

text_alpha = 0
alpha_speed = 0.02

depth = -9

ask = false

current_character = noone

job_array = []

difficulty = -1
job_number = [2,2,2,3,3]

player_point = 0
player_chance = 5

button_array = [0,1,2]
temp_counter = -1
win_condition = -1

draw_set_font(fnt_defaultText)

randomize()