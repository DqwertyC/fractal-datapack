tag @e[tag=pointer] add pos_tracked
tag @e[tag=corner] add pos_tracked

execute as @e[tag=pos_tracked] store result score @s pos_x run data get entity @s Pos[0] 10
execute as @e[tag=pos_tracked] store result score @s pos_y run data get entity @s Pos[1] 10
execute as @e[tag=pos_tracked] store result score @s pos_z run data get entity @s Pos[2] 10

function sierpinski:iterate