execute positioned ~-0.5 ~ ~-0.5 as @e[type=!minecraft:area_effect_cloud,dz=1,limit=1,sort=nearest] at @s run function ventilators:ventilator/direction/push/motion/north
execute positioned ~-0.5 ~ ~-0.5 as @a[gamemode=!spectator,dz=1,limit=1,sort=nearest] at @s if block ~ ~ ~0.35 #ventilators:nocollision if block ~ ~1.9999 ~0.35 #ventilators:nocollision if block ~0.3 ~1.9999 ~0.35 #ventilators:nocollision if block ~-0.3 ~1.9999 ~0.35 #ventilators:nocollision if block ~ ~1 ~0.35 #ventilators:nocollision if block ~0.3 ~1 ~0.35 #ventilators:nocollision if block ~-0.3 ~1 ~0.35 #ventilators:nocollision if block ~0.3 ~ ~0.35 #ventilators:nocollision if block ~-0.3 ~ ~0.35 #ventilators:nocollision run tp @s ~ ~ ~0.0625
