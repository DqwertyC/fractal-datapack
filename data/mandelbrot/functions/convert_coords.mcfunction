scoreboard players operation @s dif_x = @s pos_x
scoreboard players operation @s dif_z = @s pos_z

scoreboard players operation @s dif_x -= @e[tag=mandel_orig,sort=nearest,limit=1] pos_x
scoreboard players operation @s dif_z -= @e[tag=mandel_orig,sort=nearest,limit=1] pos_z

#Calculate the real component

scoreboard players operation @s helper_a = @s dif_x
scoreboard players operation @s helper_b = @s dif_z

scoreboard players operation @s helper_a *= @e[tag=mandel_unit,sort=nearest,limit=1] dif_x
scoreboard players operation @s helper_b *= @e[tag=mandel_unit,sort=nearest,limit=1] dif_z

scoreboard players operation @s x_init = @s helper_a
scoreboard players operation @s x_init += @s helper_b

#Calculate the imaginary component

scoreboard players operation @s helper_a = @s dif_z
scoreboard players operation @s helper_b = @s dif_x

scoreboard players operation @s helper_a *= @e[tag=mandel_unit,sort=nearest,limit=1] dif_x
scoreboard players operation @s helper_b *= @e[tag=mandel_unit,sort=nearest,limit=1] dif_z

scoreboard players operation @s z_init = @s helper_a
scoreboard players operation @s z_init -= @s helper_b

#Scale the components

scoreboard players set @s scale 1000
scoreboard players operation @s x_init *= scale
scoreboard players operation @s z_init *= scale

scoreboard players operation @s x_init /= @e[tag=mandel_unit,sort=nearest,limit=1] r_sq
scoreboard players operation @s z_init /= @e[tag=mandel_unit,sort=nearest,limit=1] r_sq

