function starfall:technical/clock/1s
function starfall:technical/clock/10s

scoreboard objectives add starfall.dummy dummy
scoreboard objectives add starfall.debris_timer dummy

tellraw @a[gamemode=creative] [{"text":"0  ","color":"white","font":"starfall:icon","italic":false}, {"translate": "ui.starfall.title","color": "white","font": "starfall:tooltip","italic": false}, {"translate": "ui.starfall.loaded","font":"minecraft:default"}]