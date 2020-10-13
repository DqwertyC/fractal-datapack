function mandelbrot:convert_coords

scoreboard players set @s scale 10

scoreboard players operation @s x_init *= @s scale
scoreboard players operation @s z_init *= @s scale

scoreboard players set @s iterations 0
scoreboard players set @s x_cur 0
scoreboard players set @s z_cur 0
scoreboard players set @s x_sq 0
scoreboard players set @s z_sq 0
scoreboard players set @s r_sq 0
scoreboard players set @s w 0
scoreboard players set @s scale 1000

scoreboard players set @s max_r_sq 4
scoreboard players operation @s max_r_sq *= @s scale
scoreboard players operation @s max_r_sq *= @s scale

function mandelbrot:escape_inner

execute if entity @s[scores={iterations=1}] run setblock ~0 ~-1 ~ minecraft:light_gray_concrete
execute if entity @s[scores={iterations=2}] run setblock ~0 ~-1 ~ minecraft:red_concrete
execute if entity @s[scores={iterations=3}] run setblock ~0 ~-1 ~ minecraft:orange_concrete
execute if entity @s[scores={iterations=4}] run setblock ~0 ~-1 ~ minecraft:yellow_concrete
execute if entity @s[scores={iterations=5}] run setblock ~0 ~-1 ~ minecraft:lime_concrete
execute if entity @s[scores={iterations=6}] run setblock ~0 ~-1 ~ minecraft:light_blue_concrete
execute if entity @s[scores={iterations=7}] run setblock ~0 ~-1 ~ minecraft:blue_concrete
execute if entity @s[scores={iterations=8}] run setblock ~0 ~-1 ~ minecraft:purple_concrete
execute if entity @s[scores={iterations=9}] run setblock ~0 ~-1 ~ minecraft:magenta_concrete
execute if entity @s[scores={iterations=10}] run setblock ~ ~-1 ~ minecraft:red_concrete
execute if entity @s[scores={iterations=11}] run setblock ~ ~-1 ~ minecraft:orange_concrete
execute if entity @s[scores={iterations=12}] run setblock ~ ~-1 ~ minecraft:yellow_concrete
execute if entity @s[scores={iterations=13}] run setblock ~ ~-1 ~ minecraft:lime_concrete
execute if entity @s[scores={iterations=14}] run setblock ~ ~-1 ~ minecraft:light_blue_concrete
execute if entity @s[scores={iterations=15}] run setblock ~ ~-1 ~ minecraft:blue_concrete
execute if entity @s[scores={iterations=16}] run setblock ~ ~-1 ~ minecraft:purple_concrete
execute if entity @s[scores={iterations=17}] run setblock ~ ~-1 ~ minecraft:magenta_concrete
execute if entity @s[scores={iterations=18}] run setblock ~ ~-1 ~ minecraft:black_concrete
