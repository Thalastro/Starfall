execute as @a at @s run function starfall:entity/player/tick
execute as @e[type=minecraft:wandering_trader,tag=starfall.entity.outlander] at @s run function starfall:entity/outlander/tick
execute as @e[type=cat,tag=starfall.entity.outlandish_cat] at @s run function starfall:entity/outlander/cat_tick
execute as @e[type=interaction,tag=starfall.entity.fallen_star] at @s run function starfall:gameplay/space_debris/tick