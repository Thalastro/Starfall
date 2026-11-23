item replace entity @s armor.head from entity @s armor.chest
item modify entity @s[predicate=starfall:entity_properties/moving] armor.head {"type":"minecraft:set_custom_model_data","flags":{"mode":"replace_section","offset":0,"values":[true]}}
effect clear @s minecraft:glowing
effect give @s invisibility infinite 0 true
rotate @s ~ 0

execute unless predicate {type:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:200}} run return fail

item modify entity @s weapon.mainhand {"type":"set_custom_data","tag":{fix:"idk why this works but it does"}}

execute if predicate starfall:time_check/nighttime run return fail
playsound starfall:entity.outlander.warp neutral @a[distance=..16]
particle end_rod ~ ~ ~ 0.11 0.25 0.11 0.11 16 normal
function starfall:entity/despawn