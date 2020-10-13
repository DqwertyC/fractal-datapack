scoreboard players operation @s dif_x = @e[tag=target,limit=1] pos_x
scoreboard players operation @s dif_y = @e[tag=target,limit=1] pos_y
scoreboard players operation @s dif_z = @e[tag=target,limit=1] pos_z

scoreboard players operation @s dif_x -= @s pos_x
scoreboard players operation @s dif_y -= @s pos_y
scoreboard players operation @s dif_z -= @s pos_z

scoreboard players set @s scale 2

scoreboard players operation @s dif_x /= @s scale
scoreboard players operation @s dif_y /= @s scale
scoreboard players operation @s dif_z /= @s scale

scoreboard players operation @s pos_x += @s dif_x
scoreboard players operation @s pos_y += @s dif_y
scoreboard players operation @s pos_z += @s dif_z

execute store result entity @s Pos[0] double 0.1 run scoreboard players get @s pos_x
execute store result entity @s Pos[1] double 0.1 run scoreboard players get @s pos_y
execute store result entity @s Pos[2] double 0.1 run scoreboard players get @s pos_z