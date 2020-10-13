function sierpinski:choose_corner
execute as @e[tag=pointer,tag=running] at @s run function sierpinski:halve_distance
execute as @e[tag=pointer,tag=running] at @s run setblock ~ ~3 ~ black_concrete