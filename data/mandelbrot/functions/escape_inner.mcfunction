#DO:

# helper_a = x^2 - z^2 + x_init
scoreboard players operation @s helper_a = @s x_cur
scoreboard players operation @s helper_a *= @s x_cur
scoreboard players operation @s helper_a /= @s scale

scoreboard players operation @s helper_b = @s z_cur
scoreboard players operation @s helper_b *= @s z_cur
scoreboard players operation @s helper_b /= @s scale

scoreboard players operation @s helper_a -= @s helper_b
scoreboard players operation @s helper_a += @s x_init

# z_cur = 2 * x_cur * z_cur + z_init
scoreboard players operation @s z_cur *= @s x_cur
scoreboard players operation @s z_cur += @s z_cur
scoreboard players operation @s z_cur /= @s scale
scoreboard players operation @s z_cur += @s z_init

# x_cur = helper_a
scoreboard players operation @s x_cur = @s helper_a

# r^2 = x^2 + z^2
scoreboard players operation @s x_sq = @s x_cur
scoreboard players operation @s x_sq *= @s x_sq

scoreboard players operation @s z_sq = @s z_cur
scoreboard players operation @s z_sq *= @s z_sq

scoreboard players operation @s r_sq = @s x_sq
scoreboard players operation @s r_sq += @s z_sq

#iterations = iterations + 1
scoreboard players add @s iterations 1

# WHILE (iterations <= 18 ) && (r_sq <= 4*SCALE*SCALE)
execute if score @s iterations < @s max_iter if score @s r_sq <= @s max_r_sq run function mandelbrot:escape_inner


