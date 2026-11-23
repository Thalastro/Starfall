# data modify entity @s wander_target set value [I;0,0,0]
# execute store result entity @s wander_target[0] int 1 run data get storage starfall:temp root.pos[0]
# execute store result entity @s wander_target[1] int 1 run data get storage starfall:temp root.pos[1]
# execute store result entity @s wander_target[2] int 1 run data get storage starfall:temp root.pos[2]

data merge entity @s {DespawnDelay:48000,CustomName:{"translate":"entity.starfall.outlander"},Team:"smithed.prevent_aggression",DeathLootTable:"starfall:entity/outlander",attributes:[{base:100.0d,id:"minecraft:max_health"},{id:"minecraft:movement_speed",base:0.75d},{id:"minecraft:scale",base:1.5d}],Health:100.0f,DeathTime:19s,drop_chances:{mainhand:0.0f,offhand:0.0f,head:0.0f,chest:0.0f,legs:0.0f,feet:0.0f},Offers:{Recipes:[]},active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}],Silent:1b,Tags:["starfall.entity.outlander","smithed.entity"],equipment:{chest:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"starfall:entity/outlander","minecraft:custom_model_data":{"flags":[false,false]}}}}}
data modify entity @s Offers.Recipes set value []

loot replace entity @s weapon.mainhand 2 loot starfall:trade/outlander/buy_fish
function starfall:entity/outlander/summon/add_trade
data modify entity @s Offers.Recipes[-1].maxUses set value 8

loot replace entity @s weapon.mainhand 2 loot starfall:trade/outlander/common
function starfall:entity/outlander/summon/add_trade
data modify entity @s Offers.Recipes[-1].maxUses set value 6

loot replace entity @s weapon.mainhand 2 loot starfall:trade/outlander/uncommon
function starfall:entity/outlander/summon/add_trade
data modify entity @s Offers.Recipes[-1].maxUses set value 4

loot replace entity @s weapon.mainhand 2 loot starfall:trade/outlander/rare
function starfall:entity/outlander/summon/add_trade
data modify entity @s Offers.Recipes[-1].maxUses set value 2

loot replace entity @s weapon.mainhand 2 loot starfall:trade/outlander/codex
function starfall:entity/outlander/summon/add_trade
data modify entity @s Offers.Recipes[-1].maxUses set value 1

item replace entity @s weapon.mainhand with minecraft:air
item replace entity @s weapon.offhand with minecraft:air

data remove storage starfall:temp temp
data modify storage starfall:temp temp.UUID set from entity @s UUID