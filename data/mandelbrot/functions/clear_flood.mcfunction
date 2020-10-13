#Put a limit here to limit the number of new entities appearing at once
tag @e[tag=cleaner_new,sort=nearest,limit=128] add cleaner_active
tag @e[tag=cleaner_active] remove cleaner_new

execute as @e[tag=cleaner_active] run scoreboard players set @s max_iter 2
execute as @e[tag=cleaner_active] at @s run function mandelbrot:escape_outer
tag @e[tag=cleaner_active,scores={iterations=1}] add cleaner_old
tag @e[tag=cleaner_old] remove cleaner_active

execute as @e[tag=cleaner_active,tag=cleaner_nn] at @s run summon minecraft:armor_stand ~000 ~ ~-16 {Invisible:1b,Marker:1b,Tags:["cleaner_new","cleaner_nn"]}
execute as @e[tag=cleaner_active,tag=cleaner_ne] at @s run summon minecraft:armor_stand ~016 ~ ~-16 {Invisible:1b,Marker:1b,Tags:["cleaner_new","cleaner_nn","cleaner_ne","cleaner_ee"]}
execute as @e[tag=cleaner_active,tag=cleaner_ee] at @s run summon minecraft:armor_stand ~016 ~ ~000 {Invisible:1b,Marker:1b,Tags:["cleaner_new","cleaner_ee"]}
execute as @e[tag=cleaner_active,tag=cleaner_se] at @s run summon minecraft:armor_stand ~016 ~ ~016 {Invisible:1b,Marker:1b,Tags:["cleaner_new","cleaner_ss","cleaner_se","cleaner_ee"]}

execute as @e[tag=cleaner_active,tag=cleaner_ss] at @s run summon minecraft:armor_stand ~000 ~ ~016 {Invisible:1b,Marker:1b,Tags:["cleaner_new","cleaner_ss"]}
execute as @e[tag=cleaner_active,tag=cleaner_sw] at @s run summon minecraft:armor_stand ~-16 ~ ~016 {Invisible:1b,Marker:1b,Tags:["cleaner_new","cleaner_ss","cleaner_sw","cleaner_ww"]}
execute as @e[tag=cleaner_active,tag=cleaner_ww] at @s run summon minecraft:armor_stand ~-16 ~ ~000 {Invisible:1b,Marker:1b,Tags:["cleaner_new","cleaner_ww"]}
execute as @e[tag=cleaner_active,tag=cleaner_nw] at @s run summon minecraft:armor_stand ~-16 ~ ~-16 {Invisible:1b,Marker:1b,Tags:["cleaner_new","cleaner_nn","cleaner_nw","cleaner_ww"]}

tag @e[tag=cleaner_active] add cleaner_old
execute as @e[tag=cleaner_old] at @s run fill ~-8 ~-1 ~-8 ~8 ~-1 ~8 minecraft:light_gray_concrete
kill @e[tag=cleaner_old]