scoreboard players set #starfall.owner starfall.dummy 0
execute on owner run scoreboard players set #starfall.owner starfall.dummy 1

execute if score #starfall.owner starfall.dummy matches 1 run return fail
playsound starfall:entity.outlandish_cat.warp neutral @a[distance=..16]
particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 12 normal
function starfall:entity/despawn