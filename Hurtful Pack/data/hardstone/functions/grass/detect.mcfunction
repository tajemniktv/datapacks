#replace
execute as @e[distance=..8,type=minecraft:item,limit=1,sort=nearest,nbt=!{Item:{id:"minecraft:dirt",tag:{}}},nbt={Age:0s,Item:{id:"minecraft:dirt",Count:1b}}] at @s run function hardstone:grass/replace
#reset score
scoreboard players reset @s hs.minegrass
