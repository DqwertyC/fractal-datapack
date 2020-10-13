
#Put a limit here to limit the number of new entities appearing at once
tag @e[tag=flood_new,sort=nearest,limit=128] add flood_active
tag @e[tag=flood_active] remove flood_new

execute as @e[tag=flood_active] run scoreboard players set @s max_iter 18
execute as @e[tag=flood_active] at @s run function mandelbrot:escape_outer
tag @e[tag=flood_active,scores={iterations=1}] add flood_old
tag @e[tag=flood_old] remove flood_active

execute as @e[tag=flood_active,tag=flood_nn] at @s run summon minecraft:armor_stand ~00 ~ ~-1 {Invisible:1b,Marker:1b,Tags:["flood_new","flood_nn"]}
execute as @e[tag=flood_active,tag=flood_ne] at @s run summon minecraft:armor_stand ~01 ~ ~-1 {Invisible:1b,Marker:1b,Tags:["flood_new","flood_nn","flood_ne","flood_ee"]}
execute as @e[tag=flood_active,tag=flood_ee] at @s run summon minecraft:armor_stand ~01 ~ ~00 {Invisible:1b,Marker:1b,Tags:["flood_new","flood_ee"]}
execute as @e[tag=flood_active,tag=flood_se] at @s run summon minecraft:armor_stand ~01 ~ ~01 {Invisible:1b,Marker:1b,Tags:["flood_new","flood_ss","flood_se","flood_ee"]}

execute as @e[tag=flood_active,tag=flood_ss] at @s run summon minecraft:armor_stand ~00 ~ ~01 {Invisible:1b,Marker:1b,Tags:["flood_new","flood_ss"]}
execute as @e[tag=flood_active,tag=flood_sw] at @s run summon minecraft:armor_stand ~-1 ~ ~01 {Invisible:1b,Marker:1b,Tags:["flood_new","flood_ss","flood_sw","flood_ww"]}
execute as @e[tag=flood_active,tag=flood_ww] at @s run summon minecraft:armor_stand ~-1 ~ ~00 {Invisible:1b,Marker:1b,Tags:["flood_new","flood_ww"]}
execute as @e[tag=flood_active,tag=flood_nw] at @s run summon minecraft:armor_stand ~-1 ~ ~-1 {Invisible:1b,Marker:1b,Tags:["flood_new","flood_nn","flood_nw","flood_ww"]}

tag @e[tag=flood_active] add flood_old
kill @e[tag=flood_old]