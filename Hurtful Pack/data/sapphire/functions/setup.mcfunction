scoreboard objectives add sp.sapphire dummy
scoreboard players set c1 sp.sapphire 195287
scoreboard players set c2 sp.sapphire -3548
scoreboard players set c3 sp.sapphire -68481
scoreboard players set 65 sp.sapphire 65
scoreboard players set 129 sp.sapphire 129
scoreboard players set 0 sp.sapphire 0
scoreboard players set -2 sp.sapphire -2

scoreboard players set timer sp.sapphire 0

scoreboard players set x_temp sp.sapphire 0
scoreboard players set z_temp sp.sapphire 0

scoreboard players set x_random sp.sapphire 0
scoreboard players set z_random sp.sapphire 0

#feature-compatibility: limitedlife
execute if score $limitedlife$ hp.storeboard matches 1.. run function limitedlife:sapphire/setup

#sapphire glass
scoreboard objectives add sp.glass_placed minecraft.used:minecraft.light_blue_stained_glass
scoreboard objectives add sp.sg.place minecraft.used:minecraft.light_blue_stained_glass
scoreboard players add _global_ sp.glass_placed 0
scoreboard players set 10 sp.glass_placed 10
scoreboard objectives add sp.glass_broken minecraft.mined:minecraft.light_blue_stained_glass

#crafting
scoreboard objectives add sp.craftdetector minecraft.crafted:minecraft.water_bucket
scoreboard objectives add sp.craftlight minecraft.crafted:minecraft.lapis_ore

scoreboard objectives add sp.wd.detector dummy
scoreboard objectives add sp.wd.cleanup minecraft.mined:minecraft.observer

#placement-API
scoreboard objectives add sp.lr.pa.torch minecraft.used:minecraft.redstone_torch
scoreboard objectives add sp.so.pa.ore minecraft.used:minecraft.lapis_ore
scoreboard objectives add sp.wd.pa.detec minecraft.used:minecraft.observer

scoreboard objectives add sp.lr.pa.fail dummy
scoreboard players set 0 sp.lr.pa.fail 0
scoreboard players add _fallback_ sp.lr.pa.fail 0
scoreboard objectives add sp.so.pa.fail dummy
scoreboard players set 0 sp.so.pa.fail 0
scoreboard players add _fallback_ sp.so.pa.fail 0
scoreboard objectives add sp.wd.pa.fail dummy
scoreboard players set 0 sp.wd.pa.fail 0
scoreboard players add _fallback_ sp.wd.pa.fail 0
scoreboard objectives add sp.sg.pa.fail dummy
scoreboard players set 0 sp.sg.pa.fail 0
scoreboard players add _fallback_ sp.sg.pa.fail 0

#scheduled functions
schedule function sapphire:main50 47t
schedule function sapphire:main20 11t
