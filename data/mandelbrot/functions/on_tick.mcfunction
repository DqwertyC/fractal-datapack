#If new markers have been placed, kill the old ones
execute if entity @e[tag=mandel_orig,tag=pos_tracked] if entity @e[tag=mandel_orig,tag=!pos_tracked] run kill @e[tag=mandel_orig,tag=pos_tracked]
execute if entity @e[tag=mandel_unit,tag=pos_tracked] if entity @e[tag=mandel_unit,tag=!pos_tracked] run kill @e[tag=mandel_unit,tag=pos_tracked]

#Check for Start/Stop/Reset potions
execute if entity @e[type=potion,nbt={Item:{tag:{MandelStart:1b}}}] run function mandelbrot:start
execute if entity @e[type=potion,nbt={Item:{tag:{MandelStop:1b}}}] run function mandelbrot:stop
execute if entity @e[type=potion,nbt={Item:{tag:{MandelClear:1b}}}] run function mandelbrot:clear

kill @e[type=potion,nbt={Item:{tag:{MandelStart:1b}}}]
kill @e[type=potion,nbt={Item:{tag:{MandelStop:1b}}}]
kill @e[type=potion,nbt={Item:{tag:{MandelClear:1b}}}]

#Get the positions of relevant entities
tag @e[tag=mandel_orig] add pos_tracked
tag @e[tag=mandel_unit] add pos_tracked
tag @e[tag=mandel_help] add pos_tracked
tag @e[tag=flood_new] add pos_tracked
tag @e[tag=cleaner_new] add pos_tracked

execute as @e[tag=pos_tracked] store result score @s pos_x run data get entity @s Pos[0] 10
execute as @e[tag=pos_tracked] store result score @s pos_z run data get entity @s Pos[2] 10

#If there are entities to flood, do so
execute if entity @e[tag=flood_new] as @e[tag=mandel_orig] at @s run function mandelbrot:flood_entities
execute if entity @e[tag=cleaner_new] as @e[tag=mandel_orig] at @s run function mandelbrot:clear_flood