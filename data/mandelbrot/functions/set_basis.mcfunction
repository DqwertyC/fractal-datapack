kill @e[tag=flood_old]

scoreboard players operation @s dif_x = @s pos_x
scoreboard players operation @s dif_z = @s pos_z

scoreboard players operation @s dif_x -= @e[tag=mandel_orig,sort=nearest,limit=1] pos_x
scoreboard players operation @s dif_z -= @e[tag=mandel_orig,sort=nearest,limit=1] pos_z

scoreboard players operation @s x_sq = @s dif_x
scoreboard players operation @s z_sq = @s dif_z

scoreboard players operation @s x_sq *= @s x_sq
scoreboard players operation @s z_sq *= @s z_sq

scoreboard players operation @s r_sq = @s x_sq
scoreboard players operation @s r_sq += @s z_sq

scoreboard players set @s scale 100
scoreboard players operation @s r_sq /= @s scale

execute as @e[tag=mandel_orig] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["flood_new","flood_nn","flood_ee","flood_ss","flood_ww","flood_ne","flood_se","flood_sw","flood_nw"]}