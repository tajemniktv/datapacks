particle minecraft:poof ~ ~0.5 ~1 0.25 0.25 0.25 0.001 1 normal
execute positioned ~-0.5 ~ ~-0.5 run data merge entity @e[type=!minecraft:area_effect_cloud,dz=1,limit=1,sort=nearest] {Motion:[0.0d,0.0d,0.5d]}
execute positioned ~-0.5 ~ ~-0.5 as @a[gamemode=!spectator,dz=1,limit=1,sort=nearest] at @s if block ~ ~ ~0.4 #limitedlife:nocollision if block ~ ~1 ~0.4 #limitedlife:nocollision if block ~0.3 ~1 ~0.4 #limitedlife:nocollision if block ~-0.3 ~1 ~0.4 #limitedlife:nocollision if block ~0.3 ~ ~0.4 #limitedlife:nocollision if block ~-0.3 ~ ~0.4 #limitedlife:nocollision run tp @s ~ ~ ~0.1
