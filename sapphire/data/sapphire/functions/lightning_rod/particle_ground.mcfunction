#effects
tag @s remove sp.lr.canstrike
execute at @s[tag=!sp.lr.SU.tag] if block ~ ~ ~ minecraft:redstone_torch[lit=true] if block ~ ~1 ~ minecraft:air if block ~ ~2 ~ minecraft:air if block ~ ~3 ~ minecraft:air if block ~ ~4 ~ minecraft:air if block ~ ~5 ~ minecraft:air if block ~ ~6 ~ minecraft:air if block ~ ~7 ~ minecraft:air if block ~ ~8 ~ minecraft:air if block ~ ~9 ~ minecraft:air if block ~ ~10 ~ minecraft:air if block ~ ~11 ~ minecraft:air if block ~ ~12 ~ minecraft:air if block ~ ~13 ~ minecraft:air if block ~ ~14 ~ minecraft:air if block ~ ~15 ~ minecraft:air if block ~ ~16 ~ minecraft:air if block ~ ~17 ~ minecraft:air if block ~ ~18 ~ minecraft:air if block ~ ~19 ~ minecraft:air if block ~ ~20 ~ minecraft:air if block ~ ~21 ~ minecraft:air if block ~ ~22 ~ minecraft:air if block ~ ~23 ~ minecraft:air if block ~ ~24 ~ minecraft:air if block ~ ~25 ~ minecraft:air if block ~ ~26 ~ minecraft:air if block ~ ~27 ~ minecraft:air if block ~ ~28 ~ minecraft:air if block ~ ~29 ~ minecraft:air if block ~ ~30 ~ minecraft:air if block ~ ~31 ~ minecraft:air if block ~ ~32 ~ minecraft:air if block ~ ~33 ~ minecraft:air if block ~ ~34 ~ minecraft:air if block ~ ~35 ~ minecraft:air if block ~ ~36 ~ minecraft:air if block ~ ~37 ~ minecraft:air if block ~ ~38 ~ minecraft:air if block ~ ~39 ~ minecraft:air if block ~ ~40 ~ minecraft:air if block ~ ~41 ~ minecraft:air if block ~ ~42 ~ minecraft:air if block ~ ~43 ~ minecraft:air if block ~ ~44 ~ minecraft:air if block ~ ~45 ~ minecraft:air if block ~ ~46 ~ minecraft:air if block ~ ~47 ~ minecraft:air if block ~ ~48 ~ minecraft:air if block ~ ~49 ~ minecraft:air if block ~ ~50 ~ minecraft:air if block ~ ~51 ~ minecraft:air if block ~ ~52 ~ minecraft:air if block ~ ~53 ~ minecraft:air if block ~ ~54 ~ minecraft:air if block ~ ~55 ~ minecraft:air if block ~ ~56 ~ minecraft:air if block ~ ~57 ~ minecraft:air if block ~ ~58 ~ minecraft:air if block ~ ~59 ~ minecraft:air if block ~ ~60 ~ minecraft:air if block ~ ~61 ~ minecraft:air if block ~ ~62 ~ minecraft:air if block ~ ~63 ~ minecraft:air if block ~ ~64 ~ minecraft:air if block ~ ~65 ~ minecraft:air if block ~ ~66 ~ minecraft:air if block ~ ~67 ~ minecraft:air if block ~ ~68 ~ minecraft:air if block ~ ~69 ~ minecraft:air if block ~ ~70 ~ minecraft:air if block ~ ~71 ~ minecraft:air if block ~ ~72 ~ minecraft:air if block ~ ~73 ~ minecraft:air if block ~ ~74 ~ minecraft:air if block ~ ~75 ~ minecraft:air if block ~ ~76 ~ minecraft:air if block ~ ~77 ~ minecraft:air if block ~ ~78 ~ minecraft:air if block ~ ~79 ~ minecraft:air if block ~ ~80 ~ minecraft:air if block ~ ~81 ~ minecraft:air if block ~ ~82 ~ minecraft:air if block ~ ~83 ~ minecraft:air if block ~ ~84 ~ minecraft:air if block ~ ~85 ~ minecraft:air if block ~ ~86 ~ minecraft:air if block ~ ~87 ~ minecraft:air if block ~ ~88 ~ minecraft:air if block ~ ~89 ~ minecraft:air if block ~ ~90 ~ minecraft:air if block ~ ~91 ~ minecraft:air if block ~ ~92 ~ minecraft:air if block ~ ~93 ~ minecraft:air if block ~ ~94 ~ minecraft:air if block ~ ~95 ~ minecraft:air if block ~ ~96 ~ minecraft:air if block ~ ~97 ~ minecraft:air if block ~ ~98 ~ minecraft:air if block ~ ~99 ~ minecraft:air if block ~ ~100 ~ minecraft:air if block ~ ~101 ~ minecraft:air if block ~ ~102 ~ minecraft:air if block ~ ~103 ~ minecraft:air if block ~ ~104 ~ minecraft:air if block ~ ~105 ~ minecraft:air if block ~ ~106 ~ minecraft:air if block ~ ~107 ~ minecraft:air if block ~ ~108 ~ minecraft:air if block ~ ~109 ~ minecraft:air if block ~ ~110 ~ minecraft:air if block ~ ~111 ~ minecraft:air if block ~ ~112 ~ minecraft:air if block ~ ~113 ~ minecraft:air if block ~ ~114 ~ minecraft:air if block ~ ~115 ~ minecraft:air if block ~ ~116 ~ minecraft:air if block ~ ~117 ~ minecraft:air if block ~ ~118 ~ minecraft:air if block ~ ~119 ~ minecraft:air if block ~ ~120 ~ minecraft:air if block ~ ~121 ~ minecraft:air if block ~ ~122 ~ minecraft:air if block ~ ~123 ~ minecraft:air if block ~ ~124 ~ minecraft:air if block ~ ~125 ~ minecraft:air if block ~ ~126 ~ minecraft:air if block ~ ~127 ~ minecraft:air if block ~ ~128 ~ minecraft:air run tag @s add sp.lr.canstrike
execute at @s[tag=!sp.lr.SU.tag,tag=sp.lr.canstrike] run particle minecraft:enchanted_hit ~ ~0.5 ~ 0 0 0 0.5 1 normal
execute at @s[tag=!sp.lr.SU.tag,tag=!sp.lr.canstrike] if block ~ ~ ~ minecraft:redstone_torch run particle minecraft:enchanted_hit ~ ~0.5 ~ 0 0 0 0.1 1 normal

#random lightning strikes
execute as @s[nbt={Age:64}] unless score x_random sp.sapphire = 0 sp.sapphire unless entity @e[tag=sp.oredrop] run scoreboard players set x_random sp.sapphire 0
execute as @s[nbt={Age:64}] unless score z_random sp.sapphire = 0 sp.sapphire unless entity @e[tag=sp.oredrop] run scoreboard players set z_random sp.sapphire 0
execute as @s[nbt={Age:64},tag=sp.lr.canstrike] if score x_random sp.sapphire = 0 sp.sapphire if score z_random sp.sapphire = 0 sp.sapphire unless entity @e[tag=sp.lr.timer] run function sapphire:generator/generate
execute as @s[nbt={Age:64},tag=sp.lr.canstrike] if score x_random sp.sapphire = z_random sp.sapphire if block ~ ~ ~ minecraft:redstone_torch[lit=true] run summon lightning_bolt ~ ~ ~
execute as @s[nbt={Age:64},tag=sp.lr.canstrike] if score x_random sp.sapphire = z_random sp.sapphire if block ~ ~ ~ minecraft:redstone_torch[lit=true] run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_torch[lit=false] replace minecraft:redstone_torch[lit=true]
#timer
execute as @s[nbt={Age:64}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:65,Tags:["metroite.place","sp.lr.attractor"]}

#remove setup
tag @s remove sp.lr.SU.tag
