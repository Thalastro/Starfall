# Initiates the Outlander Cat

data merge entity @s {Tags:["starfall.entity.outlandish_cat"]}
data modify entity @s Owner set from storage starfall:temp temp.UUID

execute store result score #starfall.cat starfall.dummy run random value 1..8
execute if score #starfall.cat starfall.dummy matches 1 run return run function starfall:entity/outlander/summon/cat/chesire
execute if score #starfall.cat starfall.dummy matches 2 run return run function starfall:entity/outlander/summon/cat/dusty
execute if score #starfall.cat starfall.dummy matches 3 run return run function starfall:entity/outlander/summon/cat/greg
execute if score #starfall.cat starfall.dummy matches 4 run return run function starfall:entity/outlander/summon/cat/gwen
execute if score #starfall.cat starfall.dummy matches 5 run return run function starfall:entity/outlander/summon/cat/kiki
execute if score #starfall.cat starfall.dummy matches 6 run return run function starfall:entity/outlander/summon/cat/leo
execute if score #starfall.cat starfall.dummy matches 7 run return run function starfall:entity/outlander/summon/cat/lola
execute if score #starfall.cat starfall.dummy matches 8 run return run function starfall:entity/outlander/summon/cat/ollie